//
//  UISlider+Fragrans.h
//  Fragrans
//
//  Created by qmz on 2019/3/13.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UISlider (Fragrans)

/**
 create slider by value
 
 */
- (UISlider *)initWithValue:(CGFloat)value;

/**
 create slider by value
 
 */
+ (UISlider *)sliderWithValue:(CGFloat)value;

/**
 create slider by target + action
 
 */
- (UISlider *)initWithTarget:(id)target action:(SEL)action;

/**
 create slider by target + action
 
 */
+ (UISlider *)sliderWithTarget:(id)target action:(SEL)action;

/**
 create slider by value + target + action
 
 */
- (UISlider *)initWithValue:(CGFloat)value target:(id)target action:(SEL)action;

/**
 create slider by value + target + action
 
 */
+ (UISlider *)sliderWithValue:(CGFloat)value target:(id)target action:(SEL)action;

/**
 create slider by value + minimumValue + maximumValue
 
 */
- (UISlider *)initWithValue:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue;

/**
 create slider by value + minimumValue + maximumValue
 
 */
+ (UISlider *)sliderWithValue:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue;

/**
 create slider by value + minimumValue + maximumValue + target + action
 
 */
- (UISlider *)initWithValue:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue target:(id)target action:(SEL)action;

/**
 create slider by value + minimumValue + maximumValue + target + action
 
 */
+ (UISlider *)sliderWithValue:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue target:(id)target action:(SEL)action;

/**
 create slider by value + minimumValue + maximumValue + thumbTintColor
 
 @param thumbTintColor  UIColor或者NSString或者NSNumber格式
 */
- (UISlider *)initWithValue:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue thumbTintColor:(id)thumbTintColor;

/**
 create slider by value + minimumValue + maximumValue + thumbTintColor
 
 @param thumbTintColor UIColor或者NSString或者NSNumber格式
 */
+ (UISlider *)sliderWithValue:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue thumbTintColor:(id)thumbTintColor;

/**
 create slider by value + minimumValue + maximumValue + thumbTintColor + target + action
 
 @param thumbTintColor UIColor或者NSString或者NSNumber格式
 */
- (UISlider *)initWithValue:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue thumbTintColor:(id)thumbTintColor target:(id)target action:(SEL)action;

/**
 create slider by value + minimumValue + maximumValue + thumbTintColor + target + action
 
 @param thumbTintColor UIColor或者NSString或者NSNumber格式
 */
+ (UISlider *)sliderWithValue:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue thumbTintColor:(id)thumbTintColor target:(id)target action:(SEL)action;

/**
 create slider by value + minimumValue + maximumValue + thumbTintColor + minimumTrackTintColor
 + maximumTrackTintColor
 
 @param thumbTintColor UIColor或者NSString或者NSNumber格式
 @param minimumTrackTintColor UIColor或者NSString或者NSNumber格式
 @param maximumTrackTintColor UIColor或者NSString或者NSNumber格式
 */
- (UISlider *)initWithValue:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue thumbTintColor:(id)thumbTintColor minimumTrackTintColor:(id)minimumTrackTintColor maximumTrackTintColor:(id)maximumTrackTintColor;

/**
 create slider by value + minimumValue + maximumValue + thumbTintColor + minimumTrackTintColor
 + maximumTrackTintColor
 
 @param thumbTintColor UIColor或者NSString或者NSNumber格式
 @param minimumTrackTintColor UIColor或者NSString或者NSNumber格式
 @param maximumTrackTintColor UIColor或者NSString或者NSNumber格式
 */
+ (UISlider *)sliderWithValue:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue thumbTintColor:(id)thumbTintColor minimumTrackTintColor:(id)minimumTrackTintColor maximumTrackTintColor:(id)maximumTrackTintColor;

