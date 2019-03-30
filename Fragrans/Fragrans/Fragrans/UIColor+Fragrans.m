//
//  UIColor+Fragrans.m
//  Fragrans
//
//  Created by qmz on 2019/1/31.
//

#import "UIColor+Fragrans.h"
#import "NSString+Fragrans.h"
@implementation UIColor (Fragrans)

/**
 安全样式
 
 @param color UIColor或者NSString格式
 */
+ (UIColor *)safeColor:(id)color {
    UIColor   *new_color = nil;
    if ([color isKindOfClass:[UIColor class]]) {
        new_color = color;
    }else if ([color isKindOfClass:[NSString class]] | [color isKindOfClass:[NSNumber class]]) {
        new_color = [UIColor colorWithHexString:color];
    }
    return new_color;
}

/**
 安全样式
 
 @param color UIColor或者NSString格式
 @param baseColor UIColor或者NSString格式
 @return 当color为UIColor或者NSString格式时返回color，不是时返回baseColor的颜色;
 */
+ (UIColor *)safeColor:(id)color baseColor:(id)baseColor {
    UIColor   *new_color = [UIColor safeColor:color];
    if (!new_color) {
        new_color = [UIColor safeColor:baseColor];
    }
    return new_color;
}

/**
 通过hex String 创建color对象
 
 @param hexString hex String
 @return color对象
 */
+ (UIColor *)colorWithHexString:(NSString *)hexString {
    return [self colorWithHexString:hexString alpha:1.0f];
}

/**
 通过hex String 创建一个指定透明度Color对象
 
 @param hexString hex String
 @param alpha 透明度
 @return color对象
 */
