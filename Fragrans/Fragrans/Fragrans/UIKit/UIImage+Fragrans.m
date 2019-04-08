//
//  UIImage+Fragrans.m
//  Fragrans
//
//  Created by qmz on 2019/2/15.
//

#import "UIImage+Fragrans.h"
#import "UIKitBridge.h"
@implementation UIImage (Fragrans)

/**
 安全样式
 
 @param image UIImage或者NSString格式
 */
+ (UIImage *)safeImage:(id)image {
    UIImage   *new_image = nil;
    if ([image isKindOfClass:[UIImage class]]) {
        new_image = image;
    }else if ([image isKindOfClass:[NSString class]]) {
        new_image = [UIImage imageNamed:[UIKitBridge safeString:image]];
    }
    return new_image;
}

/**
 创建一个渐变图片
 
 @param fromColor 从什么颜色 UIColor或者NSString或者NSNumber格式
 @param toColor 到什么颜色 UIColor或者NSString或者NSNumber格式
 @param start 起始点
 @param end 终止点
 @param size 图片大小
 @return 渐变图片
 */
+ (UIImage *)imageFromColor:(id)fromColor toColor:(id)toColor fromPoint:(CGPoint)start toPoint:(CGPoint)end size:(CGSize)size {
    UIColor   *newFromColor = [UIKitBridge safeColor:fromColor];
    UIColor   *newToColor = [UIKitBridge safeColor:toColor];
    if (!newFromColor || !newToColor) {
        return nil;
    }
    NSMutableArray *arr = [NSMutableArray arrayWithObjects:(id)newFromColor.CGColor,(id)newToColor.CGColor, nil];
    UIGraphicsBeginImageContextWithOptions(size, YES, 1);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSaveGState(context);
    CGColorSpaceRef colorSpace = CGColorGetColorSpace([toColor CGColor]);
    CGGradientRef gradient = CGGradientCreateWithColors(colorSpace, (CFArrayRef)arr, NULL);
    CGContextDrawLinearGradient(context, gradient, start, end,kCGGradientDrawsBeforeStartLocation | kCGGradientDrawsAfterEndLocation);
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    CGGradientRelease(gradient);
    CGContextRestoreGState(context);
    CGColorSpaceRelease(colorSpace);
    UIGraphicsEndImageContext();
    return image;
}

/**
 根据颜色创建图片
 
 @param color 颜色 UIColor或者NSString或者NSNumber格式
 @param size 尺寸
 @return 图片
 */
+ (UIImage *)imageWithColor:(id)color size:(CGSize)size {
    UIColor   *newColor = [UIKitBridge safeColor:color];
    if (!newColor) {
        return nil;
    }
    CGRect rect = CGRectMake(0, 0, size.width, size.height);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context,[newColor CGColor]);
    CGContextFillRect(context, rect);
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

/**
 生成gif图片
 
 @param name gif图名称
 @return 返回图片
 */
+ (UIImage *)animatedGIFNamed:(NSString *)name {
    CGFloat scale = [UIScreen mainScreen].scale;
    if (scale > 2.0f) {
        NSString *retinaPath = [[NSBundle mainBundle] pathForResource:[name stringByAppendingString:@"@3x"] ofType:@"gif"];
        NSData *data = [NSData dataWithContentsOfFile:retinaPath];
        if (data) {
            return [UIImage animatedGIFWithData:data];
        }
        retinaPath = [[NSBundle mainBundle] pathForResource:[name stringByAppendingString:@"@2x"] ofType:@"gif"];
        data = [NSData dataWithContentsOfFile:retinaPath];
        if (data) {
            return [UIImage animatedGIFWithData:data];
        }
        NSString *path = [[NSBundle mainBundle] pathForResource:name ofType:@"gif"];
        data = [NSData dataWithContentsOfFile:path];
        if (data) {
            return [UIImage animatedGIFWithData:data];
        }
        return [UIImage imageNamed:name];
    }else if (scale > 1.0f) {
        NSString *retinaPath = [[NSBundle mainBundle] pathForResource:[name stringByAppendingString:@"@2x"] ofType:@"gif"];
        NSData *data = [NSData dataWithContentsOfFile:retinaPath];
        if (data) {
            return [UIImage animatedGIFWithData:data];
        }
        NSString *path = [[NSBundle mainBundle] pathForResource:name ofType:@"gif"];
        data = [NSData dataWithContentsOfFile:path];
        if (data) {
            return [UIImage animatedGIFWithData:data];
        }
        return [UIImage imageNamed:name];
    }else {
        NSString *path = [[NSBundle mainBundle] pathForResource:name ofType:@"gif"];
        NSData *data = [NSData dataWithContentsOfFile:path];
        if (data) {
            return [UIImage animatedGIFWithData:data];
        }
        return [UIImage imageNamed:name];
    }
}

/**
 生成gif图片
 
 @param data 二进制数据
 @return 返回图片
 */
