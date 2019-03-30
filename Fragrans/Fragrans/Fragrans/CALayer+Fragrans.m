//
//  CALayer+Fragrans.m
//  Fragrans
//
//  Created by qmz on 2019/1/29.
//

#import "CALayer+Fragrans.h"

@implementation CALayer (Fragrans)

/**
 根据图片生成同形状mask
 
 @param image 图片
 @param layerFrame mask的frame
 @return 返回对应mask
 */
+ (CALayer *)maskLayerWithImage:(UIImage *)image layerFrame:(CGRect)layerFrame {
    CALayer   *maskLayer = [CALayer layer];
    maskLayer.frame = layerFrame;
    if (image) {
        maskLayer.contents = (__bridge id)image.CGImage;
    }
    maskLayer.contentsGravity = kCAGravityResizeAspect;
    return maskLayer;
}

@end
