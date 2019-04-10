//
//  UIProgressView+Fragrans.h
//  Fragrans
//
//  Created by qmz on 2019/4/9.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIProgressView (Fragrans)
/**
 创建进度条
 style + progress
 
 @param progress 当前进度（0~1）
 */
- (UIProgressView *)initWithProgressViewStyle:(UIProgressViewStyle)style progress:(CGFloat)progress;

/**
 创建进度条
 style + progress
 
 @param progress 当前进度（0~1）
 */
+ (UIProgressView *)progressViewWithStyle:(UIProgressViewStyle)style progress:(CGFloat)progress;

/**
 创建进度条
 style + progress + backgroundColor
 
 @param progress 当前进度（0~1）
 @param backgroundColor  UIColor或者NSString或者NSNumber格式
 */
- (UIProgressView *)initWithProgressViewStyle:(UIProgressViewStyle)style progress:(CGFloat)progress backgroundColor:(id)backgroundColor;

/**
 创建进度条
 style + progress + backgroundColor
 
 @param progress 当前进度（0~1）
 @param backgroundColor  UIColor或者NSString或者NSNumber格式
 */
+ (UIProgressView *)progressViewWithStyle:(UIProgressViewStyle)style progress:(CGFloat)progress backgroundColor:(id)backgroundColor;

/**
 创建进度条
 style + progress + progressTintColor + trackTintColor
 
 @param progress 当前进度（0~1）
 @param progressTintColor  已加载部分颜色 UIColor或者NSString或者NSNumber格式
 @param trackTintColor 未加载部分的颜色 UIColor或者NSString或者NSNumber格式
 */
- (UIProgressView *)initWithProgressViewStyle:(UIProgressViewStyle)style progress:(CGFloat)progress progressTintColor:(id)progressTintColor trackTintColor:(id)trackTintColor;

/**
 创建进度条
 style + progress + progressTintColor + trackTintColor
 
 @param progress 当前进度（0~1）
 @param progressTintColor  已加载部分颜色 UIColor或者NSString或者NSNumber格式
 @param trackTintColor 未加载部分的颜色 UIColor或者NSString或者NSNumber格式
 */
+ (UIProgressView *)progressViewWithStyle:(UIProgressViewStyle)style progress:(CGFloat)progress progressTintColor:(id)progressTintColor trackTintColor:(id)trackTintColor;

/**
 创建进度条
 style + progress + progressTintColor + trackTintColor + tap
 
 @param progress 当前进度（0~1）
 @param progressTintColor  已加载部分颜色 UIColor或者NSString或者NSNumber格式
 @param trackTintColor 未加载部分的颜色 UIColor或者NSString或者NSNumber格式
 @param tapBlock 点击事件
 */
- (UIProgressView *)initWithProgressViewStyle:(UIProgressViewStyle)style progress:(CGFloat)progress progressTintColor:(id)progressTintColor trackTintColor:(id)trackTintColor tap:(void(^)(id sender))tapBlock;

/**
 创建进度条
 style + progress + progressTintColor + trackTintColor + tap
 
 @param progress 当前进度（0~1）
 @param progressTintColor  已加载部分颜色 UIColor或者NSString或者NSNumber格式
 @param trackTintColor 未加载部分的颜色 UIColor或者NSString或者NSNumber格式
 @param tapBlock 点击事件
 */
+ (UIProgressView *)progressViewWithStyle:(UIProgressViewStyle)style progress:(CGFloat)progress progressTintColor:(id)progressTintColor trackTintColor:(id)trackTintColor tap:(nullable void(^)(id sender))tapBlock;

/**
 创建进度条
 style + progress + progressImage + trackImage
 
 @param progress 当前进度（0~1）
 @param progressImage  已加载部分背景图 UIColor或者NSString或者NSNumber格式
 @param trackImage 未加载部分背景图 UIColor或者NSString或者NSNumber格式
 */
- (UIProgressView *)initWithProgressViewStyle:(UIProgressViewStyle)style progress:(CGFloat)progress progressImage:(id)progressImage trackImage:(id)trackImage;

/**
 创建进度条
 style + progress + progressImage + trackImage
 
 @param progress 当前进度（0~1）
 @param progressImage  已加载部分背景图 UIColor或者NSString或者NSNumber格式
 @param trackImage 未加载部分背景图 UIColor或者NSString或者NSNumber格式
 */
+ (UIProgressView *)progressViewWithStyle:(UIProgressViewStyle)style progress:(CGFloat)progress progressImage:(id)progressImage trackImage:(id)trackImage;