/**
 create slider by value + minimumValue + maximumValue + thumbTintColor + minimumTrackTintColor
 + maximumTrackTintColor + target + action

 @param thumbTintColor UIColor或者NSString或者NSNumber格式
 @param minimumTrackTintColor UIColor或者NSString或者NSNumber格式
 @param maximumTrackTintColor UIColor或者NSString或者NSNumber格式
 */
- (UISlider *)initWithValue:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue thumbTintColor:(id)thumbTintColor minimumTrackTintColor:(id)minimumTrackTintColor maximumTrackTintColor:(id)maximumTrackTintColor target:(id)target action:(SEL)action;

/**
 create slider by value + minimumValue + maximumValue + thumbTintColor + minimumTrackTintColor
 + maximumTrackTintColor + target + action
 
 @param thumbTintColor UIColor或者NSString或者NSNumber格式
 @param minimumTrackTintColor UIColor或者NSString或者NSNumber格式
 @param maximumTrackTintColor UIColor或者NSString或者NSNumber格式
 */
+ (UISlider *)sliderWithValue:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue thumbTintColor:(id)thumbTintColor minimumTrackTintColor:(id)minimumTrackTintColor maximumTrackTintColor:(id)maximumTrackTintColor target:(id)target action:(SEL)action;

/**
 create slider by value + minimumValue + maximumValue + thumbTintColor + minimumTrackTintColor
 + maximumTrackTintColor + minimumValueImage + maximumValueImage
 
 @param thumbTintColor UIColor或者NSString或者NSNumber格式
 @param minimumTrackTintColor UIColor或者NSString或者NSNumber格式
 @param maximumTrackTintColor UIColor或者NSString或者NSNumber格式
 @param minimumValueImage UIimage或者NSString格式
 @param maximumValueImage UIimage或者NSString格式
 */
- (UISlider *)initWithValue:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue thumbTintColor:(id)thumbTintColor minimumTrackTintColor:(id)minimumTrackTintColor maximumTrackTintColor:(id)maximumTrackTintColor minimumValueImage:(id)minimumValueImage maximumValueImage:(id)maximumValueImage;

/**
 create slider by value + minimumValue + maximumValue + thumbTintColor + minimumTrackTintColor
 + maximumTrackTintColor + minimumValueImage + maximumValueImage
 
 @param thumbTintColor UIColor或者NSString或者NSNumber格式
 @param minimumTrackTintColor UIColor或者NSString或者NSNumber格式
 @param maximumTrackTintColor UIColor或者NSString或者NSNumber格式
 @param minimumValueImage UIimage或者NSString格式
 @param maximumValueImage UIimage或者NSString格式
 */
+ (UISlider *)sliderWithValue:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue thumbTintColor:(id)thumbTintColor minimumTrackTintColor:(id)minimumTrackTintColor maximumTrackTintColor:(id)maximumTrackTintColor minimumValueImage:(id)minimumValueImage maximumValueImage:(id)maximumValueImage;

/**
 create slider by value + minimumValue + maximumValue + thumbTintColor + minimumTrackTintColor
 + maximumTrackTintColor + minimumValueImage + maximumValueImage + target + action
 
 @param thumbTintColor UIColor或者NSString或者NSNumber格式
 @param minimumTrackTintColor UIColor或者NSString或者NSNumber格式
 @param maximumTrackTintColor UIColor或者NSString或者NSNumber格式
 @param minimumValueImage UIimage或者NSString格式
 @param maximumValueImage UIimage或者NSString格式
 */
- (UISlider *)initWithValue:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue thumbTintColor:(id)thumbTintColor minimumTrackTintColor:(id)minimumTrackTintColor maximumTrackTintColor:(id)maximumTrackTintColor minimumValueImage:(id)minimumValueImage maximumValueImage:(id)maximumValueImage target:(id)target action:(SEL)action;

