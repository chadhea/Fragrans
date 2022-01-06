//
//  UIProgressView+Fragrans.m
//  Fragrans
//
//  Created by qmz on 2019/4/9.
//

#import "UIProgressView+Fragrans.h"
#import "UIColor+Fragrans.h"
#import "UIImage+Fragrans.h"
#import "UIView+Fragrans.h"

@implementation UIProgressView (Fragrans)
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wobjc-designated-initializers"
/**
 创建进度条
 style + progress
 
 @param progress 当前进度（0~1）
 */
- (UIProgressView *)initWithProgressViewStyle:(UIProgressViewStyle)style progress:(CGFloat)progress {
    return [UIProgressView progressViewWithStyle:style progress:progress];
}

/**
 创建进度条
 style + progress
 
 @param progress 当前进度（0~1）
 */
+ (UIProgressView *)progressViewWithStyle:(UIProgressViewStyle)style progress:(CGFloat)progress {
    UIProgressView   *progressView = [[UIProgressView alloc] initWithProgressViewStyle:style];
    progressView.progress = progress;
    return progressView;
}

/**
 创建进度条
 style + progress + backgroundColor
 
 @param progress 当前进度（0~1）
 @param backgroundColor  UIColor或者NSString或者NSNumber格式
 */
- (UIProgressView *)initWithProgressViewStyle:(UIProgressViewStyle)style progress:(CGFloat)progress backgroundColor:(id)backgroundColor {
    return [UIProgressView progressViewWithStyle:style progress:progress backgroundColor:backgroundColor];
}

/**
 创建进度条
 style + progress + backgroundColor
 
 @param progress 当前进度（0~1）
 @param backgroundColor  UIColor或者NSString或者NSNumber格式
 */
+ (UIProgressView *)progressViewWithStyle:(UIProgressViewStyle)style progress:(CGFloat)progress backgroundColor:(id)backgroundColor {
    UIProgressView   *progressView = [[UIProgressView alloc] initWithProgressViewStyle:style];
    progressView.progress = progress;
    if (backgroundColor) {
        progressView.backgroundColor = [UIColor safeColor:backgroundColor];
    }
    
    return progressView;
}

/**
 创建进度条
 style + progress + progressTintColor + trackTintColor
 
 @param progress 当前进度（0~1）
 @param progressTintColor  已加载部分颜色 UIColor或者NSString或者NSNumber格式
 @param trackTintColor 未加载部分的颜色 UIColor或者NSString或者NSNumber格式
 */
- (UIProgressView *)initWithProgressViewStyle:(UIProgressViewStyle)style progress:(CGFloat)progress progressTintColor:(id)progressTintColor trackTintColor:(id)trackTintColor {
    return [UIProgressView progressViewWithStyle:style progress:progress progressTintColor:progressTintColor trackTintColor:trackTintColor tap:nil];
}

/**
 创建进度条
 style + progress + progressTintColor + trackTintColor
 
 @param progress 当前进度（0~1）
 @param progressTintColor  已加载部分颜色 UIColor或者NSString或者NSNumber格式
 @param trackTintColor 未加载部分的颜色 UIColor或者NSString或者NSNumber格式
 */
+ (UIProgressView *)progressViewWithStyle:(UIProgressViewStyle)style progress:(CGFloat)progress progressTintColor:(id)progressTintColor trackTintColor:(id)trackTintColor {
    return [UIProgressView progressViewWithStyle:style progress:progress progressTintColor:progressTintColor trackTintColor:trackTintColor tap:nil];
}

/**
 创建进度条
 style + progress + progressTintColor + trackTintColor + tap
 
 @param progress 当前进度（0~1）
 @param progressTintColor  已加载部分颜色 UIColor或者NSString或者NSNumber格式
 @param trackTintColor 未加载部分的颜色 UIColor或者NSString或者NSNumber格式
 @param tapBlock 点击事件
 */
- (UIProgressView *)initWithProgressViewStyle:(UIProgressViewStyle)style progress:(CGFloat)progress progressTintColor:(id)progressTintColor trackTintColor:(id)trackTintColor tap:(void(^)(id sender))tapBlock {
    return [UIProgressView progressViewWithStyle:style progress:progress progressTintColor:progressTintColor trackTintColor:trackTintColor tap:tapBlock];
}

