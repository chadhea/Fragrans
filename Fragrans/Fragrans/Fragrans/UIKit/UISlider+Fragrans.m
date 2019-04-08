//
//  UISlider+Fragrans.m
//  Fragrans
//
//  Created by qmz on 2019/3/13.
//

#import "UISlider+Fragrans.h"
#import "UIImage+Fragrans.h"
#import "UIKitBridge.h"
@implementation UISlider (Fragrans)

/**
 create slider by value
 
 */
- (UISlider *)initWithValue:(CGFloat)value {
    return [UISlider sliderWithValue:value minimumValue:0.0f maximumValue:1.0f thumbTintColor:nil minimumTrackTintColor:nil maximumTrackTintColor:nil minimumValueImage:nil maximumValueImage:nil target:nil action:nil];
}

/**
 create slider by value
 
 */
+ (UISlider *)sliderWithValue:(CGFloat)value {
    return [UISlider sliderWithValue:value minimumValue:0.0f maximumValue:1.0f thumbTintColor:nil minimumTrackTintColor:nil maximumTrackTintColor:nil minimumValueImage:nil maximumValueImage:nil target:nil action:nil];
}

/**
 create slider by target + action
 
 */
- (UISlider *)initWithTarget:(id)target action:(SEL)action {
    return [UISlider sliderWithValue:0.0f minimumValue:0.0f maximumValue:1.0f thumbTintColor:nil minimumTrackTintColor:nil maximumTrackTintColor:nil minimumValueImage:nil maximumValueImage:nil target:target action:action];
}

/**
 create slider by target + action
 
 */
+ (UISlider *)sliderWithTarget:(id)target action:(SEL)action {
    return [UISlider sliderWithValue:0.0f minimumValue:0.0f maximumValue:1.0f thumbTintColor:nil minimumTrackTintColor:nil maximumTrackTintColor:nil minimumValueImage:nil maximumValueImage:nil target:target action:action];
}

/**
 create slider by value + target + action
 
 */
- (UISlider *)initWithValue:(CGFloat)value target:(id)target action:(SEL)action {
    return [UISlider sliderWithValue:value minimumValue:0.0f maximumValue:1.0f thumbTintColor:nil minimumTrackTintColor:nil maximumTrackTintColor:nil minimumValueImage:nil maximumValueImage:nil target:target action:action];
}

/**
 create slider by value + target + action
 
 */
+ (UISlider *)sliderWithValue:(CGFloat)value target:(id)target action:(SEL)action {
    return [UISlider sliderWithValue:value minimumValue:0.0f maximumValue:1.0f thumbTintColor:nil minimumTrackTintColor:nil maximumTrackTintColor:nil minimumValueImage:nil maximumValueImage:nil target:target action:action];
}

/**
 create slider by value + minimumValue + maximumValue
 
 */
- (UISlider *)initWithValue:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue {
    return [UISlider sliderWithValue:value minimumValue:minimumValue maximumValue:maximumValue thumbTintColor:nil minimumTrackTintColor:nil maximumTrackTintColor:nil minimumValueImage:nil maximumValueImage:nil target:nil action:nil];
}

/**
 create slider by value + minimumValue + maximumValue
 
 */
+ (UISlider *)sliderWithValue:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue {
    return [UISlider sliderWithValue:value minimumValue:minimumValue maximumValue:maximumValue thumbTintColor:nil minimumTrackTintColor:nil maximumTrackTintColor:nil minimumValueImage:nil maximumValueImage:nil target:nil action:nil];
}

/**
 create slider by value + minimumValue + maximumValue + target + action
 
 */
- (UISlider *)initWithValue:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue target:(id)target action:(SEL)action {
    return [UISlider sliderWithValue:value minimumValue:minimumValue maximumValue:maximumValue thumbTintColor:nil minimumTrackTintColor:nil maximumTrackTintColor:nil minimumValueImage:nil maximumValueImage:nil target:target action:action];
}

/**
 create slider by value + minimumValue + maximumValue + target + action
 
 */
+ (UISlider *)sliderWithValue:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue target:(id)target action:(SEL)action {
    return [UISlider sliderWithValue:value minimumValue:minimumValue maximumValue:maximumValue thumbTintColor:nil minimumTrackTintColor:nil maximumTrackTintColor:nil minimumValueImage:nil maximumValueImage:nil target:target action:action];
}

/**
 create slider by value + minimumValue + maximumValue + thumbTintColor
 
 @param thumbTintColor  UIColor或者NSString或者NSNumber格式
 */
- (UISlider *)initWithValue:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue thumbTintColor:(id)thumbTintColor {
    return [UISlider sliderWithValue:value minimumValue:minimumValue maximumValue:maximumValue thumbTintColor:thumbTintColor minimumTrackTintColor:nil maximumTrackTintColor:nil minimumValueImage:nil maximumValueImage:nil target:nil action:nil];
}

/**
 create slider by value + minimumValue + maximumValue + thumbTintColor
 
 @param thumbTintColor UIColor或者NSString或者NSNumber格式
 */
+ (UISlider *)sliderWithValue:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue thumbTintColor:(id)thumbTintColor {
    return [UISlider sliderWithValue:value minimumValue:minimumValue maximumValue:maximumValue thumbTintColor:thumbTintColor minimumTrackTintColor:nil maximumTrackTintColor:nil minimumValueImage:nil maximumValueImage:nil target:nil action:nil];
}

/**
 create slider by value + minimumValue + maximumValue + thumbTintColor + target + action
 
 @param thumbTintColor UIColor或者NSString或者NSNumber格式
 */
- (UISlider *)initWithValue:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue thumbTintColor:(id)thumbTintColor target:(id)target action:(SEL)action {
    return [UISlider sliderWithValue:value minimumValue:minimumValue maximumValue:maximumValue thumbTintColor:thumbTintColor minimumTrackTintColor:nil maximumTrackTintColor:nil minimumValueImage:nil maximumValueImage:nil target:target action:action];
}