/**
 create slider by value + minimumValue + maximumValue + thumbTintColor + minimumTrackTintColor
 + maximumTrackTintColor + minimumValueImage + maximumValueImage + target + action
 
 @param thumbTintColor UIColor或者NSString或者NSNumber格式
 @param minimumTrackTintColor UIColor或者NSString或者NSNumber格式
 @param maximumTrackTintColor UIColor或者NSString或者NSNumber格式
 @param minimumValueImage UIimage或者NSString格式
 @param maximumValueImage UIimage或者NSString格式
 */
+ (UISlider *)sliderWithValue:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue thumbTintColor:(nullable id)thumbTintColor minimumTrackTintColor:(nullable id)minimumTrackTintColor maximumTrackTintColor:(nullable id)maximumTrackTintColor minimumValueImage:(nullable id)minimumValueImage maximumValueImage:(nullable id)maximumValueImage target:(nullable id)target action:(nullable SEL)action;

/**
 create slider by frame + value
 
 */
- (UISlider *)initWithFrame:(CGRect)frame value:(CGFloat)value;

/**
 create slider by frame + value
 
 */
+ (UISlider *)sliderWithFrame:(CGRect)frame value:(CGFloat)value;

/**
 create slider by frame + target + action
 
 */
- (UISlider *)initWithFrame:(CGRect)frame target:(id)target action:(SEL)action;

/**
 create slider by frame + target + action
 
 */
+ (UISlider *)sliderWithFrame:(CGRect)frame target:(id)target action:(SEL)action;

/**
 create slider by frame + value + target + action
 
 */
- (UISlider *)initWithFrame:(CGRect)frame value:(CGFloat)value target:(id)target action:(SEL)action;

/**
 create slider by frame + value + target + action
 
 */
+ (UISlider *)sliderWithFrame:(CGRect)frame value:(CGFloat)value target:(id)target action:(SEL)action;

/**
 create slider by frame + value + minimumValue + maximumValue
 
 */
- (UISlider *)initWithFrame:(CGRect)frame value:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue;

/**
 create slider by frame + value + minimumValue + maximumValue
 
 */
+ (UISlider *)sliderWithFrame:(CGRect)frame value:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue;

/**
 create slider by frame + value + minimumValue + maximumValue + target + action
 
 */
- (UISlider *)initWithFrame:(CGRect)frame value:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue target:(id)target action:(SEL)action;

/**
 create slider by frame + value + minimumValue + maximumValue + target + action
 
 */
+ (UISlider *)sliderWithFrame:(CGRect)frame value:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue target:(id)target action:(SEL)action;

/**
 create slider by frame + value + minimumValue + maximumValue + thumbTintColor
 
 @param thumbTintColor  UIColor或者NSString或者NSNumber格式
 */
- (UISlider *)initWithFrame:(CGRect)frame value:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue thumbTintColor:(id)thumbTintColor;

/**
 create slider by frame + value + minimumValue + maximumValue + thumbTintColor
 
 @param thumbTintColor UIColor或者NSString或者NSNumber格式
 */
+ (UISlider *)sliderWithFrame:(CGRect)frame value:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue thumbTintColor:(id)thumbTintColor;

/**
 create slider by frame + value + minimumValue + maximumValue + thumbTintColor + target + action
 
 @param thumbTintColor UIColor或者NSString或者NSNumber格式
 */
- (UISlider *)initWithFrame:(CGRect)frame value:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue thumbTintColor:(id)thumbTintColor target:(id)target action:(SEL)action;

/**
 create slider by frame + value + minimumValue + maximumValue + thumbTintColor + target + action
 
 @param thumbTintColor UIColor或者NSString或者NSNumber格式
 */
+ (UISlider *)sliderWithFrame:(CGRect)frame value:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue thumbTintColor:(id)thumbTintColor target:(id)target action:(SEL)action;

/**
 create slider by frame + value + minimumValue + maximumValue + thumbTintColor + minimumTrackTintColor
 + maximumTrackTintColor
 
 @param thumbTintColor UIColor或者NSString或者NSNumber格式
 @param minimumTrackTintColor UIColor或者NSString或者NSNumber格式
 @param maximumTrackTintColor UIColor或者NSString或者NSNumber格式
 */