/**
 创建进度条
 style + progress + progressTintColor + trackTintColor + tap
 
 @param progress 当前进度（0~1）
 @param progressTintColor  已加载部分颜色 UIColor或者NSString或者NSNumber格式
 @param trackTintColor 未加载部分的颜色 UIColor或者NSString或者NSNumber格式
 @param tapBlock 点击事件
 */
+ (UIProgressView *)progressViewWithStyle:(UIProgressViewStyle)style progress:(CGFloat)progress progressTintColor:(id)progressTintColor trackTintColor:(id)trackTintColor tap:(nullable void(^)(id sender))tapBlock {
    UIProgressView   *progressView = [[UIProgressView alloc] initWithProgressViewStyle:style];
    progressView.progress = progress;
    if (progressTintColor) {
        progressView.progressTintColor = [UIColor safeColor:progressTintColor];
    }
    if (trackTintColor) {
        progressView.trackTintColor = [UIColor safeColor:trackTintColor];
    }
    if (tapBlock) {
        [progressView addTapGestureRecognizerWithActionBlock:tapBlock];
    }
    return progressView;
}

/**
 创建进度条
 style + progress + progressImage + trackImage
 
 @param progress 当前进度（0~1）
 @param progressImage  已加载部分背景图 UIColor或者NSString或者NSNumber格式
 @param trackImage 未加载部分背景图 UIColor或者NSString或者NSNumber格式
 */
- (UIProgressView *)initWithProgressViewStyle:(UIProgressViewStyle)style progress:(CGFloat)progress progressImage:(id)progressImage trackImage:(id)trackImage {
    return [UIProgressView progressViewWithStyle:style progress:progress progressImage:progressImage trackImage:trackImage tap:nil];
}

/**
 创建进度条
 style + progress + progressImage + trackImage
 
 @param progress 当前进度（0~1）
 @param progressImage  已加载部分背景图 UIColor或者NSString或者NSNumber格式
 @param trackImage 未加载部分背景图 UIColor或者NSString或者NSNumber格式
 */
+ (UIProgressView *)progressViewWithStyle:(UIProgressViewStyle)style progress:(CGFloat)progress progressImage:(id)progressImage trackImage:(id)trackImage {
    return [UIProgressView progressViewWithStyle:style progress:progress progressImage:progressImage trackImage:trackImage tap:nil];
}

/**
 创建进度条
 style + progress + progressImage + trackImage + tap
 
 @param progress 当前进度（0~1）
 @param progressImage  已加载部分背景图 UIColor或者NSString或者NSNumber格式
 @param trackImage 未加载部分背景图 UIColor或者NSString或者NSNumber格式
 @param tapBlock 点击事件
 */
- (UIProgressView *)initWithProgressViewStyle:(UIProgressViewStyle)style progress:(CGFloat)progress progressImage:(id)progressImage trackImage:(id)trackImage tap:(void(^)(id sender))tapBlock {
    return [UIProgressView progressViewWithStyle:style progress:progress progressImage:progressImage trackImage:trackImage tap:tapBlock];
}

/**
 创建进度条
 style + progress + progressImage + trackImage + tap
 
 @param progress 当前进度（0~1）
 @param progressImage  已加载部分背景图 UIColor或者NSString或者NSNumber格式
 @param trackImage 未加载部分背景图 UIColor或者NSString或者NSNumber格式
 @param tapBlock 点击事件
 */
+ (UIProgressView *)progressViewWithStyle:(UIProgressViewStyle)style progress:(CGFloat)progress progressImage:(id)progressImage trackImage:(id)trackImage tap:(nullable void(^)(id sender))tapBlock {
    UIProgressView   *progressView = [[UIProgressView alloc] initWithProgressViewStyle:style];
    progressView.progress = progress;
    if (progressImage) {
        progressView.progressImage = [UIImage safeImage:progressImage];
    }
    if (trackImage) {
        progressView.trackImage = [UIImage safeImage:trackImage];
    }
    if (tapBlock) {
        [progressView addTapGestureRecognizerWithActionBlock:tapBlock];
    }
    return progressView;
}