/**
 创建进度条
 style + progress + progressImage + trackImage + tap
 
 @param progress 当前进度（0~1）
 @param progressImage  已加载部分背景图 UIColor或者NSString或者NSNumber格式
 @param trackImage 未加载部分背景图 UIColor或者NSString或者NSNumber格式
 @param tapBlock 点击事件
 */
- (UIProgressView *)initWithProgressViewStyle:(UIProgressViewStyle)style progress:(CGFloat)progress progressImage:(id)progressImage trackImage:(id)trackImage tap:(void(^)(id sender))tapBlock;

/**
 创建进度条
 style + progress + progressImage + trackImage + tap
 
 @param progress 当前进度（0~1）
 @param progressImage  已加载部分背景图 UIColor或者NSString或者NSNumber格式
 @param trackImage 未加载部分背景图 UIColor或者NSString或者NSNumber格式
 @param tapBlock 点击事件
 */
+ (UIProgressView *)progressViewWithStyle:(UIProgressViewStyle)style progress:(CGFloat)progress progressImage:(id)progressImage trackImage:(id)trackImage tap:(nullable void(^)(id sender))tapBlock;

/**
 创建进度条
 frame + style + progress
 
 @param progress 当前进度（0~1）
 */
- (UIProgressView *)initWithProgressViewFrame:(CGRect)frame style:(UIProgressViewStyle)style progress:(CGFloat)progress;

/**
 创建进度条
 frame + style + progress
 
 @param progress 当前进度（0~1）
 */
+ (UIProgressView *)progressViewWithFrame:(CGRect)frame style:(UIProgressViewStyle)style progress:(CGFloat)progress;

/**
 创建进度条
 frame + style + progress + backgroundColor
 
 @param progress 当前进度（0~1）
 @param backgroundColor  UIColor或者NSString或者NSNumber格式
 */
- (UIProgressView *)initWithProgressViewFrame:(CGRect)frame style:(UIProgressViewStyle)style progress:(CGFloat)progress backgroundColor:(id)backgroundColor;

/**
 创建进度条
 frame + style + progress + backgroundColor
 
 @param progress 当前进度（0~1）
 @param backgroundColor  UIColor或者NSString或者NSNumber格式
 */
+ (UIProgressView *)progressViewWithFrame:(CGRect)frame style:(UIProgressViewStyle)style progress:(CGFloat)progress backgroundColor:(id)backgroundColor;

/**
 创建进度条
 frame + style + progress + progressTintColor + trackTintColor
 
 @param progress 当前进度（0~1）
 @param progressTintColor  已加载部分颜色 UIColor或者NSString或者NSNumber格式
 @param trackTintColor 未加载部分的颜色 UIColor或者NSString或者NSNumber格式
 */
- (UIProgressView *)initWithProgressViewFrame:(CGRect)frame style:(UIProgressViewStyle)style progress:(CGFloat)progress progressTintColor:(id)progressTintColor trackTintColor:(id)trackTintColor;

/**
 创建进度条
 frame + style + progress + progressTintColor + trackTintColor
 
 @param progress 当前进度（0~1）
 @param progressTintColor  已加载部分颜色 UIColor或者NSString或者NSNumber格式
 @param trackTintColor 未加载部分的颜色 UIColor或者NSString或者NSNumber格式
 */
+ (UIProgressView *)progressViewWithFrame:(CGRect)frame style:(UIProgressViewStyle)style progress:(CGFloat)progress progressTintColor:(id)progressTintColor trackTintColor:(id)trackTintColor;

/**
 创建进度条
 frame + style + progress + progressTintColor + trackTintColor + tap
 
 @param progress 当前进度（0~1）
 @param progressTintColor  已加载部分颜色 UIColor或者NSString或者NSNumber格式
 @param trackTintColor 未加载部分的颜色 UIColor或者NSString或者NSNumber格式
 @param tapBlock 点击事件
 */
- (UIProgressView *)initWithProgressViewFrame:(CGRect)frame style:(UIProgressViewStyle)style progress:(CGFloat)progress progressTintColor:(id)progressTintColor trackTintColor:(id)trackTintColor tap:(void(^)(id sender))tapBlock;

/**
 创建进度条
 frame + style + progress + progressTintColor + trackTintColor + tap
 
 @param progress 当前进度（0~1）
 @param progressTintColor  已加载部分颜色 UIColor或者NSString或者NSNumber格式
 @param trackTintColor 未加载部分的颜色 UIColor或者NSString或者NSNumber格式
 @param tapBlock 点击事件
 */