- (UISlider *)initWithFrame:(CGRect)frame value:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue thumbTintColor:(id)thumbTintColor minimumTrackTintColor:(id)minimumTrackTintColor maximumTrackTintColor:(id)maximumTrackTintColor;

/**
 create slider by frame + value + minimumValue + maximumValue + thumbTintColor + minimumTrackTintColor
 + maximumTrackTintColor
 
 @param thumbTintColor UIColor或者NSString或者NSNumber格式
 @param minimumTrackTintColor UIColor或者NSString或者NSNumber格式
 @param maximumTrackTintColor UIColor或者NSString或者NSNumber格式
 */
+ (UISlider *)sliderWithFrame:(CGRect)frame value:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue thumbTintColor:(id)thumbTintColor minimumTrackTintColor:(id)minimumTrackTintColor maximumTrackTintColor:(id)maximumTrackTintColor;

/**
 create slider by frame + value + minimumValue + maximumValue + thumbTintColor + minimumTrackTintColor
 + maximumTrackTintColor + target + action
 
 @param thumbTintColor UIColor或者NSString或者NSNumber格式
 @param minimumTrackTintColor UIColor或者NSString或者NSNumber格式
 @param maximumTrackTintColor UIColor或者NSString或者NSNumber格式
 */
- (UISlider *)initWithFrame:(CGRect)frame value:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue thumbTintColor:(id)thumbTintColor minimumTrackTintColor:(id)minimumTrackTintColor maximumTrackTintColor:(id)maximumTrackTintColor target:(id)target action:(SEL)action;

/**
 create slider by frame + value + minimumValue + maximumValue + thumbTintColor + minimumTrackTintColor
 + maximumTrackTintColor + target + action
 
 @param thumbTintColor UIColor或者NSString或者NSNumber格式
 @param minimumTrackTintColor UIColor或者NSString或者NSNumber格式
 @param maximumTrackTintColor UIColor或者NSString或者NSNumber格式
 */
+ (UISlider *)sliderWithFrame:(CGRect)frame value:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue thumbTintColor:(id)thumbTintColor minimumTrackTintColor:(id)minimumTrackTintColor maximumTrackTintColor:(id)maximumTrackTintColor target:(id)target action:(SEL)action;

/**
 create slider by frame + value + minimumValue + maximumValue + thumbTintColor + minimumTrackTintColor
 + maximumTrackTintColor + minimumValueImage + maximumValueImage
 
 @param thumbTintColor UIColor或者NSString或者NSNumber格式
 @param minimumTrackTintColor UIColor或者NSString或者NSNumber格式
 @param maximumTrackTintColor UIColor或者NSString或者NSNumber格式
 @param minimumValueImage UIimage或者NSString格式
 @param maximumValueImage UIimage或者NSString格式
 */
- (UISlider *)initWithFrame:(CGRect)frame value:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue thumbTintColor:(id)thumbTintColor minimumTrackTintColor:(id)minimumTrackTintColor maximumTrackTintColor:(id)maximumTrackTintColor minimumValueImage:(id)minimumValueImage maximumValueImage:(id)maximumValueImage;

/**
 create slider by frame + value + minimumValue + maximumValue + thumbTintColor + minimumTrackTintColor
 + maximumTrackTintColor + minimumValueImage + maximumValueImage
 
 @param thumbTintColor UIColor或者NSString或者NSNumber格式
 @param minimumTrackTintColor UIColor或者NSString或者NSNumber格式
 @param maximumTrackTintColor UIColor或者NSString或者NSNumber格式
 @param minimumValueImage UIimage或者NSString格式
 @param maximumValueImage UIimage或者NSString格式
 */