/**
 创建进度条
 frame + style + progress
 
 @param progress 当前进度（0~1）
 */
- (UIProgressView *)initWithProgressViewFrame:(CGRect)frame style:(UIProgressViewStyle)style progress:(CGFloat)progress {
    return [UIProgressView progressViewWithFrame:frame style:style progress:progress];
}

/**
 创建进度条
 frame + style + progress
 
 @param progress 当前进度（0~1）
 */
+ (UIProgressView *)progressViewWithFrame:(CGRect)frame style:(UIProgressViewStyle)style progress:(CGFloat)progress {
    UIProgressView   *progressView = [[UIProgressView alloc] initWithProgressViewStyle:style];
    progressView.progress = progress;
    progressView.frame = frame;
    return progressView;
}

/**
 创建进度条
 frame + style + progress + backgroundColor
 
 @param progress 当前进度（0~1）
 @param backgroundColor  UIColor或者NSString或者NSNumber格式
 */
- (UIProgressView *)initWithProgressViewFrame:(CGRect)frame style:(UIProgressViewStyle)style progress:(CGFloat)progress backgroundColor:(id)backgroundColor {
    return [UIProgressView progressViewWithFrame:frame style:style progress:progress backgroundColor:backgroundColor];
}

/**
 创建进度条
 frame + style + progress + backgroundColor
 
 @param progress 当前进度（0~1）
 @param backgroundColor  UIColor或者NSString或者NSNumber格式
 */
+ (UIProgressView *)progressViewWithFrame:(CGRect)frame style:(UIProgressViewStyle)style progress:(CGFloat)progress backgroundColor:(id)backgroundColor {
    UIProgressView   *progressView = [UIProgressView progressViewWithStyle:style progress:progress backgroundColor:backgroundColor];
    progressView.frame = frame;
    return progressView;
}

/**
 创建进度条
 frame + style + progress + progressTintColor + trackTintColor
 
 @param progress 当前进度（0~1）
 @param progressTintColor  已加载部分颜色 UIColor或者NSString或者NSNumber格式
 @param trackTintColor 未加载部分的颜色 UIColor或者NSString或者NSNumber格式
 */
- (UIProgressView *)initWithProgressViewFrame:(CGRect)frame style:(UIProgressViewStyle)style progress:(CGFloat)progress progressTintColor:(id)progressTintColor trackTintColor:(id)trackTintColor {
    return [UIProgressView progressViewWithFrame:frame style:style progress:progress progressTintColor:progressTintColor trackTintColor:trackTintColor tap:nil];
}

/**
 创建进度条
 frame + style + progress + progressTintColor + trackTintColor
 
 @param progress 当前进度（0~1）
 @param progressTintColor  已加载部分颜色 UIColor或者NSString或者NSNumber格式
 @param trackTintColor 未加载部分的颜色 UIColor或者NSString或者NSNumber格式
 */
+ (UIProgressView *)progressViewWithFrame:(CGRect)frame style:(UIProgressViewStyle)style progress:(CGFloat)progress progressTintColor:(id)progressTintColor trackTintColor:(id)trackTintColor {
    return [UIProgressView progressViewWithFrame:frame style:style progress:progress progressTintColor:progressTintColor trackTintColor:trackTintColor tap:nil];
}

/**
 创建进度条
 frame + style + progress + progressTintColor + trackTintColor + tap
 
 @param progress 当前进度（0~1）
 @param progressTintColor  已加载部分颜色 UIColor或者NSString或者NSNumber格式
 @param trackTintColor 未加载部分的颜色 UIColor或者NSString或者NSNumber格式
 @param tapBlock 点击事件
 */
- (UIProgressView *)initWithProgressViewFrame:(CGRect)frame style:(UIProgressViewStyle)style progress:(CGFloat)progress progressTintColor:(id)progressTintColor trackTintColor:(id)trackTintColor tap:(void(^)(id sender))tapBlock {
    return [UIProgressView progressViewWithFrame:frame style:style progress:progress progressTintColor:progressTintColor trackTintColor:trackTintColor tap:tapBlock];
}