+ (UIProgressView *)progressViewWithFrame:(CGRect)frame style:(UIProgressViewStyle)style progress:(CGFloat)progress progressTintColor:(id)progressTintColor trackTintColor:(id)trackTintColor tap:(nullable void(^)(id sender))tapBlock;

/**
 创建进度条
 frame + style + progress + progressImage + trackImage
 
 @param progress 当前进度（0~1）
 @param progressImage  已加载部分背景图 UIColor或者NSString或者NSNumber格式
 @param trackImage 未加载部分背景图 UIColor或者NSString或者NSNumber格式
 */
- (UIProgressView *)initWithProgressViewFrame:(CGRect)frame style:(UIProgressViewStyle)style progress:(CGFloat)progress progressImage:(id)progressImage trackImage:(id)trackImage;

/**
 创建进度条
 frame + style + progress + progressImage + trackImage
 
 @param progress 当前进度（0~1）
 @param progressImage  已加载部分背景图 UIColor或者NSString或者NSNumber格式
 @param trackImage 未加载部分背景图 UIColor或者NSString或者NSNumber格式
 */
+ (UIProgressView *)progressViewWithFrame:(CGRect)frame style:(UIProgressViewStyle)style progress:(CGFloat)progress progressImage:(id)progressImage trackImage:(id)trackImage;

/**
 创建进度条
 frame + style + progress + progressImage + trackImage + tap
 
 @param progress 当前进度（0~1）
 @param progressImage  已加载部分背景图 UIColor或者NSString或者NSNumber格式
 @param trackImage 未加载部分背景图 UIColor或者NSString或者NSNumber格式
 @param tapBlock 点击事件
 */
- (UIProgressView *)initWithProgressViewFrame:(CGRect)frame style:(UIProgressViewStyle)style progress:(CGFloat)progress progressImage:(id)progressImage trackImage:(id)trackImage tap:(void(^)(id sender))tapBlock;

/**
 创建进度条
 frame + style + progress + progressImage + trackImage + tap

 @param progress 当前进度（0~1）
 @param progressImage  已加载部分背景图 UIColor或者NSString或者NSNumber格式
 @param trackImage 未加载部分背景图 UIColor或者NSString或者NSNumber格式
 @param tapBlock 点击事件
 */
+ (UIProgressView *)progressViewWithFrame:(CGRect)frame style:(UIProgressViewStyle)style progress:(CGFloat)progress progressImage:(id)progressImage trackImage:(id)trackImage tap:(nullable void(^)(id sender))tapBlock;

/**
 创建进度条
 center + bounds + style + progress
 
 @param progress 当前进度（0~1）
 */
- (UIProgressView *)initWithProgressViewCenter:(CGPoint)center bounds:(CGRect)bounds style:(UIProgressViewStyle)style progress:(CGFloat)progress;

/**
 创建进度条
 center + bounds + style + progress
 
 @param progress 当前进度（0~1）
 */
+ (UIProgressView *)progressViewWithCenter:(CGPoint)center bounds:(CGRect)bounds style:(UIProgressViewStyle)style progress:(CGFloat)progress;

/**
 创建进度条
 center + bounds + style + progress + backgroundColor
 
 @param progress 当前进度（0~1）
 @param backgroundColor  UIColor或者NSString或者NSNumber格式
 */
- (UIProgressView *)initWithProgressViewCenter:(CGPoint)center bounds:(CGRect)bounds style:(UIProgressViewStyle)style progress:(CGFloat)progress backgroundColor:(id)backgroundColor;

/**
 创建进度条
 center + bounds + style + progress + backgroundColor
 
 @param progress 当前进度（0~1）
 @param backgroundColor  UIColor或者NSString或者NSNumber格式
 */
+ (UIProgressView *)progressViewWithCenter:(CGPoint)center bounds:(CGRect)bounds style:(UIProgressViewStyle)style progress:(CGFloat)progress backgroundColor:(id)backgroundColor;

/**
 创建进度条
 center + bounds + style + progress + progressTintColor + trackTintColor
 
 @param progress 当前进度（0~1）
 @param progressTintColor  已加载部分颜色 UIColor或者NSString或者NSNumber格式
 @param trackTintColor 未加载部分的颜色 UIColor或者NSString或者NSNumber格式
 */
- (UIProgressView *)initWithProgressViewCenter:(CGPoint)center bounds:(CGRect)bounds style:(UIProgressViewStyle)style progress:(CGFloat)progress progressTintColor:(id)progressTintColor trackTintColor:(id)trackTintColor;