+ (UISlider *)sliderWithFrame:(CGRect)frame value:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue thumbTintColor:(id)thumbTintColor minimumTrackTintColor:(id)minimumTrackTintColor maximumTrackTintColor:(id)maximumTrackTintColor minimumValueImage:(id)minimumValueImage maximumValueImage:(id)maximumValueImage;

/**
 create slider by frame + value + minimumValue + maximumValue + thumbTintColor + minimumTrackTintColor
 + maximumTrackTintColor + minimumValueImage + maximumValueImage + target + action
 
 @param thumbTintColor UIColor或者NSString或者NSNumber格式
 @param minimumTrackTintColor UIColor或者NSString或者NSNumber格式
 @param maximumTrackTintColor UIColor或者NSString或者NSNumber格式
 @param minimumValueImage UIimage或者NSString格式
 @param maximumValueImage UIimage或者NSString格式
 */
- (UISlider *)initWithFrame:(CGRect)frame value:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue thumbTintColor:(id)thumbTintColor minimumTrackTintColor:(id)minimumTrackTintColor maximumTrackTintColor:(id)maximumTrackTintColor minimumValueImage:(id)minimumValueImage maximumValueImage:(id)maximumValueImage target:(id)target action:(SEL)action;

/**
 create slider by frame + value + minimumValue + maximumValue + thumbTintColor + minimumTrackTintColor
 + maximumTrackTintColor + minimumValueImage + maximumValueImage + target + action
 
 @param thumbTintColor UIColor或者NSString或者NSNumber格式
 @param minimumTrackTintColor UIColor或者NSString或者NSNumber格式
 @param maximumTrackTintColor UIColor或者NSString或者NSNumber格式
 @param minimumValueImage UIimage或者NSString格式
 @param maximumValueImage UIimage或者NSString格式
 */
+ (UISlider *)sliderWithFrame:(CGRect)frame value:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue thumbTintColor:(nullable id)thumbTintColor minimumTrackTintColor:(nullable id)minimumTrackTintColor maximumTrackTintColor:(nullable id)maximumTrackTintColor minimumValueImage:(nullable id)minimumValueImage maximumValueImage:(nullable id)maximumValueImage target:(nullable id)target action:(nullable SEL)action;

/**
 create slider by center and bounds + value
 
 */