/**
 创建进度条
 frame + style + progress + progressTintColor + trackTintColor + tap
 
 @param progress 当前进度（0~1）
 @param progressTintColor  已加载部分颜色 UIColor或者NSString或者NSNumber格式
 @param trackTintColor 未加载部分的颜色 UIColor或者NSString或者NSNumber格式
 @param tapBlock 点击事件
 */
+ (UIProgressView *)progressViewWithFrame:(CGRect)frame style:(UIProgressViewStyle)style progress:(CGFloat)progress progressTintColor:(id)progressTintColor trackTintColor:(id)trackTintColor tap:(nullable void(^)(id sender))tapBlock {
    UIProgressView   *progressView = [UIProgressView progressViewWithStyle:style progress:progress progressTintColor:progressTintColor trackTintColor:trackTintColor tap:tapBlock];
    progressView.frame = frame;
    return progressView;
}

/**
 创建进度条
 frame + style + progress + progressImage + trackImage
 
 @param progress 当前进度（0~1）
 @param progressImage  已加载部分背景图 UIColor或者NSString或者NSNumber格式
 @param trackImage 未加载部分背景图 UIColor或者NSString或者NSNumber格式
 */
- (UIProgressView *)initWithProgressViewFrame:(CGRect)frame style:(UIProgressViewStyle)style progress:(CGFloat)progress progressImage:(id)progressImage trackImage:(id)trackImage {
    return [UIProgressView progressViewWithFrame:frame style:style progress:progress progressImage:progressImage trackImage:trackImage tap:nil];
}

/**
 创建进度条
 frame + style + progress + progressImage + trackImage
 
 @param progress 当前进度（0~1）
 @param progressImage  已加载部分背景图 UIColor或者NSString或者NSNumber格式
 @param trackImage 未加载部分背景图 UIColor或者NSString或者NSNumber格式
 */
+ (UIProgressView *)progressViewWithFrame:(CGRect)frame style:(UIProgressViewStyle)style progress:(CGFloat)progress progressImage:(id)progressImage trackImage:(id)trackImage {
    return [UIProgressView progressViewWithFrame:frame style:style progress:progress progressImage:progressImage trackImage:trackImage tap:nil];
}

/**
 创建进度条
 frame + style + progress + progressImage + trackImage + tap
 
 @param progress 当前进度（0~1）
 @param progressImage  已加载部分背景图 UIColor或者NSString或者NSNumber格式
 @param trackImage 未加载部分背景图 UIColor或者NSString或者NSNumber格式
 @param tapBlock 点击事件
 */
- (UIProgressView *)initWithProgressViewFrame:(CGRect)frame style:(UIProgressViewStyle)style progress:(CGFloat)progress progressImage:(id)progressImage trackImage:(id)trackImage tap:(void(^)(id sender))tapBlock {
    return [UIProgressView progressViewWithFrame:frame style:style progress:progress progressImage:progressImage trackImage:trackImage tap:tapBlock];
}

/**
 创建进度条
 frame + style + progress + progressImage + trackImage + tap
 
 @param progress 当前进度（0~1）
 @param progressImage  已加载部分背景图 UIColor或者NSString或者NSNumber格式
 @param trackImage 未加载部分背景图 UIColor或者NSString或者NSNumber格式
 @param tapBlock 点击事件
 */
+ (UIProgressView *)progressViewWithFrame:(CGRect)frame style:(UIProgressViewStyle)style progress:(CGFloat)progress progressImage:(id)progressImage trackImage:(id)trackImage tap:(nullable void(^)(id sender))tapBlock {
    UIProgressView   *progressView = [UIProgressView progressViewWithStyle:style progress:progress progressImage:progressImage trackImage:trackImage tap:tapBlock];
    progressView.frame = frame;
    return progressView;
}

/**
 创建进度条
 center + bounds + style + progress
 
 @param progress 当前进度（0~1）
 */
- (UIProgressView *)initWithProgressViewCenter:(CGPoint)center bounds:(CGRect)bounds style:(UIProgressViewStyle)style progress:(CGFloat)progress {
    return [UIProgressView progressViewWithCenter:center bounds:bounds style:style progress:progress];
}

