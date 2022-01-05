//
//  CALayer+Fragrans.h
//  Fragrans
//
//  Created by qmz on 2019/1/29.
//

#import <QuartzCore/QuartzCore.h>
#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN

@interface CALayer (Fragrans)

/**
 根据图片生成同形状mask
 
 @param image 图片
 @param layerFrame mask的frame
 @return 返回对应mask
 */
+ (CALayer *)maskLayerWithImage:(UIImage *)image layerFrame:(CGRect)layerFrame;

@end

NS_ASSUME_NONNULL_END