/**
 创建进度条
 center + bounds + style + progress + progressTintColor + trackTintColor
 
 @param progress 当前进度（0~1）
 @param progressTintColor  已加载部分颜色 UIColor或者NSString或者NSNumber格式
 @param trackTintColor 未加载部分的颜色 UIColor或者NSString或者NSNumber格式
 */
+ (UIProgressView *)progressViewWithCenter:(CGPoint)center bounds:(CGRect)bounds style:(UIProgressViewStyle)style progress:(CGFloat)progress progressTintColor:(id)progressTintColor trackTintColor:(id)trackTintColor;

/**
 创建进度条
 center + bounds + style + progress + progressTintColor + trackTintColor + tap
 
 @param progress 当前进度（0~1）
 @param progressTintColor  已加载部分颜色 UIColor或者NSString或者NSNumber格式
 @param trackTintColor 未加载部分的颜色 UIColor或者NSString或者NSNumber格式
 @param tapBlock 点击事件
 */
- (UIProgressView *)initWithProgressViewCenter:(CGPoint)center bounds:(CGRect)bounds style:(UIProgressViewStyle)style progress:(CGFloat)progress progressTintColor:(id)progressTintColor trackTintColor:(id)trackTintColor tap:(void(^)(id sender))tapBlock;

/**
 创建进度条
 center + bounds + style + progress + progressTintColor + trackTintColor + tap
 
 @param progress 当前进度（0~1）
 @param progressTintColor  已加载部分颜色 UIColor或者NSString或者NSNumber格式
 @param trackTintColor 未加载部分的颜色 UIColor或者NSString或者NSNumber格式
 @param tapBlock 点击事件
 */
+ (UIProgressView *)progressViewWithCenter:(CGPoint)center bounds:(CGRect)bounds style:(UIProgressViewStyle)style progress:(CGFloat)progress progressTintColor:(id)progressTintColor trackTintColor:(id)trackTintColor tap:(nullable void(^)(id sender))tapBlock;

/**
 创建进度条
 center + bounds + style + progress + progressImage + trackImage
 
 @param progress 当前进度（0~1）
 @param progressImage  已加载部分背景图 UIColor或者NSString或者NSNumber格式
 @param trackImage 未加载部分背景图 UIColor或者NSString或者NSNumber格式
 */
- (UIProgressView *)initWithProgressViewCenter:(CGPoint)center bounds:(CGRect)bounds style:(UIProgressViewStyle)style progress:(CGFloat)progress progressImage:(id)progressImage trackImage:(id)trackImage;

/**
 创建进度条
 center + bounds + style + progress + progressImage + trackImage
 
 @param progress 当前进度（0~1）
 @param progressImage  已加载部分背景图 UIColor或者NSString或者NSNumber格式
 @param trackImage 未加载部分背景图 UIColor或者NSString或者NSNumber格式
 */
+ (UIProgressView *)progressViewWithCenter:(CGPoint)center bounds:(CGRect)bounds style:(UIProgressViewStyle)style progress:(CGFloat)progress progressImage:(id)progressImage trackImage:(id)trackImage;

/**
 创建进度条
 center + bounds + style + progress + progressImage + trackImage + tap
 
 @param progress 当前进度（0~1）
 @param progressImage  已加载部分背景图 UIColor或者NSString或者NSNumber格式
 @param trackImage 未加载部分背景图 UIColor或者NSString或者NSNumber格式
 @param tapBlock 点击事件
 */
- (UIProgressView *)initWithProgressViewCenter:(CGPoint)center bounds:(CGRect)bounds style:(UIProgressViewStyle)style progress:(CGFloat)progress progressImage:(id)progressImage trackImage:(id)trackImage tap:(void(^)(id sender))tapBlock;

/**
 创建进度条
 center + bounds + style + progress + progressImage + trackImage + tap
 
 @param progress 当前进度（0~1）
 @param progressImage  已加载部分背景图 UIColor或者NSString或者NSNumber格式
 @param trackImage 未加载部分背景图 UIColor或者NSString或者NSNumber格式
 @param tapBlock 点击事件
 */
+ (UIProgressView *)progressViewWithCenter:(CGPoint)center bounds:(CGRect)bounds style:(UIProgressViewStyle)style progress:(CGFloat)progress progressImage:(id)progressImage trackImage:(id)trackImage tap:(nullable void(^)(id sender))tapBlock;


@end

NS_ASSUME_NONNULL_END