/**
 create slider by value + minimumValue + maximumValue + thumbTintColor + target + action
 
 @param thumbTintColor UIColor或者NSString或者NSNumber格式
 */
+ (UISlider *)sliderWithValue:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue thumbTintColor:(id)thumbTintColor target:(id)target action:(SEL)action {
    return [UISlider sliderWithValue:value minimumValue:minimumValue maximumValue:maximumValue thumbTintColor:thumbTintColor minimumTrackTintColor:nil maximumTrackTintColor:nil minimumValueImage:nil maximumValueImage:nil target:target action:action];
}

/**
 create slider by value + minimumValue + maximumValue + thumbTintColor + minimumTrackTintColor
 + maximumTrackTintColor
 
 @param thumbTintColor UIColor或者NSString或者NSNumber格式
 @param minimumTrackTintColor UIColor或者NSString或者NSNumber格式
 @param maximumTrackTintColor UIColor或者NSString或者NSNumber格式
 */
- (UISlider *)initWithValue:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue thumbTintColor:(id)thumbTintColor minimumTrackTintColor:(id)minimumTrackTintColor maximumTrackTintColor:(id)maximumTrackTintColor {
    return [UISlider sliderWithValue:value minimumValue:minimumValue maximumValue:maximumValue thumbTintColor:thumbTintColor minimumTrackTintColor:minimumTrackTintColor maximumTrackTintColor:maximumTrackTintColor minimumValueImage:nil maximumValueImage:nil target:nil action:nil];
}

/**
 create slider by value + minimumValue + maximumValue + thumbTintColor + minimumTrackTintColor
 + maximumTrackTintColor
 
 @param thumbTintColor UIColor或者NSString或者NSNumber格式
 @param minimumTrackTintColor UIColor或者NSString或者NSNumber格式
 @param maximumTrackTintColor UIColor或者NSString或者NSNumber格式
 */
+ (UISlider *)sliderWithValue:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue thumbTintColor:(id)thumbTintColor minimumTrackTintColor:(id)minimumTrackTintColor maximumTrackTintColor:(id)maximumTrackTintColor {
    return [UISlider sliderWithValue:value minimumValue:minimumValue maximumValue:maximumValue thumbTintColor:thumbTintColor minimumTrackTintColor:minimumTrackTintColor maximumTrackTintColor:maximumTrackTintColor minimumValueImage:nil maximumValueImage:nil target:nil action:nil];
}

/**
 create slider by value + minimumValue + maximumValue + thumbTintColor + minimumTrackTintColor
 + maximumTrackTintColor + target + action
 
 @param thumbTintColor UIColor或者NSString或者NSNumber格式
 @param minimumTrackTintColor UIColor或者NSString或者NSNumber格式
 @param maximumTrackTintColor UIColor或者NSString或者NSNumber格式
 */
- (UISlider *)initWithValue:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue thumbTintColor:(id)thumbTintColor minimumTrackTintColor:(id)minimumTrackTintColor maximumTrackTintColor:(id)maximumTrackTintColor target:(id)target action:(SEL)action {
    return [UISlider sliderWithValue:value minimumValue:minimumValue maximumValue:maximumValue thumbTintColor:thumbTintColor minimumTrackTintColor:minimumTrackTintColor maximumTrackTintColor:maximumTrackTintColor minimumValueImage:nil maximumValueImage:nil target:target action:action];
}

/**
 create slider by value + minimumValue + maximumValue + thumbTintColor + minimumTrackTintColor
 + maximumTrackTintColor + target + action
 
 @param thumbTintColor UIColor或者NSString或者NSNumber格式
 @param minimumTrackTintColor UIColor或者NSString或者NSNumber格式
 @param maximumTrackTintColor UIColor或者NSString或者NSNumber格式
 */
+ (UISlider *)sliderWithValue:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue thumbTintColor:(id)thumbTintColor minimumTrackTintColor:(id)minimumTrackTintColor maximumTrackTintColor:(id)maximumTrackTintColor target:(id)target action:(SEL)action {
    return [UISlider sliderWithValue:value minimumValue:minimumValue maximumValue:maximumValue thumbTintColor:thumbTintColor minimumTrackTintColor:minimumTrackTintColor maximumTrackTintColor:maximumTrackTintColor minimumValueImage:nil maximumValueImage:nil target:target action:action];
}

/**
 create slider by value + minimumValue + maximumValue + thumbTintColor + minimumTrackTintColor
 + maximumTrackTintColor + minimumValueImage + maximumValueImage
 
 @param thumbTintColor UIColor或者NSString或者NSNumber格式
 @param minimumTrackTintColor UIColor或者NSString或者NSNumber格式
 @param maximumTrackTintColor UIColor或者NSString或者NSNumber格式
 @param minimumValueImage UIimage或者NSString格式
 @param maximumValueImage UIimage或者NSString格式
 */
- (UISlider *)initWithValue:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue thumbTintColor:(id)thumbTintColor minimumTrackTintColor:(id)minimumTrackTintColor maximumTrackTintColor:(id)maximumTrackTintColor minimumValueImage:(id)minimumValueImage maximumValueImage:(id)maximumValueImage {
    return [UISlider sliderWithValue:value minimumValue:minimumValue maximumValue:maximumValue thumbTintColor:thumbTintColor minimumTrackTintColor:minimumTrackTintColor maximumTrackTintColor:maximumTrackTintColor minimumValueImage:minimumValueImage maximumValueImage:maximumValueImage target:nil action:nil];
}

/**
 create slider by value + minimumValue + maximumValue + thumbTintColor + minimumTrackTintColor
 + maximumTrackTintColor + minimumValueImage + maximumValueImage
 
 @param thumbTintColor UIColor或者NSString或者NSNumber格式
 @param minimumTrackTintColor UIColor或者NSString或者NSNumber格式
 @param maximumTrackTintColor UIColor或者NSString或者NSNumber格式
 @param minimumValueImage UIimage或者NSString格式
 @param maximumValueImage UIimage或者NSString格式
 */
