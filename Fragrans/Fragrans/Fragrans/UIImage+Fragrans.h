//
//  UIImage+Fragrans.h
//  Fragrans
//
//  Created by qmz on 2019/2/15.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (Fragrans)

/**
 安全样式
 
 @param image UIImage或者NSString格式
 */
+ (UIImage *)safeImage:(id)image;

/**
 创建一个渐变图片
 
 @param fromColor 从什么颜色 UIColor或者NSString或者NSNumber格式
 @param toColor 到什么颜色 UIColor或者NSString或者NSNumber格式
 @param start 起始点
 @param end 终止点
 @param size 图片大小
 @return 渐变图片
 */
+ (UIImage *)imageFromColor:(id)fromColor toColor:(id)toColor fromPoint:(CGPoint)start toPoint:(CGPoint)end size:(CGSize)size;

/**
 根据颜色创建图片
 
 @param color 颜色 UIColor或者NSString或者NSNumber格式
 @param size 尺寸
 @return 图片
 */
+ (UIImage *)imageWithColor:(id)color size:(CGSize)size;

/**
 生成gif图片
 
 @param name gif图名称
 @return 返回图片
 */
+ (UIImage *)animatedGIFNamed:(NSString *)name;

/**
 生成gif图片
 
 @param data 二进制数据
 @return 返回图片
 */
+ (UIImage *)animatedGIFWithData:(NSData *)data;

/**
 修改图片大小
 
 @param originalImage 需要修改的图片,UIImage或者NSString格式
 @param toSize 修改后的图片大小
 */
+ (UIImage *)scaleImage:(id)originalImage toSize:(CGSize)toSize;

/**
 修改图片大小 - 等比例高
 
 @param image 需要修改的图片,UIImage或者NSString格式
 @param width 修改后的图的宽度（高度自适应）
 */
+ (UIImage *)scaleImage:(id)image withWidth:(CGFloat)width;

/**
 修改图片大小 - 等比例宽
 
 @param image 需要修改的图片,UIImage或者NSString格式
 @param height 修改后的图的高度（宽度自适应）
 */
+ (UIImage *)scaleImage:(id)image withHeight:(CGFloat)height;

/**
 保存图片
 默认保存到Document文件夹
 更多保存方式请查看NSFileManager+Fragrans
 
 @param tempImage 需要保存的图片,UIImage或者NSString格式
 @param imageName 保存后的图片的名字
 @return 返回图片的地址路径
 */
+ (NSString *)saveImage:(id)tempImage withName:(NSString *)imageName;

/**
 获取图片原图(别渲染)
 
 @param image UIImage或者NSString格式
 */
+ (UIImage *)getOriginalImage:(id)image;





@end

NS_ASSUME_NONNULL_END