+ (UIColor *)colorWithHexString:(NSString *)hexString alpha:(CGFloat)alpha {
    hexString = [NSString safeString:hexString];
    NSString   *newHexString = [[hexString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];
    if ([newHexString containsString:@"0X"]) {
        newHexString = [newHexString stringByReplacingOccurrencesOfString:@"0X" withString:@""];
    }
    if ([newHexString containsString:@"#"]) {
        newHexString = [newHexString stringByReplacingOccurrencesOfString:@"#" withString:@""];
    }
    if (newHexString.length <= 0) {
        return [UIColor clearColor];
    }
    if (newHexString.length == 1) {
        newHexString = [NSString stringWithFormat:@"%@%@%@%@%@%@",
                        newHexString,
                        newHexString,
                        newHexString,
                        newHexString,
                        newHexString,
                        newHexString];
    }else if (newHexString.length == 2) {
        newHexString = [NSString stringWithFormat:@"%@%@%@%@%@%@",
                        [newHexString substringWithRange:NSMakeRange(0, 1)],
                        [newHexString substringWithRange:NSMakeRange(0, 1)],
                        [newHexString substringWithRange:NSMakeRange(0, 1)],
                        [newHexString substringWithRange:NSMakeRange(1, 1)],
                        [newHexString substringWithRange:NSMakeRange(1, 1)],
                        [newHexString substringWithRange:NSMakeRange(1, 1)]
                        ];
    }else if (newHexString.length == 3) {
        newHexString = [NSString stringWithFormat:@"%@%@%@%@%@%@",
                        [newHexString substringWithRange:NSMakeRange(0, 1)],
                        [newHexString substringWithRange:NSMakeRange(0, 1)],
                        [newHexString substringWithRange:NSMakeRange(1, 1)],
                        [newHexString substringWithRange:NSMakeRange(1, 1)],
                        [newHexString substringWithRange:NSMakeRange(2, 1)],
                        [newHexString substringWithRange:NSMakeRange(2, 1)]
                        ];
    }else if (newHexString.length == 4) {
        newHexString = [NSString stringWithFormat:@"%@%@%@%@%@%@",
                        [newHexString substringWithRange:NSMakeRange(0, 1)],
                        [newHexString substringWithRange:NSMakeRange(1, 1)],
                        [newHexString substringWithRange:NSMakeRange(2, 1)],
                        [newHexString substringWithRange:NSMakeRange(3, 1)],
                        [newHexString substringWithRange:NSMakeRange(3, 1)],
                        [newHexString substringWithRange:NSMakeRange(3, 1)]
                        ];
    }else if (newHexString.length == 5) {
        newHexString = [NSString stringWithFormat:@"%@%@%@%@%@%@",
                        [newHexString substringWithRange:NSMakeRange(0, 1)],
                        [newHexString substringWithRange:NSMakeRange(1, 1)],
                        [newHexString substringWithRange:NSMakeRange(2, 1)],
                        [newHexString substringWithRange:NSMakeRange(3, 1)],
                        [newHexString substringWithRange:NSMakeRange(4, 1)],
                        [newHexString substringWithRange:NSMakeRange(4, 1)]
                        ];
    }else if (newHexString.length > 6) {
        newHexString = [newHexString substringToIndex:6];
    }
    if (newHexString.length != 6) {
        return [UIColor clearColor];
    }
    
    NSRange   range;
    range.location = 0;
    range.length = 2;
    //r
    NSString   *rString = [newHexString substringWithRange:range];
    //g
    range.location = 2;
    NSString   *gString = [newHexString substringWithRange:range];
    //b
    NSString   *bString = [newHexString substringWithRange:range];
    
    unsigned int r,g,b;
    [[NSScanner scannerWithString:rString] scanHexInt:&r];
    [[NSScanner scannerWithString:gString] scanHexInt:&g];
    [[NSScanner scannerWithString:bString] scanHexInt:&b];
    return [UIColor colorWithRed:((float)r / 255.0f) green:((float)g / 255.0f) blue:((float)b / 255.0f) alpha:alpha];
}

/**
 随机颜色
 
 @return 随机色
 */
+ (UIColor *)randomColor {
    NSInteger   redValue = arc4random() % 255;
    NSInteger   greenValue = arc4random() % 255;
    NSInteger   blueValue = arc4random() % 255;
    return [UIColor colorWithRed:redValue / 255.0f green:greenValue / 255.0f blue:blueValue / 255.0f alpha:1.0f];
}

/**
 渐变颜色
 
 @param fromColor 开始颜色 UIColor或者NSString或者NSNumber格式
 @param toColor 结束颜色 UIColor或者NSString或者NSNumber格式
 @param height 渐变高度
 @return 渐变颜色
 */
+ (UIColor *)gradientForTopToBottomFromColor:(id)fromColor toColor:(id)toColor height:(NSInteger)height {
    UIColor   *newFromColor = [UIColor safeColor:fromColor];
    UIColor   *newToColor = [UIColor safeColor:toColor];
    if (!newFromColor || !newToColor) {
        return nil;
    }
    CGSize  size = CGSizeMake(1, height);
    UIGraphicsBeginImageContextWithOptions(size, NO, 0);
    CGContextRef   context = UIGraphicsGetCurrentContext();
    CGColorSpaceRef   colorSpace = CGColorSpaceCreateDeviceRGB();
    NSArray   *colors = [NSArray arrayWithObjects:(id)newFromColor.CGColor,(id)newToColor.CGColor, nil];
    CGGradientRef   gradient = CGGradientCreateWithColors(colorSpace, (__bridge CFArrayRef)colors, NULL);
    CGContextDrawLinearGradient(context, gradient, CGPointMake(0, 0), CGPointMake(0, size.height), 0);
    UIImage   *image = UIGraphicsGetImageFromCurrentImageContext();
    CGGradientRelease(gradient);
    CGColorSpaceRelease(colorSpace);
    UIGraphicsEndImageContext();
    return [UIColor colorWithPatternImage:image];
}

/**
 渐变颜色
 
 @param fromColor 开始颜色 UIColor或者NSString或者NSNumber格式
 @param toColor 结束颜色 UIColor或者NSString或者NSNumber格式
 @param width 渐变宽度
 @return 渐变颜色
 */
+ (UIColor *)gradientForLeftToRightFromColor:(id)fromColor toColor:(id)toColor width:(NSInteger)width {
    UIColor   *newFromColor = [UIColor safeColor:fromColor];
    UIColor   *newToColor = [UIColor safeColor:toColor];
    if (!newFromColor || !newToColor) {
        return nil;
    }
    CGSize  size = CGSizeMake(width, 1);
    UIGraphicsBeginImageContextWithOptions(size, NO, 0);
    CGContextRef   context = UIGraphicsGetCurrentContext();
    CGColorSpaceRef   colorSpace = CGColorSpaceCreateDeviceRGB();
    NSArray   *colors = [NSArray arrayWithObjects:(id)newFromColor.CGColor,(id)newToColor.CGColor, nil];
    CGGradientRef   gradient = CGGradientCreateWithColors(colorSpace, (__bridge CFArrayRef)colors, NULL);
    CGContextDrawLinearGradient(context, gradient, CGPointMake(0, 0), CGPointMake(size.width, 0), 0);
    UIImage   *image = UIGraphicsGetImageFromCurrentImageContext();
    CGGradientRelease(gradient);
    CGColorSpaceRelease(colorSpace);
    UIGraphicsEndImageContext();
    return [UIColor colorWithPatternImage:image];
}

@end