- (UISlider *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds value:(CGFloat)value;

/**
 create slider by center and bounds + value
 
 */
+ (UISlider *)sliderWithCenter:(CGPoint)center bounds:(CGRect)bounds value:(CGFloat)value;

/**
 create slider by center and bounds + target + action
 
 */
- (UISlider *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds target:(id)target action:(SEL)action;

/**
 create slider by center and bounds + target + action
 
 */
+ (UISlider *)sliderWithCenter:(CGPoint)center bounds:(CGRect)bounds target:(id)target action:(SEL)action;

/**
 create slider by center and bounds + value + target + action
 
 */
- (UISlider *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds value:(CGFloat)value target:(id)target action:(SEL)action;

/**
 create slider by center and bounds + value + target + action
 
 */
+ (UISlider *)sliderWithCenter:(CGPoint)center bounds:(CGRect)bounds value:(CGFloat)value target:(id)target action:(SEL)action;

/**
 create slider by center and bounds + value + minimumValue + maximumValue
 
 */
- (UISlider *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds value:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue;

/**
 create slider by center and bounds + value + minimumValue + maximumValue
 
 */
+ (UISlider *)sliderWithCenter:(CGPoint)center bounds:(CGRect)bounds value:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue;

/**
 create slider by center and bounds + value + minimumValue + maximumValue + target + action
 
 */
- (UISlider *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds value:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue target:(id)target action:(SEL)action;

/**
 create slider by center and bounds + value + minimumValue + maximumValue + target + action
 
 */
+ (UISlider *)sliderWithCenter:(CGPoint)center bounds:(CGRect)bounds value:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue target:(id)target action:(SEL)action;

/**
 create slider by center and bounds + value + minimumValue + maximumValue + thumbTintColor
 
 @param thumbTintColor  UIColor或者NSString或者NSNumber格式
 */
- (UISlider *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds value:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue thumbTintColor:(id)thumbTintColor;

/**
 create slider by center and bounds + value + minimumValue + maximumValue + thumbTintColor
 
 @param thumbTintColor UIColor或者NSString或者NSNumber格式
 */
+ (UISlider *)sliderWithCenter:(CGPoint)center bounds:(CGRect)bounds value:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue thumbTintColor:(id)thumbTintColor;

/**
 create slider by center and bounds + value + minimumValue + maximumValue + thumbTintColor + target + action
 
 @param thumbTintColor UIColor或者NSString或者NSNumber格式
 */
- (UISlider *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds value:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue thumbTintColor:(id)thumbTintColor target:(id)target action:(SEL)action;

/**
 create slider by center and bounds + value + minimumValue + maximumValue + thumbTintColor + target + action
 
 @param thumbTintColor UIColor或者NSString或者NSNumber格式
 */
+ (UISlider *)sliderWithCenter:(CGPoint)center bounds:(CGRect)bounds value:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue thumbTintColor:(id)thumbTintColor target:(id)target action:(SEL)action;

/**
 create slider by center and bounds + value + minimumValue + maximumValue + thumbTintColor + minimumTrackTintColor
 + maximumTrackTintColor
 
 @param thumbTintColor UIColor或者NSString或者NSNumber格式
 @param minimumTrackTintColor UIColor或者NSString或者NSNumber格式
 @param maximumTrackTintColor UIColor或者NSString或者NSNumber格式
 */
- (UISlider *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds value:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue thumbTintColor:(id)thumbTintColor minimumTrackTintColor:(id)minimumTrackTintColor maximumTrackTintColor:(id)maximumTrackTintColor;

/**
 create slider by center and bounds + value + minimumValue + maximumValue + thumbTintColor + minimumTrackTintColor
 + maximumTrackTintColor
 
 @param thumbTintColor UIColor或者NSString或者NSNumber格式
 @param minimumTrackTintColor UIColor或者NSString或者NSNumber格式
 @param maximumTrackTintColor UIColor或者NSString或者NSNumber格式
 */
+ (UISlider *)sliderWithCenter:(CGPoint)center bounds:(CGRect)bounds value:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue thumbTintColor:(id)thumbTintColor minimumTrackTintColor:(id)minimumTrackTintColor maximumTrackTintColor:(id)maximumTrackTintColor;

/**
 create slider by center and bounds + value + minimumValue + maximumValue + thumbTintColor + minimumTrackTintColor
 + maximumTrackTintColor + target + action
 
 @param thumbTintColor UIColor或者NSString或者NSNumber格式
 @param minimumTrackTintColor UIColor或者NSString或者NSNumber格式
 @param maximumTrackTintColor UIColor或者NSString或者NSNumber格式
 */
- (UISlider *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds value:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue thumbTintColor:(id)thumbTintColor minimumTrackTintColor:(id)minimumTrackTintColor maximumTrackTintColor:(id)maximumTrackTintColor target:(id)target action:(SEL)action;

/**
 create slider by center and bounds + value + minimumValue + maximumValue + thumbTintColor + minimumTrackTintColor
 + maximumTrackTintColor + target + action
 
 @param thumbTintColor UIColor或者NSString或者NSNumber格式
 @param minimumTrackTintColor UIColor或者NSString或者NSNumber格式
 @param maximumTrackTintColor UIColor或者NSString或者NSNumber格式
 */
+ (UISlider *)sliderWithCenter:(CGPoint)center bounds:(CGRect)bounds value:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue thumbTintColor:(id)thumbTintColor minimumTrackTintColor:(id)minimumTrackTintColor maximumTrackTintColor:(id)maximumTrackTintColor target:(id)target action:(SEL)action;

/**
 create slider by center and bounds + value + minimumValue + maximumValue + thumbTintColor + minimumTrackTintColor
 + maximumTrackTintColor + minimumValueImage + maximumValueImage
 
 @param thumbTintColor UIColor或者NSString或者NSNumber格式
 @param minimumTrackTintColor UIColor或者NSString或者NSNumber格式
 @param maximumTrackTintColor UIColor或者NSString或者NSNumber格式
 @param minimumValueImage UIimage或者NSString格式
 @param maximumValueImage UIimage或者NSString格式
 */
- (UISlider *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds value:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue thumbTintColor:(id)thumbTintColor minimumTrackTintColor:(id)minimumTrackTintColor maximumTrackTintColor:(id)maximumTrackTintColor minimumValueImage:(id)minimumValueImage maximumValueImage:(id)maximumValueImage;

/**
 create slider by center and bounds + value + minimumValue + maximumValue + thumbTintColor + minimumTrackTintColor
 + maximumTrackTintColor + minimumValueImage + maximumValueImage
 
 @param thumbTintColor UIColor或者NSString或者NSNumber格式
 @param minimumTrackTintColor UIColor或者NSString或者NSNumber格式
 @param maximumTrackTintColor UIColor或者NSString或者NSNumber格式
 @param minimumValueImage UIimage或者NSString格式
 @param maximumValueImage UIimage或者NSString格式
 */
+ (UISlider *)sliderWithCenter:(CGPoint)center bounds:(CGRect)bounds value:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue thumbTintColor:(id)thumbTintColor minimumTrackTintColor:(id)minimumTrackTintColor maximumTrackTintColor:(id)maximumTrackTintColor minimumValueImage:(id)minimumValueImage maximumValueImage:(id)maximumValueImage;

/**
 create slider by center and bounds + value + minimumValue + maximumValue + thumbTintColor + minimumTrackTintColor
 + maximumTrackTintColor + minimumValueImage + maximumValueImage + target + action
 
 @param thumbTintColor UIColor或者NSString或者NSNumber格式
 @param minimumTrackTintColor UIColor或者NSString或者NSNumber格式
 @param maximumTrackTintColor UIColor或者NSString或者NSNumber格式
 @param minimumValueImage UIimage或者NSString格式
 @param maximumValueImage UIimage或者NSString格式
 */
- (UISlider *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds value:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue thumbTintColor:(id)thumbTintColor minimumTrackTintColor:(id)minimumTrackTintColor maximumTrackTintColor:(id)maximumTrackTintColor minimumValueImage:(id)minimumValueImage maximumValueImage:(id)maximumValueImage target:(id)target action:(SEL)action;

/**
 create slider by center and bounds + value + minimumValue + maximumValue + thumbTintColor + minimumTrackTintColor
 + maximumTrackTintColor + minimumValueImage + maximumValueImage + target + action
 
 @param thumbTintColor UIColor或者NSString或者NSNumber格式
 @param minimumTrackTintColor UIColor或者NSString或者NSNumber格式
 @param maximumTrackTintColor UIColor或者NSString或者NSNumber格式
 @param minimumValueImage UIimage或者NSString格式
 @param maximumValueImage UIimage或者NSString格式
 */
+ (UISlider *)sliderWithCenter:(CGPoint)center bounds:(CGRect)bounds value:(CGFloat)value minimumValue:(CGFloat)minimumValue maximumValue:(CGFloat)maximumValue thumbTintColor:(nullable id)thumbTintColor minimumTrackTintColor:(nullable id)minimumTrackTintColor maximumTrackTintColor:(nullable id)maximumTrackTintColor minimumValueImage:(nullable id)minimumValueImage maximumValueImage:(nullable id)maximumValueImage target:(nullable id)target action:(nullable SEL)action;





@end

NS_ASSUME_NONNULL_END