/**
 创建进度条
 center + bounds + style + progress
 
 @param progress 当前进度（0~1）
 */
+ (UIProgressView *)progressViewWithCenter:(CGPoint)center bounds:(CGRect)bounds style:(UIProgressViewStyle)style progress:(CGFloat)progress {
    UIProgressView   *progressView = [[UIProgressView alloc] initWithProgressViewStyle:style];
    progressView.progress = progress;
    progressView.center = center;
    progressView.bounds = bounds;
    return progressView;
}

/**
 创建进度条
 center + bounds + style + progress + backgroundColor
 
 @param progress 当前进度（0~1）
 @param backgroundColor  UIColor或者NSString或者NSNumber格式
 */
- (UIProgressView *)initWithProgressViewCenter:(CGPoint)center bounds:(CGRect)bounds style:(UIProgressViewStyle)style progress:(CGFloat)progress backgroundColor:(id)backgroundColor {
    return [UIProgressView progressViewWithCenter:center bounds:bounds style:style progress:progress backgroundColor:backgroundColor];
}

/**
 创建进度条
 center + bounds + style + progress + backgroundColor
 
 @param progress 当前进度（0~1）
 @param backgroundColor  UIColor或者NSString或者NSNumber格式
 */
+ (UIProgressView *)progressViewWithCenter:(CGPoint)center bounds:(CGRect)bounds style:(UIProgressViewStyle)style progress:(CGFloat)progress backgroundColor:(id)backgroundColor {
    UIProgressView   *progressView = [UIProgressView progressViewWithStyle:style progress:progress backgroundColor:backgroundColor];
    progressView.center = center;
    progressView.bounds = bounds;
    return progressView;
}

/**
 创建进度条
 center + bounds + style + progress + progressTintColor + trackTintColor
 
 @param progress 当前进度（0~1）
 @param progressTintColor  已加载部分颜色 UIColor或者NSString或者NSNumber格式
 @param trackTintColor 未加载部分的颜色 UIColor或者NSString或者NSNumber格式
 */
- (UIProgressView *)initWithProgressViewCenter:(CGPoint)center bounds:(CGRect)bounds style:(UIProgressViewStyle)style progress:(CGFloat)progress progressTintColor:(id)progressTintColor trackTintColor:(id)trackTintColor {
    return [UIProgressView progressViewWithCenter:center bounds:bounds style:style progress:progress progressTintColor:progressTintColor trackTintColor:trackTintColor tap:nil];
}

/**
 创建进度条
 center + bounds + style + progress + progressTintColor + trackTintColor
 
 @param progress 当前进度（0~1）
 @param progressTintColor  已加载部分颜色 UIColor或者NSString或者NSNumber格式
 @param trackTintColor 未加载部分的颜色 UIColor或者NSString或者NSNumber格式
 */
+ (UIProgressView *)progressViewWithCenter:(CGPoint)center bounds:(CGRect)bounds style:(UIProgressViewStyle)style progress:(CGFloat)progress progressTintColor:(id)progressTintColor trackTintColor:(id)trackTintColor {
    return [UIProgressView progressViewWithCenter:center bounds:bounds style:style progress:progress progressTintColor:progressTintColor trackTintColor:trackTintColor tap:nil];
}

/**
 创建进度条
 center + bounds + style + progress + progressTintColor + trackTintColor + tap
 
 @param progress 当前进度（0~1）
 @param progressTintColor  已加载部分颜色 UIColor或者NSString或者NSNumber格式
 @param trackTintColor 未加载部分的颜色 UIColor或者NSString或者NSNumber格式
 @param tapBlock 点击事件
 */
- (UIProgressView *)initWithProgressViewCenter:(CGPoint)center bounds:(CGRect)bounds style:(UIProgressViewStyle)style progress:(CGFloat)progress progressTintColor:(id)progressTintColor trackTintColor:(id)trackTintColor tap:(void(^)(id sender))tapBlock {
    return [UIProgressView progressViewWithCenter:center bounds:bounds style:style progress:progress progressTintColor:progressTintColor trackTintColor:trackTintColor tap:tapBlock];
}