+ (UIImage *)animatedGIFWithData:(NSData *)data {
    if (!data) {
        return nil;
    }
    CGImageSourceRef source = CGImageSourceCreateWithData((__bridge CFDataRef)data, NULL);
    size_t count = CGImageSourceGetCount(source);
    UIImage *animatedImage;
    if (count <= 1) {
        animatedImage = [[UIImage alloc] initWithData:data];
    }
    else {
        NSMutableArray *images = [NSMutableArray array];
        NSTimeInterval duration = 0.0f;
        for (size_t i = 0; i < count; i++) {
            CGImageRef image = CGImageSourceCreateImageAtIndex(source, i, NULL);
            duration += [self frameDurationAtIndex:i source:source];
            [images addObject:[UIImage imageWithCGImage:image scale:[UIScreen mainScreen].scale orientation:UIImageOrientationUp]];
            CGImageRelease(image);
        }
        if (!duration) {
            duration = (1.0f / 10.0f) * count;
        }
        animatedImage = [UIImage animatedImageWithImages:images duration:duration];
    }
    CFRelease(source);
    return animatedImage;
}

+ (float)frameDurationAtIndex:(NSUInteger)index source:(CGImageSourceRef)source {
    float frameDuration = 0.1f;
    CFDictionaryRef cfFrameProperties = CGImageSourceCopyPropertiesAtIndex(source, index, nil);
    NSDictionary *frameProperties = (__bridge NSDictionary *)cfFrameProperties;
    NSDictionary *gifProperties = frameProperties[(NSString *)kCGImagePropertyGIFDictionary];
    
    NSNumber *delayTimeUnclampedProp = gifProperties[(NSString *)kCGImagePropertyGIFUnclampedDelayTime];
    if (delayTimeUnclampedProp) {
        frameDuration = [delayTimeUnclampedProp floatValue];
    }
    else {
        NSNumber *delayTimeProp = gifProperties[(NSString *)kCGImagePropertyGIFDelayTime];
        if (delayTimeProp) {
            frameDuration = [delayTimeProp floatValue];
        }
    }
    if (frameDuration < 0.011f) {
        frameDuration = 0.100f;
    }
    CFRelease(cfFrameProperties);
    return frameDuration;
}

/**
 修改图片大小
 
 @param originalImage 需要修改的图片,UIImage或者NSString格式
 @param toSize 修改后的图片大小
 */
+ (UIImage *)scaleImage:(id)originalImage toSize:(CGSize)toSize {
    UIImage   *image = [UIImage safeImage:originalImage];
    if (!image) {
        return nil;
    }
    UIGraphicsBeginImageContext(toSize);
    [image drawInRect:CGRectMake(0, 0, toSize.width, toSize.height)];
    UIImage *newImage=UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return  newImage;
}

/**
 修改图片大小 - 等比例高
 
 @param image 需要修改的图片,UIImage或者NSString格式
 @param width 修改后的图的宽度（高度自适应）
 */
+ (UIImage *)scaleImage:(id)image withWidth:(CGFloat)width {
    UIImage   *newimg = [UIImage safeImage:image];
    if (!newimg) {
        return nil;
    }
    CGSize   newSize = CGSizeMake(width,newimg.size.height * width / newimg.size.width);
    return [self scaleImage:newimg toSize:newSize];
}

/**
 修改图片大小 - 等比例宽
 
 @param image 需要修改的图片,UIImage或者NSString格式
 @param height 修改后的图的高度（宽度自适应）
 */
+ (UIImage *)scaleImage:(id)image withHeight:(CGFloat)height {
    UIImage   *newimg = [UIImage safeImage:image];
    if (!newimg) {
        return nil;
    }
    CGSize   newSize = CGSizeMake(newimg.size.width * height / newimg.size.height,height);
    return [self scaleImage:newimg toSize:newSize];
}

/**
 保存图片
 
 @param tempImage 需要保存的图片
 @param imageName 保存后的图片的名字
 @return 返回图片的地址路径
 */
+ (NSString *)saveImage:(id)tempImage withName:(NSString *)imageName {
    UIImage   *image = [UIImage safeImage:tempImage];
    if (!image) {
        return nil;
    }
    
    NSData* imageData;
    //判断图片是不是png格式的文件
    if (UIImagePNGRepresentation(image)) {
        //返回为png图像。
        imageData = UIImagePNGRepresentation(image);
    }else {
        //返回为JPEG图像。
        imageData = UIImageJPEGRepresentation(image, 1.0);
    }
    NSArray* paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,NSUserDomainMask,YES);
    NSString* documentsDirectory = [paths objectAtIndex:0];
    NSString* fullPathToFile = [documentsDirectory stringByAppendingPathComponent:imageName];
    [imageData writeToFile:fullPathToFile atomically:NO];
    return fullPathToFile;
}

/**
 获取图片原图(别渲染)
 
 @param image UIImage或者NSString格式
 */
+ (UIImage *)getOriginalImage:(id)image {
    UIImage *oriImage = [UIImage safeImage:image];
    if (oriImage) {
        oriImage = [oriImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    }
    return oriImage;
}

@end