+ (UISlider *)sliderWithValue:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue thumbTintColor:(id)thumbTintColor minimumTrackTintColor:(id)minimumTrackTintColor maximumTrackTintColor:(id)maximumTrackTintColor minimumValueImage:(id)minimumValueImage maximumValueImage:(id)maximumValueImage {
    return [UISlider sliderWithValue:value minimumValue:minimumValue maximumValue:maximumValue thumbTintColor:thumbTintColor minimumTrackTintColor:minimumTrackTintColor maximumTrackTintColor:maximumTrackTintColor minimumValueImage:minimumValueImage maximumValueImage:maximumValueImage target:nil action:nil];
}

/**
 create slider by value + minimumValue + maximumValue + thumbTintColor + minimumTrackTintColor
 + maximumTrackTintColor + minimumValueImage + maximumValueImage + target + action
 
 @param thumbTintColor UIColor或者NSString或者NSNumber格式
 @param minimumTrackTintColor UIColor或者NSString或者NSNumber格式
 @param maximumTrackTintColor UIColor或者NSString或者NSNumber格式
 @param minimumValueImage UIimage或者NSString格式
 @param maximumValueImage UIimage或者NSString格式
 */
- (UISlider *)initWithValue:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue thumbTintColor:(id)thumbTintColor minimumTrackTintColor:(id)minimumTrackTintColor maximumTrackTintColor:(id)maximumTrackTintColor minimumValueImage:(id)minimumValueImage maximumValueImage:(id)maximumValueImage target:(id)target action:(SEL)action {
    return [UISlider sliderWithValue:value minimumValue:minimumValue maximumValue:maximumValue thumbTintColor:thumbTintColor minimumTrackTintColor:minimumTrackTintColor maximumTrackTintColor:maximumTrackTintColor minimumValueImage:minimumValueImage maximumValueImage:maximumValueImage target:target action:action];
}

/**
 create slider by value + minimumValue + maximumValue + thumbTintColor + minimumTrackTintColor
 + maximumTrackTintColor + minimumValueImage + maximumValueImage + target + action
 
 @param thumbTintColor UIColor或者NSString或者NSNumber格式
 @param minimumTrackTintColor UIColor或者NSString或者NSNumber格式
 @param maximumTrackTintColor UIColor或者NSString或者NSNumber格式
 @param minimumValueImage UIimage或者NSString格式
 @param maximumValueImage UIimage或者NSString格式
 */