/**
 创建进度条
 center + bounds + style + progress + progressTintColor + trackTintColor + tap
 
 @param progress 当前进度（0~1）
 @param progressTintColor  已加载部分颜色 UIColor或者NSString或者NSNumber格式
 @param trackTintColor 未加载部分的颜色 UIColor或者NSString或者NSNumber格式
 @param tapBlock 点击事件
 */
+ (UIProgressView *)progressViewWithCenter:(CGPoint)center bounds:(CGRect)bounds style:(UIProgressViewStyle)style progress:(CGFloat)progress progressTintColor:(id)progressTintColor trackTintColor:(id)trackTintColor tap:(nullable void(^)(id sender))tapBlock {
    UIProgressView   *progressView = [UIProgressView progressViewWithStyle:style progress:progress progressTintColor:progressTintColor trackTintColor:trackTintColor tap:tapBlock];
    progressView.center = center;
    progressView.bounds = bounds;
    return progressView;
}

/**
 创建进度条
 center + bounds + style + progress + progressImage + trackImage
 
 @param progress 当前进度（0~1）
 @param progressImage  已加载部分背景图 UIColor或者NSString或者NSNumber格式
 @param trackImage 未加载部分背景图 UIColor或者NSString或者NSNumber格式
 */
- (UIProgressView *)initWithProgressViewCenter:(CGPoint)center bounds:(CGRect)bounds style:(UIProgressViewStyle)style progress:(CGFloat)progress progressImage:(id)progressImage trackImage:(id)trackImage {
    return [UIProgressView progressViewWithCenter:center bounds:bounds style:style progress:progress progressImage:progressImage trackImage:trackImage tap:nil];
}

/**
 创建进度条
 center + bounds + style + progress + progressImage + trackImage
 
 @param progress 当前进度（0~1）
 @param progressImage  已加载部分背景图 UIColor或者NSString或者NSNumber格式
 @param trackImage 未加载部分背景图 UIColor或者NSString或者NSNumber格式
 */
+ (UIProgressView *)progressViewWithCenter:(CGPoint)center bounds:(CGRect)bounds style:(UIProgressViewStyle)style progress:(CGFloat)progress progressImage:(id)progressImage trackImage:(id)trackImage {
    return [UIProgressView progressViewWithCenter:center bounds:bounds style:style progress:progress progressImage:progressImage trackImage:trackImage tap:nil];
}


/**
 创建进度条
 center + bounds + style + progress + progressImage + trackImage + tap
 
 @param progress 当前进度（0~1）
 @param progressImage  已加载部分背景图 UIColor或者NSString或者NSNumber格式
 @param trackImage 未加载部分背景图 UIColor或者NSString或者NSNumber格式
 @param tapBlock 点击事件
 */
- (UIProgressView *)initWithProgressViewCenter:(CGPoint)center bounds:(CGRect)bounds style:(UIProgressViewStyle)style progress:(CGFloat)progress progressImage:(id)progressImage trackImage:(id)trackImage tap:(void(^)(id sender))tapBlock {
    return [UIProgressView progressViewWithCenter:center bounds:bounds style:style progress:progress progressImage:progressImage trackImage:trackImage tap:tapBlock];
}

/**
 创建进度条
 center + bounds + style + progress + progressImage + trackImage + tap
 
 @param progress 当前进度（0~1）
 @param progressImage  已加载部分背景图 UIColor或者NSString或者NSNumber格式
 @param trackImage 未加载部分背景图 UIColor或者NSString或者NSNumber格式
 @param tapBlock 点击事件
 */
+ (UIProgressView *)progressViewWithCenter:(CGPoint)center bounds:(CGRect)bounds style:(UIProgressViewStyle)style progress:(CGFloat)progress progressImage:(id)progressImage trackImage:(id)trackImage tap:(nullable void(^)(id sender))tapBlock {
    UIProgressView   *progressView = [UIProgressView progressViewWithStyle:style progress:progress progressImage:progressImage trackImage:trackImage tap:tapBlock];
    progressView.center = center;
    progressView.bounds = bounds;
    return progressView;
}

#pragma clang diagnostic pop


@end