+ (UISlider *)sliderWithValue:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue thumbTintColor:(nullable id)thumbTintColor minimumTrackTintColor:(nullable id)minimumTrackTintColor maximumTrackTintColor:(nullable id)maximumTrackTintColor minimumValueImage:(nullable id)minimumValueImage maximumValueImage:(nullable id)maximumValueImage target:(nullable id)target action:(nullable SEL)action {
    UISlider   *slider = [[UISlider alloc] init];
    CGFloat  transferValue = minimumValue;
    if (maximumValue < minimumValue) {
        minimumValue = maximumValue;
        maximumValue = transferValue;
    }
    slider.minimumValue = minimumValue;
    slider.maximumValue = maximumValue;
    if (value >= minimumValue && value <= maximumValue) {
        slider.value = value;
    }else {
        slider.value = minimumValue;
    }
    slider.thumbTintColor = [UIKitBridge safeColor:thumbTintColor];
    slider.minimumTrackTintColor = [UIKitBridge safeColor:minimumTrackTintColor];
    slider.maximumTrackTintColor = [UIKitBridge safeColor:maximumTrackTintColor];
    slider.minimumValueImage = [UIImage safeImage:minimumValueImage];
    slider.maximumValueImage = [UIImage safeImage:maximumValueImage];
    if (target && action) {
        [slider addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    }
    return slider;
}

/**
 create slider by frame + value
 
 */
- (UISlider *)initWithFrame:(CGRect)frame value:(CGFloat)value {
    return [UISlider sliderWithFrame:frame value:value minimumValue:0.0f maximumValue:1.0f thumbTintColor:nil minimumTrackTintColor:nil maximumTrackTintColor:nil minimumValueImage:nil maximumValueImage:nil target:nil action:nil];
}

/**
 create slider by frame + value
 
 */
+ (UISlider *)sliderWithFrame:(CGRect)frame value:(CGFloat)value {
    return [UISlider sliderWithFrame:frame value:value minimumValue:0.0f maximumValue:1.0f thumbTintColor:nil minimumTrackTintColor:nil maximumTrackTintColor:nil minimumValueImage:nil maximumValueImage:nil target:nil action:nil];
}

/**
 create slider by frame + target + action
 
 */
- (UISlider *)initWithFrame:(CGRect)frame target:(id)target action:(SEL)action {
    return [UISlider sliderWithFrame:frame value:0.0f minimumValue:0.0f maximumValue:1.0f thumbTintColor:nil minimumTrackTintColor:nil maximumTrackTintColor:nil minimumValueImage:nil maximumValueImage:nil target:target action:action];
}

/**
 create slider by frame + target + action
 
 */
+ (UISlider *)sliderWithFrame:(CGRect)frame target:(id)target action:(SEL)action {
    return [UISlider sliderWithFrame:frame value:0.0f minimumValue:0.0f maximumValue:1.0f thumbTintColor:nil minimumTrackTintColor:nil maximumTrackTintColor:nil minimumValueImage:nil maximumValueImage:nil target:target action:action];
}

/**
 create slider by frame + value + target + action
 
 */
- (UISlider *)initWithFrame:(CGRect)frame value:(CGFloat)value target:(id)target action:(SEL)action {
    return [UISlider sliderWithFrame:frame value:value minimumValue:0.0f maximumValue:1.0f thumbTintColor:nil minimumTrackTintColor:nil maximumTrackTintColor:nil minimumValueImage:nil maximumValueImage:nil target:target action:action];
}

/**
 create slider by frame + value + target + action
 
 */
+ (UISlider *)sliderWithFrame:(CGRect)frame value:(CGFloat)value target:(id)target action:(SEL)action {
    return [UISlider sliderWithFrame:frame value:value minimumValue:0.0f maximumValue:1.0f thumbTintColor:nil minimumTrackTintColor:nil maximumTrackTintColor:nil minimumValueImage:nil maximumValueImage:nil target:target action:action];
}

/**
 create slider by frame + value + minimumValue + maximumValue
 
 */
- (UISlider *)initWithFrame:(CGRect)frame value:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue {
    return [UISlider sliderWithFrame:frame value:value minimumValue:minimumValue maximumValue:maximumValue thumbTintColor:nil minimumTrackTintColor:nil maximumTrackTintColor:nil minimumValueImage:nil maximumValueImage:nil target:nil action:nil];
}

/**
 create slider by frame + value + minimumValue + maximumValue
 
 */
+ (UISlider *)sliderWithFrame:(CGRect)frame value:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue {
    return [UISlider sliderWithFrame:frame value:value minimumValue:minimumValue maximumValue:maximumValue thumbTintColor:nil minimumTrackTintColor:nil maximumTrackTintColor:nil minimumValueImage:nil maximumValueImage:nil target:nil action:nil];
}

/**
 create slider by frame + value + minimumValue + maximumValue + target + action
 
 */
- (UISlider *)initWithFrame:(CGRect)frame value:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue target:(id)target action:(SEL)action {
    return [UISlider sliderWithFrame:frame value:value minimumValue:minimumValue maximumValue:maximumValue thumbTintColor:nil minimumTrackTintColor:nil maximumTrackTintColor:nil minimumValueImage:nil maximumValueImage:nil target:target action:action];
}

/**
 create slider by frame + value + minimumValue + maximumValue + target + action
 
 */
+ (UISlider *)sliderWithFrame:(CGRect)frame value:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue target:(id)target action:(SEL)action {
    return [UISlider sliderWithFrame:frame value:value minimumValue:minimumValue maximumValue:maximumValue thumbTintColor:nil minimumTrackTintColor:nil maximumTrackTintColor:nil minimumValueImage:nil maximumValueImage:nil target:target action:action];
}

/**
 create slider by frame + value + minimumValue + maximumValue + thumbTintColor
 
 @param thumbTintColor  UIColor或者NSString或者NSNumber格式
 */
- (UISlider *)initWithFrame:(CGRect)frame value:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue thumbTintColor:(id)thumbTintColor {
    return [UISlider sliderWithFrame:frame value:value minimumValue:minimumValue maximumValue:maximumValue thumbTintColor:thumbTintColor minimumTrackTintColor:nil maximumTrackTintColor:nil minimumValueImage:nil maximumValueImage:nil target:nil action:nil];
}

/**
 create slider by frame + value + minimumValue + maximumValue + thumbTintColor
 
 @param thumbTintColor UIColor或者NSString或者NSNumber格式
 */
+ (UISlider *)sliderWithFrame:(CGRect)frame value:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue thumbTintColor:(id)thumbTintColor {
    return [UISlider sliderWithFrame:frame value:value minimumValue:minimumValue maximumValue:maximumValue thumbTintColor:thumbTintColor minimumTrackTintColor:nil maximumTrackTintColor:nil minimumValueImage:nil maximumValueImage:nil target:nil action:nil];
}

/**
 create slider by frame + value + minimumValue + maximumValue + thumbTintColor + target + action
 
 @param thumbTintColor UIColor或者NSString或者NSNumber格式
 */
- (UISlider *)initWithFrame:(CGRect)frame value:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue thumbTintColor:(id)thumbTintColor target:(id)target action:(SEL)action {
    return [UISlider sliderWithFrame:frame value:value minimumValue:minimumValue maximumValue:maximumValue thumbTintColor:thumbTintColor minimumTrackTintColor:nil maximumTrackTintColor:nil minimumValueImage:nil maximumValueImage:nil target:target action:action];
}

/**
 create slider by frame + value + minimumValue + maximumValue + thumbTintColor + target + action
 
 @param thumbTintColor UIColor或者NSString或者NSNumber格式
 */
+ (UISlider *)sliderWithFrame:(CGRect)frame value:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue thumbTintColor:(id)thumbTintColor target:(id)target action:(SEL)action {
    return [UISlider sliderWithFrame:frame value:value minimumValue:minimumValue maximumValue:maximumValue thumbTintColor:thumbTintColor minimumTrackTintColor:nil maximumTrackTintColor:nil minimumValueImage:nil maximumValueImage:nil target:target action:action];
}

/**
 create slider by frame + value + minimumValue + maximumValue + thumbTintColor
 + minimumTrackTintColor + maximumTrackTintColor
 
 @param thumbTintColor UIColor或者NSString或者NSNumber格式
 @param minimumTrackTintColor UIColor或者NSString或者NSNumber格式
 @param maximumTrackTintColor UIColor或者NSString或者NSNumber格式
 */
- (UISlider *)initWithFrame:(CGRect)frame value:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue thumbTintColor:(id)thumbTintColor minimumTrackTintColor:(id)minimumTrackTintColor maximumTrackTintColor:(id)maximumTrackTintColor {
    return [UISlider sliderWithFrame:frame value:value minimumValue:minimumValue maximumValue:maximumValue thumbTintColor:thumbTintColor minimumTrackTintColor:minimumTrackTintColor maximumTrackTintColor:maximumTrackTintColor minimumValueImage:nil maximumValueImage:nil target:nil action:nil];
}

/**
 create slider by frame + value + minimumValue + maximumValue + thumbTintColor
 + minimumTrackTintColor + maximumTrackTintColor
 
 @param thumbTintColor UIColor或者NSString或者NSNumber格式
 @param minimumTrackTintColor UIColor或者NSString或者NSNumber格式
 @param maximumTrackTintColor UIColor或者NSString或者NSNumber格式
 */
+ (UISlider *)sliderWithFrame:(CGRect)frame value:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue thumbTintColor:(id)thumbTintColor minimumTrackTintColor:(id)minimumTrackTintColor maximumTrackTintColor:(id)maximumTrackTintColor {
    return [UISlider sliderWithFrame:frame value:value minimumValue:minimumValue maximumValue:maximumValue thumbTintColor:thumbTintColor minimumTrackTintColor:minimumTrackTintColor maximumTrackTintColor:maximumTrackTintColor minimumValueImage:nil maximumValueImage:nil target:nil action:nil];
}

/**
 create slider by frame + value + minimumValue + maximumValue + thumbTintColor
 + minimumTrackTintColor + maximumTrackTintColor + target + action
 
 @param thumbTintColor UIColor或者NSString或者NSNumber格式
 @param minimumTrackTintColor UIColor或者NSString或者NSNumber格式
 @param maximumTrackTintColor UIColor或者NSString或者NSNumber格式
 */
- (UISlider *)initWithFrame:(CGRect)frame value:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue thumbTintColor:(id)thumbTintColor minimumTrackTintColor:(id)minimumTrackTintColor maximumTrackTintColor:(id)maximumTrackTintColor target:(id)target action:(SEL)action {
    return [UISlider sliderWithFrame:frame value:value minimumValue:minimumValue maximumValue:maximumValue thumbTintColor:thumbTintColor minimumTrackTintColor:minimumTrackTintColor maximumTrackTintColor:maximumTrackTintColor minimumValueImage:nil maximumValueImage:nil target:target action:action];
}

/**
 create slider by frame + value + minimumValue + maximumValue + thumbTintColor
 + minimumTrackTintColor + maximumTrackTintColor + target + action
 
 @param thumbTintColor UIColor或者NSString或者NSNumber格式
 @param minimumTrackTintColor UIColor或者NSString或者NSNumber格式
 @param maximumTrackTintColor UIColor或者NSString或者NSNumber格式
 */
+ (UISlider *)sliderWithFrame:(CGRect)frame value:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue thumbTintColor:(id)thumbTintColor minimumTrackTintColor:(id)minimumTrackTintColor maximumTrackTintColor:(id)maximumTrackTintColor target:(id)target action:(SEL)action {
    return [UISlider sliderWithFrame:frame value:value minimumValue:minimumValue maximumValue:maximumValue thumbTintColor:thumbTintColor minimumTrackTintColor:minimumTrackTintColor maximumTrackTintColor:maximumTrackTintColor minimumValueImage:nil maximumValueImage:nil target:target action:action];
}

/**
 create slider by frame + value + minimumValue + maximumValue + thumbTintColor
 + minimumTrackTintColor + maximumTrackTintColor + minimumValueImage + maximumValueImage
 
 @param thumbTintColor UIColor或者NSString或者NSNumber格式
 @param minimumTrackTintColor UIColor或者NSString或者NSNumber格式
 @param maximumTrackTintColor UIColor或者NSString或者NSNumber格式
 @param minimumValueImage UIimage或者NSString格式
 @param maximumValueImage UIimage或者NSString格式
 */
- (UISlider *)initWithFrame:(CGRect)frame value:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue thumbTintColor:(id)thumbTintColor minimumTrackTintColor:(id)minimumTrackTintColor maximumTrackTintColor:(id)maximumTrackTintColor minimumValueImage:(id)minimumValueImage maximumValueImage:(id)maximumValueImage {
    return [UISlider sliderWithFrame:frame value:value minimumValue:minimumValue maximumValue:maximumValue thumbTintColor:thumbTintColor minimumTrackTintColor:minimumTrackTintColor maximumTrackTintColor:maximumTrackTintColor minimumValueImage:minimumValueImage maximumValueImage:maximumValueImage target:nil action:nil];
}

/**
 create slider by frame + value + minimumValue + maximumValue + thumbTintColor
 + minimumTrackTintColor + maximumTrackTintColor + minimumValueImage + maximumValueImage
 
 @param thumbTintColor UIColor或者NSString或者NSNumber格式
 @param minimumTrackTintColor UIColor或者NSString或者NSNumber格式
 @param maximumTrackTintColor UIColor或者NSString或者NSNumber格式
 @param minimumValueImage UIimage或者NSString格式
 @param maximumValueImage UIimage或者NSString格式
 */
+ (UISlider *)sliderWithFrame:(CGRect)frame value:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue thumbTintColor:(id)thumbTintColor minimumTrackTintColor:(id)minimumTrackTintColor maximumTrackTintColor:(id)maximumTrackTintColor minimumValueImage:(id)minimumValueImage maximumValueImage:(id)maximumValueImage {
    return [UISlider sliderWithFrame:frame value:value minimumValue:minimumValue maximumValue:maximumValue thumbTintColor:thumbTintColor minimumTrackTintColor:minimumTrackTintColor maximumTrackTintColor:maximumTrackTintColor minimumValueImage:minimumValueImage maximumValueImage:maximumValueImage target:nil action:nil];
}

/**
 create slider by frame + value + minimumValue + maximumValue + thumbTintColor
 + minimumTrackTintColor + maximumTrackTintColor + minimumValueImage + maximumValueImage
 + target + action
 
 @param thumbTintColor UIColor或者NSString或者NSNumber格式
 @param minimumTrackTintColor UIColor或者NSString或者NSNumber格式
 @param maximumTrackTintColor UIColor或者NSString或者NSNumber格式
 @param minimumValueImage UIimage或者NSString格式
 @param maximumValueImage UIimage或者NSString格式
 */
- (UISlider *)initWithFrame:(CGRect)frame value:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue thumbTintColor:(id)thumbTintColor minimumTrackTintColor:(id)minimumTrackTintColor maximumTrackTintColor:(id)maximumTrackTintColor minimumValueImage:(id)minimumValueImage maximumValueImage:(id)maximumValueImage target:(id)target action:(SEL)action {
    return [UISlider sliderWithFrame:frame value:value minimumValue:minimumValue maximumValue:maximumValue thumbTintColor:thumbTintColor minimumTrackTintColor:minimumTrackTintColor maximumTrackTintColor:maximumTrackTintColor minimumValueImage:minimumValueImage maximumValueImage:maximumValueImage target:target action:action];
}

/**
 create slider by frame + value + minimumValue + maximumValue + thumbTintColor
 + minimumTrackTintColor + maximumTrackTintColor + minimumValueImage + maximumValueImage
 + target + action
 
 @param thumbTintColor UIColor或者NSString或者NSNumber格式
 @param minimumTrackTintColor UIColor或者NSString或者NSNumber格式
 @param maximumTrackTintColor UIColor或者NSString或者NSNumber格式
 @param minimumValueImage UIimage或者NSString格式
 @param maximumValueImage UIimage或者NSString格式
 */
+ (UISlider *)sliderWithFrame:(CGRect)frame value:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue thumbTintColor:(nullable id)thumbTintColor minimumTrackTintColor:(nullable id)minimumTrackTintColor maximumTrackTintColor:(nullable id)maximumTrackTintColor minimumValueImage:(nullable id)minimumValueImage maximumValueImage:(nullable id)maximumValueImage target:(nullable id)target action:(nullable SEL)action {
    UISlider   *slider = [UISlider sliderWithValue:value minimumValue:minimumValue maximumValue:maximumValue thumbTintColor:thumbTintColor minimumTrackTintColor:minimumTrackTintColor maximumTrackTintColor:maximumTrackTintColor minimumValueImage:minimumValueImage maximumValueImage:maximumValueImage target:target action:action];
    CGRect   new_frame = frame;
    if (frame.size.height < 30) {
        //设置slider高度不能小于默认滑块的高度，否则灵敏度很低
        new_frame = CGRectMake(frame.origin.x, frame.origin.y, frame.size.width, 30);
    }
    slider.frame = new_frame;
    return slider;
}

/**
 create slider by center and bounds + value
 
 */
- (UISlider *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds value:(CGFloat)value {
    return [UISlider sliderWithCenter:center bounds:bounds value:value minimumValue:0.0f maximumValue:1.0f thumbTintColor:nil minimumTrackTintColor:nil maximumTrackTintColor:nil minimumValueImage:nil maximumValueImage:nil target:nil action:nil];
}

/**
 create slider by center and bounds + value
 
 */
+ (UISlider *)sliderWithCenter:(CGPoint)center bounds:(CGRect)bounds value:(CGFloat)value {
    return [UISlider sliderWithCenter:center bounds:bounds value:value minimumValue:0.0f maximumValue:1.0f thumbTintColor:nil minimumTrackTintColor:nil maximumTrackTintColor:nil minimumValueImage:nil maximumValueImage:nil target:nil action:nil];
}

/**
 create slider by center and bounds + target + action
 
 */
- (UISlider *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds target:(id)target action:(SEL)action {
    return [UISlider sliderWithCenter:center bounds:bounds value:0.0f minimumValue:0.0f maximumValue:1.0f thumbTintColor:nil minimumTrackTintColor:nil maximumTrackTintColor:nil minimumValueImage:nil maximumValueImage:nil target:target action:action];
}

/**
 create slider by center and bounds + target + action
 
 */
+ (UISlider *)sliderWithCenter:(CGPoint)center bounds:(CGRect)bounds target:(id)target action:(SEL)action {
    return [UISlider sliderWithCenter:center bounds:bounds value:0.0f minimumValue:0.0f maximumValue:1.0f thumbTintColor:nil minimumTrackTintColor:nil maximumTrackTintColor:nil minimumValueImage:nil maximumValueImage:nil target:target action:action];
}

/**
 create slider by center and bounds + value + target + action
 
 */
- (UISlider *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds value:(CGFloat)value target:(id)target action:(SEL)action {
    return [UISlider sliderWithCenter:center bounds:bounds value:value minimumValue:0.0f maximumValue:1.0f thumbTintColor:nil minimumTrackTintColor:nil maximumTrackTintColor:nil minimumValueImage:nil maximumValueImage:nil target:target action:action];
}

/**
 create slider by center and bounds + value + target + action
 
 */
+ (UISlider *)sliderWithCenter:(CGPoint)center bounds:(CGRect)bounds value:(CGFloat)value target:(id)target action:(SEL)action {
    return [UISlider sliderWithCenter:center bounds:bounds value:value minimumValue:0.0f maximumValue:1.0f thumbTintColor:nil minimumTrackTintColor:nil maximumTrackTintColor:nil minimumValueImage:nil maximumValueImage:nil target:target action:action];
}

/**
 create slider by center and bounds + value + minimumValue + maximumValue
 
 */
- (UISlider *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds value:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue {
    return [UISlider sliderWithCenter:center bounds:bounds value:value minimumValue:minimumValue maximumValue:maximumValue thumbTintColor:nil minimumTrackTintColor:nil maximumTrackTintColor:nil minimumValueImage:nil maximumValueImage:nil target:nil action:nil];
}

/**
 create slider by center and bounds + value + minimumValue + maximumValue
 
 */
+ (UISlider *)sliderWithCenter:(CGPoint)center bounds:(CGRect)bounds value:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue {
    return [UISlider sliderWithCenter:center bounds:bounds value:value minimumValue:minimumValue maximumValue:maximumValue thumbTintColor:nil minimumTrackTintColor:nil maximumTrackTintColor:nil minimumValueImage:nil maximumValueImage:nil target:nil action:nil];
}

/**
 create slider by center and bounds + value + minimumValue + maximumValue + target + action
 
 */
- (UISlider *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds value:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue target:(id)target action:(SEL)action {
    return [UISlider sliderWithCenter:center bounds:bounds value:value minimumValue:minimumValue maximumValue:maximumValue thumbTintColor:nil minimumTrackTintColor:nil maximumTrackTintColor:nil minimumValueImage:nil maximumValueImage:nil target:target action:action];
}
/**
 create slider by center and bounds + value + minimumValue + maximumValue + target + action
 
 */
+ (UISlider *)sliderWithCenter:(CGPoint)center bounds:(CGRect)bounds value:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue target:(id)target action:(SEL)action {
    return [UISlider sliderWithCenter:center bounds:bounds value:value minimumValue:minimumValue maximumValue:maximumValue thumbTintColor:nil minimumTrackTintColor:nil maximumTrackTintColor:nil minimumValueImage:nil maximumValueImage:nil target:target action:action];
}

/**
 create slider by center and bounds + value + minimumValue + maximumValue + thumbTintColor
 
 @param thumbTintColor  UIColor或者NSString或者NSNumber格式
 */
- (UISlider *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds value:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue thumbTintColor:(id)thumbTintColor {
    return [UISlider sliderWithCenter:center bounds:bounds value:value minimumValue:minimumValue maximumValue:maximumValue thumbTintColor:thumbTintColor minimumTrackTintColor:nil maximumTrackTintColor:nil minimumValueImage:nil maximumValueImage:nil target:nil action:nil];
}

/**
 create slider by center and bounds + value + minimumValue + maximumValue + thumbTintColor
 
 @param thumbTintColor UIColor或者NSString或者NSNumber格式
 */
+ (UISlider *)sliderWithCenter:(CGPoint)center bounds:(CGRect)bounds value:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue thumbTintColor:(id)thumbTintColor {
    return [UISlider sliderWithCenter:center bounds:bounds value:value minimumValue:minimumValue maximumValue:maximumValue thumbTintColor:thumbTintColor minimumTrackTintColor:nil maximumTrackTintColor:nil minimumValueImage:nil maximumValueImage:nil target:nil action:nil];
}

/**
 create slider by center and bounds + value + minimumValue + maximumValue + thumbTintColor
 + target + action
 
 @param thumbTintColor UIColor或者NSString或者NSNumber格式
 */
- (UISlider *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds value:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue thumbTintColor:(id)thumbTintColor target:(id)target action:(SEL)action {
    return [UISlider sliderWithCenter:center bounds:bounds value:value minimumValue:minimumValue maximumValue:maximumValue thumbTintColor:thumbTintColor minimumTrackTintColor:nil maximumTrackTintColor:nil minimumValueImage:nil maximumValueImage:nil target:target action:action];
}

/**
 create slider by center and bounds + value + minimumValue + maximumValue + thumbTintColor
 + target + action
 
 @param thumbTintColor UIColor或者NSString或者NSNumber格式
 */
+ (UISlider *)sliderWithCenter:(CGPoint)center bounds:(CGRect)bounds value:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue thumbTintColor:(id)thumbTintColor target:(id)target action:(SEL)action {
    return [UISlider sliderWithCenter:center bounds:bounds value:value minimumValue:minimumValue maximumValue:maximumValue thumbTintColor:thumbTintColor minimumTrackTintColor:nil maximumTrackTintColor:nil minimumValueImage:nil maximumValueImage:nil target:target action:action];
}

/**
 create slider by center and bounds + value + minimumValue + maximumValue + thumbTintColor
 + minimumTrackTintColor + maximumTrackTintColor
 
 @param thumbTintColor UIColor或者NSString或者NSNumber格式
 @param minimumTrackTintColor UIColor或者NSString或者NSNumber格式
 @param maximumTrackTintColor UIColor或者NSString或者NSNumber格式
 */
- (UISlider *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds value:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue thumbTintColor:(id)thumbTintColor minimumTrackTintColor:(id)minimumTrackTintColor maximumTrackTintColor:(id)maximumTrackTintColor {
    return [UISlider sliderWithCenter:center bounds:bounds value:value minimumValue:minimumValue maximumValue:maximumValue thumbTintColor:thumbTintColor minimumTrackTintColor:minimumTrackTintColor maximumTrackTintColor:maximumTrackTintColor minimumValueImage:nil maximumValueImage:nil target:nil action:nil];
}

/**
 create slider by center and bounds + value + minimumValue + maximumValue + thumbTintColor
 + minimumTrackTintColor + maximumTrackTintColor
 
 @param thumbTintColor UIColor或者NSString或者NSNumber格式
 @param minimumTrackTintColor UIColor或者NSString或者NSNumber格式
 @param maximumTrackTintColor UIColor或者NSString或者NSNumber格式
 */
+ (UISlider *)sliderWithCenter:(CGPoint)center bounds:(CGRect)bounds value:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue thumbTintColor:(id)thumbTintColor minimumTrackTintColor:(id)minimumTrackTintColor maximumTrackTintColor:(id)maximumTrackTintColor {
    return [UISlider sliderWithCenter:center bounds:bounds value:value minimumValue:minimumValue maximumValue:maximumValue thumbTintColor:thumbTintColor minimumTrackTintColor:minimumTrackTintColor maximumTrackTintColor:maximumTrackTintColor minimumValueImage:nil maximumValueImage:nil target:nil action:nil];
}

/**
 create slider by center and bounds + value + minimumValue + maximumValue + thumbTintColor
 + minimumTrackTintColor + maximumTrackTintColor + target + action
 
 @param thumbTintColor UIColor或者NSString或者NSNumber格式
 @param minimumTrackTintColor UIColor或者NSString或者NSNumber格式
 @param maximumTrackTintColor UIColor或者NSString或者NSNumber格式
 */
- (UISlider *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds value:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue thumbTintColor:(id)thumbTintColor minimumTrackTintColor:(id)minimumTrackTintColor maximumTrackTintColor:(id)maximumTrackTintColor target:(id)target action:(SEL)action {
    return [UISlider sliderWithCenter:center bounds:bounds value:value minimumValue:minimumValue maximumValue:maximumValue thumbTintColor:thumbTintColor minimumTrackTintColor:minimumTrackTintColor maximumTrackTintColor:maximumTrackTintColor minimumValueImage:nil maximumValueImage:nil target:target action:action];
}

/**
 create slider by center and bounds + value + minimumValue + maximumValue + thumbTintColor
 + minimumTrackTintColor + maximumTrackTintColor + target + action
 
 @param thumbTintColor UIColor或者NSString或者NSNumber格式
 @param minimumTrackTintColor UIColor或者NSString或者NSNumber格式
 @param maximumTrackTintColor UIColor或者NSString或者NSNumber格式
 */
+ (UISlider *)sliderWithCenter:(CGPoint)center bounds:(CGRect)bounds value:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue thumbTintColor:(id)thumbTintColor minimumTrackTintColor:(id)minimumTrackTintColor maximumTrackTintColor:(id)maximumTrackTintColor target:(id)target action:(SEL)action {
    return [UISlider sliderWithCenter:center bounds:bounds value:value minimumValue:minimumValue maximumValue:maximumValue thumbTintColor:thumbTintColor minimumTrackTintColor:minimumTrackTintColor maximumTrackTintColor:maximumTrackTintColor minimumValueImage:nil maximumValueImage:nil target:target action:action];
}

/**
 create slider by center and bounds + value + minimumValue + maximumValue + thumbTintColor
 + minimumTrackTintColor + maximumTrackTintColor + minimumValueImage + maximumValueImage
 
 @param thumbTintColor UIColor或者NSString或者NSNumber格式
 @param minimumTrackTintColor UIColor或者NSString或者NSNumber格式
 @param maximumTrackTintColor UIColor或者NSString或者NSNumber格式
 @param minimumValueImage UIimage或者NSString格式
 @param maximumValueImage UIimage或者NSString格式
 */
- (UISlider *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds value:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue thumbTintColor:(id)thumbTintColor minimumTrackTintColor:(id)minimumTrackTintColor maximumTrackTintColor:(id)maximumTrackTintColor minimumValueImage:(id)minimumValueImage maximumValueImage:(id)maximumValueImage {
    return [UISlider sliderWithCenter:center bounds:bounds value:value minimumValue:minimumValue maximumValue:maximumValue thumbTintColor:thumbTintColor minimumTrackTintColor:minimumTrackTintColor maximumTrackTintColor:maximumTrackTintColor minimumValueImage:minimumValueImage maximumValueImage:maximumValueImage target:nil action:nil];
}

/**
 create slider by center and bounds + value + minimumValue + maximumValue + thumbTintColor
 + minimumTrackTintColor + maximumTrackTintColor + minimumValueImage + maximumValueImage
 
 @param thumbTintColor UIColor或者NSString或者NSNumber格式
 @param minimumTrackTintColor UIColor或者NSString或者NSNumber格式
 @param maximumTrackTintColor UIColor或者NSString或者NSNumber格式
 @param minimumValueImage UIimage或者NSString格式
 @param maximumValueImage UIimage或者NSString格式
 */
+ (UISlider *)sliderWithCenter:(CGPoint)center bounds:(CGRect)bounds value:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue thumbTintColor:(id)thumbTintColor minimumTrackTintColor:(id)minimumTrackTintColor maximumTrackTintColor:(id)maximumTrackTintColor minimumValueImage:(id)minimumValueImage maximumValueImage:(id)maximumValueImage {
    return [UISlider sliderWithCenter:center bounds:bounds value:value minimumValue:minimumValue maximumValue:maximumValue thumbTintColor:thumbTintColor minimumTrackTintColor:minimumTrackTintColor maximumTrackTintColor:maximumTrackTintColor minimumValueImage:minimumValueImage maximumValueImage:maximumValueImage target:nil action:nil];
}

/**
 create slider by center and bounds + value + minimumValue + maximumValue + thumbTintColor
 + minimumTrackTintColor + maximumTrackTintColor + minimumValueImage + maximumValueImage
 + target + action
 
 @param thumbTintColor UIColor或者NSString或者NSNumber格式
 @param minimumTrackTintColor UIColor或者NSString或者NSNumber格式
 @param maximumTrackTintColor UIColor或者NSString或者NSNumber格式
 @param minimumValueImage UIimage或者NSString格式
 @param maximumValueImage UIimage或者NSString格式
 */
- (UISlider *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds value:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue thumbTintColor:(id)thumbTintColor minimumTrackTintColor:(id)minimumTrackTintColor maximumTrackTintColor:(id)maximumTrackTintColor minimumValueImage:(id)minimumValueImage maximumValueImage:(id)maximumValueImage target:(id)target action:(SEL)action {
    return [UISlider sliderWithCenter:center bounds:bounds value:value minimumValue:minimumValue maximumValue:maximumValue thumbTintColor:thumbTintColor minimumTrackTintColor:minimumTrackTintColor maximumTrackTintColor:maximumTrackTintColor minimumValueImage:minimumValueImage maximumValueImage:maximumValueImage target:target action:action];
}

/**
 create slider by center and bounds + value + minimumValue + maximumValue + thumbTintColor
 + minimumTrackTintColor + maximumTrackTintColor + minimumValueImage + maximumValueImage
 + target + action
 
 @param thumbTintColor UIColor或者NSString或者NSNumber格式
 @param minimumTrackTintColor UIColor或者NSString或者NSNumber格式
 @param maximumTrackTintColor UIColor或者NSString或者NSNumber格式
 @param minimumValueImage UIimage或者NSString格式
 @param maximumValueImage UIimage或者NSString格式
 */
+ (UISlider *)sliderWithCenter:(CGPoint)center bounds:(CGRect)bounds value:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue thumbTintColor:(nullable id)thumbTintColor minimumTrackTintColor:(nullable id)minimumTrackTintColor maximumTrackTintColor:(nullable id)maximumTrackTintColor minimumValueImage:(nullable id)minimumValueImage maximumValueImage:(nullable id)maximumValueImage target:(nullable id)target action:(nullable SEL)action {
    UISlider   *slider = [UISlider sliderWithValue:value minimumValue:minimumValue maximumValue:maximumValue thumbTintColor:thumbTintColor minimumTrackTintColor:minimumTrackTintColor maximumTrackTintColor:maximumTrackTintColor minimumValueImage:minimumValueImage maximumValueImage:maximumValueImage target:target action:action];
    slider.center = center;
    CGRect  new_bounds = bounds;
    if (bounds.size.height < 30) {
        //设置slider高度不能小于默认滑块的高度，否则灵敏度很低
        new_bounds = CGRectMake(bounds.origin.x, bounds.origin.y, bounds.size.width, 30);
    }
    slider.bounds = new_bounds;
    return slider;
}


@end
