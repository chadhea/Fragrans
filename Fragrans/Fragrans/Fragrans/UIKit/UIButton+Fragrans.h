//
//  UIButton+Fragrans.h
//  Fragrans
//
//  Created by qmz on 2019/1/31.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

static NSString   *const FRG_ButtonBaseFontSize = @"17";
static NSString   *const FRG_ButtonBaseColorHex = @"3";

typedef NS_ENUM(NSUInteger, FRGButtonEdgeInsetsStyle) {
    FRGButtonEdgeInsetsStyleTop, // image在上，label在下
    FRGButtonEdgeInsetsStyleLeft, // image在左，label在右
    FRGButtonEdgeInsetsStyleBottom, // image在下，label在上
    FRGButtonEdgeInsetsStyleRight, // image在右，label在左
    FRGButtonEdgeInsetsStyleCenter, // image居中在下，label居中在上
};

@interface UIButton (Fragrans)

/**
 create button by target + action
 */
- (UIButton *)initWithTarget:(id)target action:(SEL)action;

/**
 create button by target + action
 */
+ (UIButton *)buttonWithTarget:(id)target action:(SEL)action;

/**
 create button by backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithBackgroundColor:(id)backgroundColor;

/**
 create button by backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)initWithBackgroundColor:(id)backgroundColor;

/**
 create button by backgroundColor + target +action
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithBackgroundColor:(id)backgroundColor target:(id)target action:(SEL)action;

/**
 create button by backgroundColor + target +action
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)initWithBackgroundColor:(id)backgroundColor target:(id)target action:(SEL)action;

/**
 create button by image
 
 @param image UIImage或者NSString格式
 */
- (UIButton *)initWithImage:(id)image;

/**
 create button by image
 
 @param image UIImage或者NSString格式
 */
+ (UIButton *)buttonWithImage:(id)image;

/**
 create button by normalImage + selectImage
 
 @param normalImage UIImage或者NSString格式
 @param selectImage UIImage或者NSString格式
 */
- (UIButton *)initWithNormalImage:(id)normalImage selectImage:(id)selectImage;

/**
 create button by normalImage + selectImage
 
 @param normalImage UIImage或者NSString格式
 @param selectImage UIImage或者NSString格式
 */
+ (UIButton *)buttonWithNormalImage:(id)normalImage selectImage:(id)selectImage;

/**
 create button by normalImage + highlightedImage
 
 @param normalImage UIImage或者NSString格式
 @param highlightedImage UIImage或者NSString格式
 */
- (UIButton *)initWithNormalImage:(id)normalImage highlightedImage:(id)highlightedImage;

/**
 create button by normalImage + highlightedImage
 
 @param normalImage UIImage或者NSString格式
 @param highlightedImage UIImage或者NSString格式
 */
+ (UIButton *)buttonWithNormalImage:(id)normalImage highlightedImage:(id)highlightedImage;

/**
 create button by image + target + action
 
 @param image UIImage或者NSString格式
 */
- (UIButton *)initWithImage:(id)image target:(id)target action:(SEL)action;

/**
 create button by image + target + action
 
 @param image UIImage或者NSString格式
 */
+ (UIButton *)buttonWithImage:(id)image target:(nullable id)target action:(nullable SEL)action;

/**
 create button by normalImage + selectImage + target + action
 
 @param normalImage UIImage或者NSString格式
 @param selectImage UIImage或者NSString格式
 */
- (UIButton *)initWithNormalImage:(id)normalImage selectImage:(id)selectImage target:(id)target action:(SEL)action;

/**
 create button by normalImage + selectImage + target + action
 
 @param normalImage UIImage或者NSString格式
 @param selectImage UIImage或者NSString格式
 */
+ (UIButton *)buttonWithNormalImage:(id)normalImage selectImage:(id)selectImage target:(nullable id)target action:(nullable SEL)action;

/**
 create button by normalImage + highlightedImage + target + action
 
 @param normalImage UIImage或者NSString格式
 @param highlightedImage UIImage或者NSString格式
 */
- (UIButton *)initWithNormalImage:(id)normalImage highlightedImage:(id)highlightedImage target:(id)target action:(SEL)action;

/**
 create button by normalImage + highlightedImage + target + action
 
 @param normalImage UIImage或者NSString格式
 @param highlightedImage UIImage或者NSString格式
 */
+ (UIButton *)buttonWithNormalImage:(id)normalImage highlightedImage:(id)highlightedImage target:(nullable id)target action:(nullable SEL)action;

/**
 create button by backgroundImage
 
 @param backgroundImage UIImage或者NSString格式
 */
- (UIButton *)initWithBackgroundImage:(id)backgroundImage;

/**
 create button by backgroundImage
 
 @param backgroundImage UIImage或者NSString格式
 */
+ (UIButton *)buttonWithBackgroundImage:(id)backgroundImage;

/**
 create button by normalImage + selectImage
 
 @param normalImage UIImage或者NSString格式
 @param selectImage UIImage或者NSString格式
 */
- (UIButton *)initWithNormalBackgroundImage:(id)normalImage selectBackgroundImage:(id)selectImage;

/**
 create button by normalImage + selectImage
 
 @param normalImage UIImage或者NSString格式
 @param selectImage UIImage或者NSString格式
 */
+ (UIButton *)buttonWithNormalBackgroundImage:(id)normalImage selectBackgroundImage:(id)selectImage;

/**
 create button by normalImage + highlightedImage
 
 @param normalImage UIImage或者NSString格式
 @param highlightedImage UIImage或者NSString格式
 */
- (UIButton *)initWithNormalBackgroundImage:(id)normalImage highlightedBackgroundImage:(id)highlightedImage;

/**
 create button by normalImage + highlightedImage
 
 @param normalImage UIImage或者NSString格式
 @param highlightedImage UIImage或者NSString格式
 */
+ (UIButton *)buttonWithNormalBackgroundImage:(id)normalImage highlightedBackgroundImage:(id)highlightedImage;

/**
 create button by backgroundImage + target + action
 
 @param backgroundImage UIImage或者NSString格式
 */
- (UIButton *)initWithBackgroundImage:(id)backgroundImage target:(id)target action:(SEL)action;

/**
 create button by backgroundImage + target + action
 
 @param backgroundImage UIImage或者NSString格式
 */
+ (UIButton *)buttonWithBackgroundImage:(id)backgroundImage target:(nullable id)target action:(nullable SEL)action;

/**
 create button by normalImage + selectImage + target + action
 
 @param normalImage UIImage或者NSString格式
 @param selectImage UIImage或者NSString格式
 */
- (UIButton *)initWithNormalBackgroundImage:(id)normalImage selectBackgroundImage:(id)selectImage target:(id)target action:(SEL)action;

/**
 create button by normalImage + selectImage + target + action
 
 @param normalImage UIImage或者NSString格式
 @param selectImage UIImage或者NSString格式
 */
+ (UIButton *)buttonWithNormalBackgroundImage:(id)normalImage selectBackgroundImage:(id)selectImage target:(nullable id)target action:(nullable SEL)action;

/**
 create button by normalImage + highlightedImage + target + action
 
 @param normalImage UIImage或者NSString格式
 @param highlightedImage UIImage或者NSString格式
 */
- (UIButton *)initWithNormalBackgroundImage:(id)normalImage highlightedBackgroundImage:(id)highlightedImage target:(id)target action:(SEL)action;

/**
 create button by normalImage + highlightedImage + target + action
 
 @param normalImage UIImage或者NSString格式
 @param highlightedImage UIImage或者NSString格式
 */
+ (UIButton *)buttonWithNormalBackgroundImage:(id)normalImage highlightedBackgroundImage:(id)highlightedImage target:(nullable id)target action:(nullable SEL)action;

/**
 create button by title
 */
- (UIButton *)initWithTitle:(NSString *)title;

/**
 create button by title
 */
+ (UIButton *)buttonWithTitle:(NSString *)title;

/**
 create button by title + target + action
 */
- (UIButton *)initWithTitle:(NSString *)title target:(id)target action:(SEL)action;

/**
 create button by title + target + action
 */
+ (UIButton *)buttonWithTitle:(NSString *)title target:(id)target action:(SEL)action;

/**
 create button by title + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithTitle:(NSString *)title backgroundColor:(id)backgroundColor;

/**
 create button by title + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithTitle:(NSString *)title backgroundColor:(id)backgroundColor;

/**
 create button by title + backgroundColor + target + action
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithTitle:(NSString *)title backgroundColor:(id)backgroundColor target:(id)target action:(SEL)action;

/**
 create button by title + backgroundColor + target + action
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithTitle:(NSString *)title backgroundColor:(id)backgroundColor target:(id)target action:(SEL)action;

/**
 create button by title + font
 
 @param font UIFont或者NSString或者NSNumber格式
 */
- (UIButton *)initWithTitle:(NSString *)title font:(id)font;

/**
 create button by title + font
 
 @param font UIFont或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithTitle:(NSString *)title font:(id)font;

/**
 create button by title + font + target + action
 
 @param font UIFont或者NSString或者NSNumber格式
 */
- (UIButton *)initWithTitle:(NSString *)title font:(id)font target:(id)target action:(SEL)action;

/**
 create button by title + font + target + action
 
 @param font UIFont或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithTitle:(NSString *)title font:(id)font target:(id)target action:(SEL)action;

/**
 create button by title + font + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithTitle:(NSString *)title font:(id)font backgroundColor:(id)backgroundColor;

/**
 create button by title + font + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithTitle:(NSString *)title font:(id)font backgroundColor:(id)backgroundColor;

/**
 create button by title + font + backgroundColor + target + action
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithTitle:(NSString *)title font:(id)font backgroundColor:(id)backgroundColor target:(id)target action:(SEL)action;

/**
 create button by title + font + backgroundColor + target + action
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithTitle:(NSString *)title font:(id)font backgroundColor:(id)backgroundColor target:(id)target action:(SEL)action;

/**
 create button by title + titleColor
 
 @param titleColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithTitle:(NSString *)title titleColor:(id)titleColor;

/**
 create button by title + titleColor
 
 @param titleColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithTitle:(NSString *)title titleColor:(id)titleColor;

/**
 create button by title + titleColor + target + action
 
 @param titleColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithTitle:(NSString *)title titleColor:(id)titleColor target:(id)target action:(SEL)action;

/**
 create button by title + titleColor + target + action
 
 @param titleColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithTitle:(NSString *)title titleColor:(id)titleColor target:(id)target action:(SEL)action;

/**
 create button by title + font + titleColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param titleColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithTitle:(NSString *)title font:(id)font titleColor:(id)titleColor;

/**
 create button by title + font + titleColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param titleColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithTitle:(NSString *)title font:(id)font titleColor:(id)titleColor;

/**
 create button by title + font + titleColor + target + action
 
 @param font UIFont或者NSString或者NSNumber格式
 @param titleColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithTitle:(NSString *)title font:(id)font titleColor:(id)titleColor target:(id)target action:(SEL)action;

/**
 create button by title + font + titleColor + target + action
 
 @param font UIFont或者NSString或者NSNumber格式
 @param titleColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithTitle:(NSString *)title font:(id)font titleColor:(id)titleColor target:(id)target action:(SEL)action;

/**
 create button by title + titleColor + backgroundColor
 
 @param titleColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithTitle:(NSString *)title titleColor:(id)titleColor backgroundColor:(id)backgroundColor;

/**
 create button by title + titleColor + backgroundColor
 
 @param titleColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithTitle:(NSString *)title titleColor:(id)titleColor backgroundColor:(id)backgroundColor;

/**
 create button by title + titleColor + backgroundColor + target + action
 
 @param titleColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithTitle:(NSString *)title titleColor:(id)titleColor backgroundColor:(id)backgroundColor target:(id)target action:(SEL)action;

/**
 create button by title + titleColor + backgroundColor + target + action
 
 @param titleColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithTitle:(NSString *)title titleColor:(id)titleColor backgroundColor:(id)backgroundColor target:(id)target action:(SEL)action;

/**
 create button by title + font + titleColor + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param titleColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithTitle:(NSString *)title font:(id)font titleColor:(id)titleColor backgroundColor:(id)backgroundColor;

/**
 create button by title + font + titleColor + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param titleColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithTitle:(NSString *)title font:(id)font titleColor:(id)titleColor backgroundColor:(id)backgroundColor;

/**
 create button by title + font + titleColor + backgroundColor + target + action
 
 @param font UIFont或者NSString或者NSNumber格式
 @param titleColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithTitle:(NSString *)title font:(id)font titleColor:(id)titleColor backgroundColor:(id)backgroundColor target:(id)target action:(SEL)action;

/**
 create button by title + font + titleColor + backgroundColor + target + action
 
 @param font UIFont或者NSString或者NSNumber格式
 @param titleColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithTitle:(nullable NSString *)title font:(nullable id)font titleColor:(nullable id)titleColor backgroundColor:(nullable id)backgroundColor target:(nullable id)target action:(nullable SEL)action;

/**
 create button by title + font + titleColor + backgroundColor + horizontalAlignment + verticalAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param titleColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithTitle:(NSString *)title font:(id)font titleColor:(id)titleColor backgroundColor:(id)backgroundColor horizontalAlignment:(UIControlContentHorizontalAlignment)horizontalAlignment verticalAlignment:(UIControlContentVerticalAlignment)verticalAlignment;

/**
 create button by title + font + titleColor + backgroundColor + horizontalAlignment + verticalAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param titleColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithTitle:(NSString *)title font:(id)font titleColor:(id)titleColor backgroundColor:(id)backgroundColor horizontalAlignment:(UIControlContentHorizontalAlignment)horizontalAlignment verticalAlignment:(UIControlContentVerticalAlignment)verticalAlignment;

/**
 create button by title + font + titleColor + backgroundColor + horizontalAlignment + verticalAlignment + target + action
 
 @param font UIFont或者NSString或者NSNumber格式
 @param titleColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithTitle:(NSString *)title font:(id)font titleColor:(id)titleColor backgroundColor:(id)backgroundColor horizontalAlignment:(UIControlContentHorizontalAlignment)horizontalAlignment verticalAlignment:(UIControlContentVerticalAlignment)verticalAlignment target:(id)target action:(SEL)action;

/**
 create button by title + font + titleColor + backgroundColor + horizontalAlignment + verticalAlignment + target + action
 
 @param font UIFont或者NSString或者NSNumber格式
 @param titleColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithTitle:(NSString *)title font:(id)font titleColor:(id)titleColor backgroundColor:(id)backgroundColor horizontalAlignment:(UIControlContentHorizontalAlignment)horizontalAlignment verticalAlignment:(UIControlContentVerticalAlignment)verticalAlignment target:(nullable id)target action:(nullable SEL)action;

/**
 create button by frame + target + action
 */
- (UIButton *)initWithFrame:(CGRect)frame target:(id)target action:(SEL)action;

/**
 create button by frame + target + action
 */
+ (UIButton *)buttonWithFrame:(CGRect)frame target:(id)target action:(SEL)action;

/**
 create button by frame + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithFrame:(CGRect)frame backgroundColor:(id)backgroundColor;

/**
 create button by frame + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithFrame:(CGRect)frame backgroundColor:(id)backgroundColor;

/**
 create button by frame + backgroundColor + target + action
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithFrame:(CGRect)frame backgroundColor:(id)backgroundColor target:(id)target action:(SEL)action;

/**
 create button by frame + backgroundColor + target + action
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithFrame:(CGRect)frame backgroundColor:(id)backgroundColor target:(id)target action:(SEL)action;

/**
 create button by frame + image
 
 @param image UIImage或者NSString格式
 */
- (UIButton *)initWithFrame:(CGRect)frame image:(id)image;

/**
 create button by frame + image
 
 @param image UIImage或者NSString格式
 */
+ (UIButton *)initWithFrame:(CGRect)frame image:(id)image;

/**
 create button by frame + normalImage + selectImage
 
 @param normalImage UIImage或者NSString格式
 @param selectImage UIImage或者NSString格式
 */
- (UIButton *)initWithFrame:(CGRect)frame normalImage:(id)normalImage selectImage:(id)selectImage;

/**
 create button by frame + normalImage + selectImage
 
 @param normalImage UIImage或者NSString格式
 @param selectImage UIImage或者NSString格式
 */
+ (UIButton *)initWithFrame:(CGRect)frame normalImage:(id)normalImage selectImage:(id)selectImage;

/**
 create button by frame + normalImage + highlightedImage
 
 @param normalImage UIImage或者NSString格式
 @param highlightedImage UIImage或者NSString格式
 */
- (UIButton *)initWithFrame:(CGRect)frame normalImage:(id)normalImage highlightedImage:(id)highlightedImage;

/**
 create button by frame + normalImage + highlightedImage
 
 @param normalImage UIImage或者NSString格式
 @param highlightedImage UIImage或者NSString格式
 */
+ (UIButton *)initWithFrame:(CGRect)frame normalImage:(id)normalImage highlightedImage:(id)highlightedImage;

/**
 create button by frame + image + target + action
 
 @param image UIImage或者NSString格式
 */
- (UIButton *)initWithFrame:(CGRect)frame image:(id)image target:(id)target action:(SEL)action;

/**
 create button by frame + image + target + action
 
 @param image UIImage或者NSString格式
 */
+ (UIButton *)buttonWithFrame:(CGRect)frame image:(id)image target:(nullable id)target action:(nullable SEL)action;

/**
 create button by frame + normalImage + selectImage + target + action
 
 @param normalImage UIImage或者NSString格式
 @param selectImage UIImage或者NSString格式
 */
- (UIButton *)initWithFrame:(CGRect)frame normalImage:(id)normalImage selectImage:(id)selectImage target:(id)target action:(SEL)action;

/**
 create button by frame + normalImage + selectImage + target + action
 
 @param normalImage UIImage或者NSString格式
 @param selectImage UIImage或者NSString格式
 */
+ (UIButton *)buttonWithFrame:(CGRect)frame normalImage:(id)normalImage selectImage:(id)selectImage target:(nullable id)target action:(nullable SEL)action;

/**
 create button by frame + normalImage + highlightedImage + target + action
 
 @param normalImage UIImage或者NSString格式
 @param highlightedImage UIImage或者NSString格式
 */
- (UIButton *)initWithFrame:(CGRect)frame normalImage:(id)normalImage highlightedImage:(id)highlightedImage target:(id)target action:(SEL)action;

/**
 create button by frame + normalImage + highlightedImage + target + action
 
 @param normalImage UIImage或者NSString格式
 @param highlightedImage UIImage或者NSString格式
 */
+ (UIButton *)buttonWithFrame:(CGRect)frame normalImage:(id)normalImage highlightedImage:(id)highlightedImage target:(nullable id)target action:(nullable SEL)action;

/**
 create button by frame + backgroundImage
 
 @param backgroundImage UIImage或者NSString格式
 */
- (UIButton *)initWithFrame:(CGRect)frame backgroundImage:(id)backgroundImage;

/**
 create button by frame + backgroundImage
 
 @param backgroundImage UIImage或者NSString格式
 */
+ (UIButton *)initWithFrame:(CGRect)frame backgroundImage:(id)backgroundImage;

/**
 create button by frame + normalImage + selectImage
 
 @param normalImage UIImage或者NSString格式
 @param selectImage UIImage或者NSString格式
 */
- (UIButton *)initWithFrame:(CGRect)frame normalBackgroundImage:(id)normalImage selectBackgroundImage:(id)selectImage;

/**
 create button by frame + normalImage + selectImage
 
 @param normalImage UIImage或者NSString格式
 @param selectImage UIImage或者NSString格式
 */
+ (UIButton *)initWithFrame:(CGRect)frame normalBackgroundImage:(id)normalImage selectBackgroundImage:(id)selectImage;

/**
 create button by frame + normalImage + highlightedImage
 
 @param normalImage UIImage或者NSString格式
 @param highlightedImage UIImage或者NSString格式
 */
- (UIButton *)initWithFrame:(CGRect)frame normalBackgroundImage:(id)normalImage highlightedBackgroundImage:(id)highlightedImage;

/**
 create button by frame + normalImage + highlightedImage
 
 @param normalImage UIImage或者NSString格式
 @param highlightedImage UIImage或者NSString格式
 */
+ (UIButton *)initWithFrame:(CGRect)frame normalBackgroundImage:(id)normalImage highlightedBackgroundImage:(id)highlightedImage;

/**
 create button by frame + backgroundImage + target + action
 
 @param backgroundImage UIImage或者NSString格式
 */
- (UIButton *)initWithFrame:(CGRect)frame backgroundImage:(id)backgroundImage target:(id)target action:(SEL)action;

/**
 create button by frame + backgroundImage + target + action
 
 @param backgroundImage UIImage或者NSString格式
 */
+ (UIButton *)buttonWithFrame:(CGRect)frame backgroundImage:(id)backgroundImage target:(nullable id)target action:(nullable SEL)action;

/**
 create button by frame + normalImage + selectImage + target + action
 
 @param normalImage UIImage或者NSString格式
 @param selectImage UIImage或者NSString格式
 */
- (UIButton *)initWithFrame:(CGRect)frame normalBackgroundImage:(id)normalImage selectBackgroundImage:(id)selectImage target:(id)target action:(SEL)action;

/**
 create button by frame + normalImage + selectImage + target + action
 
 @param normalImage UIImage或者NSString格式
 @param selectImage UIImage或者NSString格式
 */
+ (UIButton *)buttonWithFrame:(CGRect)frame normalBackgroundImage:(id)normalImage selectBackgroundImage:(id)selectImage target:(nullable id)target action:(nullable SEL)action;

/**
 create button by frame + normalImage + highlightedImage + target + action
 
 @param normalImage UIImage或者NSString格式
 @param highlightedImage UIImage或者NSString格式
 */
- (UIButton *)initWithFrame:(CGRect)frame normalBackgroundImage:(id)normalImage highlightedBackgroundImage:(id)highlightedImage target:(id)target action:(SEL)action;

/**
 create button by frame + normalImage + highlightedImage + target + action
 
 @param normalImage UIImage或者NSString格式
 @param highlightedImage UIImage或者NSString格式
 */
+ (UIButton *)buttonWithFrame:(CGRect)frame normalBackgroundImage:(id)normalImage highlightedBackgroundImage:(id)highlightedImage target:(nullable id)target action:(nullable SEL)action;

/**
 create button by frame + title
 */
- (UIButton *)initWithFrame:(CGRect)frame title:(NSString *)title;

/**
 create button by frame + title
 */
+ (UIButton *)buttonWithFrame:(CGRect)frame title:(NSString *)title;

/**
 create button by frame + title + target + action
 */
- (UIButton *)initWithFrame:(CGRect)frame title:(NSString *)title target:(id)target action:(SEL)action;

/**
 create button by frame + title + target + action
 */
+ (UIButton *)buttonWithFrame:(CGRect)frame title:(NSString *)title target:(id)target action:(SEL)action;

/**
 create button by frame + title + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithFrame:(CGRect)frame title:(NSString *)title backgroundColor:(id)backgroundColor;

/**
 create button by frame + title + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithFrame:(CGRect)frame title:(NSString *)title backgroundColor:(id)backgroundColor;

/**
 create button by frame + title + backgroundColor + target + action
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithFrame:(CGRect)frame title:(NSString *)title backgroundColor:(id)backgroundColor target:(id)target action:(SEL)action;

/**
 create button by frame + title + backgroundColor + target + action
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithFrame:(CGRect)frame title:(NSString *)title backgroundColor:(id)backgroundColor target:(id)target action:(SEL)action;

/**
 create button by frame + title + font
 
 @param font UIFont或者NSString或者NSNumber格式
 */
- (UIButton *)initWithFrame:(CGRect)frame title:(NSString *)title font:(id)font;

/**
 create button by frame + title + font
 
 @param font UIFont或者NSString或者NSNumber格式
 */
+ (UIButton *)initWithFrame:(CGRect)frame title:(NSString *)title font:(id)font;

/**
 create button by frame + title + font + target + action
 
 @param font UIFont或者NSString或者NSNumber格式
 */
- (UIButton *)initWithFrame:(CGRect)frame title:(NSString *)title font:(id)font target:(id)target action:(SEL)action;

/**
 create button by frame + title + font + target + action
 
 @param font UIFont或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithFrame:(CGRect)frame title:(NSString *)title font:(id)font target:(id)target action:(SEL)action;

/**
 create button by frame + title + font + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithFrame:(CGRect)frame title:(NSString *)title font:(id)font backgroundColor:(id)backgroundColor;

/**
 create button by frame + title + font + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithFrame:(CGRect)frame title:(NSString *)title font:(id)font backgroundColor:(id)backgroundColor;

/**
 create button by frame + title + font + backgroundColor + target + action
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithFrame:(CGRect)frame title:(NSString *)title font:(id)font backgroundColor:(id)backgroundColor target:(id)target action:(SEL)action;

/**
 create button by frame + title + font + backgroundColor + target + action
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithFrame:(CGRect)frame title:(NSString *)title font:(id)font backgroundColor:(id)backgroundColor target:(id)target action:(SEL)action;

/**
 create button by frame + title + titleColor
 
 @param titleColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithFrame:(CGRect)frame title:(NSString *)title titleColor:(id)titleColor;

/**
 create button by frame + title + titleColor
 
 @param titleColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithFrame:(CGRect)frame title:(NSString *)title titleColor:(id)titleColor;

/**
 create button by frame + title + titleColor + target + action
 
 @param titleColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithFrame:(CGRect)frame title:(NSString *)title titleColor:(id)titleColor target:(id)target action:(SEL)action;

/**
 create button by frame + title + titleColor + target + action
 
 @param titleColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithFrame:(CGRect)frame title:(NSString *)title titleColor:(id)titleColor target:(id)target action:(SEL)action;

/**
 create button by frame + title + font + titleColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param titleColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithFrame:(CGRect)frame title:(NSString *)title font:(id)font titleColor:(id)titleColor;

/**
 create button by frame + title + font + titleColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param titleColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithFrame:(CGRect)frame title:(NSString *)title font:(id)font titleColor:(id)titleColor;

/**
 create button by frame + title + font + titleColor + target + action
 
 @param font UIFont或者NSString或者NSNumber格式
 @param titleColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithFrame:(CGRect)frame title:(NSString *)title font:(id)font titleColor:(id)titleColor target:(id)target action:(SEL)action;

/**
 create button by frame + title + font + titleColor + target + action
 
 @param font UIFont或者NSString或者NSNumber格式
 @param titleColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithFrame:(CGRect)frame title:(NSString *)title font:(id)font titleColor:(id)titleColor target:(id)target action:(SEL)action;

/**
 create button by frame + title + titleColor + backgroundColor
 
 @param titleColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithFrame:(CGRect)frame title:(NSString *)title titleColor:(id)titleColor backgroundColor:(id)backgroundColor;

/**
 create button by frame + title + titleColor + backgroundColor
 
 @param titleColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithFrame:(CGRect)frame title:(NSString *)title titleColor:(id)titleColor backgroundColor:(id)backgroundColor;

/**
 create button by frame + title + titleColor + backgroundColor + target + action
 
 @param titleColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithFrame:(CGRect)frame title:(NSString *)title titleColor:(id)titleColor backgroundColor:(id)backgroundColor target:(id)target action:(SEL)action;

/**
 create button by frame + title + titleColor + backgroundColor + target + action
 
 @param titleColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithFrame:(CGRect)frame title:(NSString *)title titleColor:(id)titleColor backgroundColor:(id)backgroundColor target:(id)target action:(SEL)action;

/**
 create button by frame + title + font + titleColor + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param titleColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithFrame:(CGRect)frame title:(NSString *)title font:(id)font titleColor:(id)titleColor backgroundColor:(id)backgroundColor;

/**
 create button by frame + title + font + titleColor + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param titleColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithFrame:(CGRect)frame title:(NSString *)title font:(id)font titleColor:(id)titleColor backgroundColor:(id)backgroundColor;

/**
 create button by frame + title + font + titleColor + backgroundColor + target + action
 
 @param font UIFont或者NSString或者NSNumber格式
 @param titleColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithFrame:(CGRect)frame title:(NSString *)title font:(id)font titleColor:(id)titleColor backgroundColor:(id)backgroundColor target:(id)target action:(SEL)action;

/**
 create button by frame + title + font + titleColor + backgroundColor + target + action
 
 @param font UIFont或者NSString或者NSNumber格式
 @param titleColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithFrame:(CGRect)frame title:(nullable NSString *)title font:(nullable id)font titleColor:(nullable id)titleColor backgroundColor:(nullable id)backgroundColor target:(nullable id)target action:(nullable SEL)action;

/**
 create button by frame + title + font + titleColor + backgroundColor + horizontalAlignment + verticalAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param titleColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithFrame:(CGRect)frame title:(NSString *)title font:(id)font titleColor:(id)titleColor backgroundColor:(id)backgroundColor horizontalAlignment:(UIControlContentHorizontalAlignment)horizontalAlignment verticalAlignment:(UIControlContentVerticalAlignment)verticalAlignment;

/**
 create button by frame + title + font + titleColor + backgroundColor + horizontalAlignment + verticalAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param titleColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithFrame:(CGRect)frame title:(NSString *)title font:(id)font titleColor:(id)titleColor backgroundColor:(id)backgroundColor horizontalAlignment:(UIControlContentHorizontalAlignment)horizontalAlignment verticalAlignment:(UIControlContentVerticalAlignment)verticalAlignment;

/**
 create button by frame + title + font + titleColor + backgroundColor + horizontalAlignment + verticalAlignment + target + action
 
 @param font UIFont或者NSString或者NSNumber格式
 @param titleColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithFrame:(CGRect)frame title:(NSString *)title font:(id)font titleColor:(id)titleColor backgroundColor:(id)backgroundColor horizontalAlignment:(UIControlContentHorizontalAlignment)horizontalAlignment verticalAlignment:(UIControlContentVerticalAlignment)verticalAlignment target:(id)target action:(SEL)action;

/**
 create button by frame + title + font + titleColor + backgroundColor + horizontalAlignment + verticalAlignment + target + action
 
 @param font UIFont或者NSString或者NSNumber格式
 @param titleColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithFrame:(CGRect)frame title:(NSString *)title font:(id)font titleColor:(id)titleColor backgroundColor:(id)backgroundColor horizontalAlignment:(UIControlContentHorizontalAlignment)horizontalAlignment verticalAlignment:(UIControlContentVerticalAlignment)verticalAlignment target:(nullable id)target action:(nullable SEL)action;

/**
 create button by center and bounds
 */
- (UIButton *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds;

/**
 create button by center and bounds
 */
+ (UIButton *)buttonWithCenter:(CGPoint)center bounds:(CGRect)bounds;

/**
 create button by center and bounds + target + action
 */
- (UIButton *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds target:(id)target action:(SEL)action;

/**
 create button by center and bounds + target + action
 */
+ (UIButton *)buttonWithCenter:(CGPoint)center bounds:(CGRect)bounds target:(id)target action:(SEL)action;

/**
 create button by center and bounds + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds backgroundColor:(id)backgroundColor;

/**
 create button by center and bounds + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithCenter:(CGPoint)center bounds:(CGRect)bounds backgroundColor:(id)backgroundColor;

/**
 create button by center and bounds + backgroundColor + target + action
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds backgroundColor:(id)backgroundColor target:(id)target action:(SEL)action;

/**
 create button by center and bounds + backgroundColor + target + action
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithCenter:(CGPoint)center bounds:(CGRect)bounds backgroundColor:(id)backgroundColor target:(id)target action:(SEL)action;

/**
 create button by center and bounds + image
 
 @param image UIImage或者NSString格式
 */
- (UIButton *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds image:(id)image;

/**
 create button by center and bounds + image
 
 @param image UIImage或者NSString格式
 */
+ (UIButton *)buttonWithCenter:(CGPoint)center bounds:(CGRect)bounds image:(id)image;

/**
 create button by center and bounds + normalImage + selectImage
 
 @param normalImage UIImage或者NSString格式
 @param selectImage UIImage或者NSString格式
 */
- (UIButton *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds normalImage:(id)normalImage selectImage:(id)selectImage;

/**
 create button by center and bounds + normalImage + selectImage
 
 @param normalImage UIImage或者NSString格式
 @param selectImage UIImage或者NSString格式
 */
+ (UIButton *)buttonWithCenter:(CGPoint)center bounds:(CGRect)bounds normalImage:(id)normalImage selectImage:(id)selectImage;

/**
 create button by center and bounds + normalImage + highlightedImage
 
 @param normalImage UIImage或者NSString格式
 @param highlightedImage UIImage或者NSString格式
 */
- (UIButton *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds normalImage:(id)normalImage highlightedImage:(id)highlightedImage;

/**
 create button by center and bounds + normalImage + highlightedImage
 
 @param normalImage UIImage或者NSString格式
 @param highlightedImage UIImage或者NSString格式
 */
+ (UIButton *)buttonWithCenter:(CGPoint)center bounds:(CGRect)bounds normalImage:(id)normalImage highlightedImage:(id)highlightedImage;

/**
 create button by center and bounds + image + target + action
 
 @param image UIImage或者NSString格式
 */
- (UIButton *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds image:(id)image target:(id)target action:(SEL)action;

/**
 create button by center and bounds + image + target + action
 
 @param image UIImage或者NSString格式
 */
+ (UIButton *)buttonWithCenter:(CGPoint)center bounds:(CGRect)bounds image:(id)image target:(nullable id)target action:(nullable SEL)action;

/**
 create button by center and bounds + normalImage + selectImage + target + action
 
 @param normalImage UIImage或者NSString格式
 @param selectImage UIImage或者NSString格式
 */
- (UIButton *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds normalImage:(id)normalImage selectImage:(id)selectImage target:(id)target action:(SEL)action;

/**
 create button by center and bounds + normalImage + selectImage + target + action
 
 @param normalImage UIImage或者NSString格式
 @param selectImage UIImage或者NSString格式
 */
+ (UIButton *)buttonWithCenter:(CGPoint)center bounds:(CGRect)bounds normalImage:(id)normalImage selectImage:(id)selectImage target:(nullable id)target action:(nullable SEL)action;

/**
 create button by center and bounds + normalImage + highlightedImage + target + action
 
 @param normalImage UIImage或者NSString格式
 @param highlightedImage UIImage或者NSString格式
 */
- (UIButton *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds normalImage:(id)normalImage highlightedImage:(id)highlightedImage target:(id)target action:(SEL)action;

/**
 create button by center and bounds + normalImage + highlightedImage + target + action
 
 @param normalImage UIImage或者NSString格式
 @param highlightedImage UIImage或者NSString格式
 */
+ (UIButton *)buttonWithCenter:(CGPoint)center bounds:(CGRect)bounds normalImage:(id)normalImage highlightedImage:(id)highlightedImage target:(nullable id)target action:(nullable SEL)action;

/**
 create button by center and bounds + backgroundImage
 
 @param backgroundImage UIImage或者NSString格式
 */
- (UIButton *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds backgroundImage:(id)backgroundImage;

/**
 create button by center and bounds + backgroundImage
 
 @param backgroundImage UIImage或者NSString格式
 */
+ (UIButton *)buttonWithCenter:(CGPoint)center bounds:(CGRect)bounds backgroundImage:(id)backgroundImage;

/**
 create button by center and bounds + normalImage + selectImage
 
 @param normalImage UIImage或者NSString格式
 @param selectImage UIImage或者NSString格式
 */
- (UIButton *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds normalBackgroundImage:(id)normalImage selectBackgroundImage:(id)selectImage;

/**
 create button by center and bounds + normalImage + selectImage
 
 @param normalImage UIImage或者NSString格式
 @param selectImage UIImage或者NSString格式
 */
+ (UIButton *)buttonWithCenter:(CGPoint)center bounds:(CGRect)bounds normalBackgroundImage:(id)normalImage selectBackgroundImage:(id)selectImage;

/**
 create button by center and bounds + normalImage + highlightedImage
 
 @param normalImage UIImage或者NSString格式
 @param highlightedImage UIImage或者NSString格式
 */
- (UIButton *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds normalBackgroundImage:(id)normalImage highlightedBackgroundImage:(id)highlightedImage;

/**
 create button by center and bounds + normalImage + highlightedImage
 
 @param normalImage UIImage或者NSString格式
 @param highlightedImage UIImage或者NSString格式
 */
+ (UIButton *)buttonWithCenter:(CGPoint)center bounds:(CGRect)bounds normalBackgroundImage:(id)normalImage highlightedBackgroundImage:(id)highlightedImage;

/**
 create button by center and bounds + backgroundImage + target + action
 
 @param backgroundImage UIImage或者NSString格式
 */
- (UIButton *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds backgroundImage:(id)backgroundImage target:(id)target action:(SEL)action;

/**
 create button by center and bounds + backgroundImage + target + action
 
 @param backgroundImage UIImage或者NSString格式
 */
+ (UIButton *)buttonWithCenter:(CGPoint)center bounds:(CGRect)bounds backgroundImage:(id)backgroundImage target:(nullable id)target action:(nullable SEL)action;

/**
 create button by center and bounds + normalImage + selectImage + target + action
 
 @param normalImage UIImage或者NSString格式
 @param selectImage UIImage或者NSString格式
 */
- (UIButton *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds normalBackgroundImage:(id)normalImage selectBackgroundImage:(id)selectImage target:(id)target action:(SEL)action;

/**
 create button by center and bounds + normalImage + selectImage + target + action
 
 @param normalImage UIImage或者NSString格式
 @param selectImage UIImage或者NSString格式
 */
+ (UIButton *)buttonWithCenter:(CGPoint)center bounds:(CGRect)bounds normalBackgroundImage:(id)normalImage selectBackgroundImage:(id)selectImage target:(nullable id)target action:(nullable SEL)action;

/**
 create button by center and bounds + normalImage + highlightedImage + target + action
 
 @param normalImage UIImage或者NSString格式
 @param highlightedImage UIImage或者NSString格式
 */
- (UIButton *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds normalBackgroundImage:(id)normalImage highlightedBackgroundImage:(id)highlightedImage target:(id)target action:(SEL)action;

/**
 create button by center and bounds + normalImage + highlightedImage + target + action
 
 @param normalImage UIImage或者NSString格式
 @param highlightedImage UIImage或者NSString格式
 */
+ (UIButton *)buttonWithCenter:(CGPoint)center bounds:(CGRect)bounds normalBackgroundImage:(id)normalImage highlightedBackgroundImage:(id)highlightedImage target:(nullable id)target action:(nullable SEL)action;

/**
 create button by center and bounds + title
 */
- (UIButton *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds title:(NSString *)title;

/**
 create button by center and bounds + title
 */
+ (UIButton *)buttonWithCenter:(CGPoint)center bounds:(CGRect)bounds title:(NSString *)title;

/**
 create button by center and bounds + title + target + action
 */
- (UIButton *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds title:(NSString *)title target:(id)target action:(SEL)action;

/**
 create button by center and bounds + title + target + action
 */
+ (UIButton *)buttonWithCenter:(CGPoint)center bounds:(CGRect)bounds title:(NSString *)title target:(id)target action:(SEL)action;

/**
 create button by center and bounds + title + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds title:(NSString *)title backgroundColor:(id)backgroundColor;

/**
 create button by center and bounds + title + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithCenter:(CGPoint)center bounds:(CGRect)bounds title:(NSString *)title backgroundColor:(id)backgroundColor;

/**
 create button by center and bounds + title + backgroundColor + target + action
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds title:(NSString *)title backgroundColor:(id)backgroundColor target:(id)target action:(SEL)action;

/**
 create button by center and bounds + title + backgroundColor + target + action
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithCenter:(CGPoint)center bounds:(CGRect)bounds title:(NSString *)title backgroundColor:(id)backgroundColor target:(id)target action:(SEL)action;

/**
 create button by center and bounds + title + font
 */
- (UIButton *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds title:(NSString *)title font:(id)font;

/**
 create button by center and bounds + title + font
 */
+ (UIButton *)buttonWithCenter:(CGPoint)center bounds:(CGRect)bounds title:(NSString *)title font:(id)font;

/**
 create button by center and bounds + title + font + target + action
 
 @param font UIFont或者NSString或者NSNumber格式
 */
- (UIButton *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds title:(NSString *)title font:(id)font target:(id)target action:(SEL)action;

/**
 create button by center and bounds + title + font + target + action
 
 @param font UIFont或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithCenter:(CGPoint)center bounds:(CGRect)bounds title:(NSString *)title font:(id)font target:(id)target action:(SEL)action;

/**
 create button by center and bounds + title + font + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds title:(NSString *)title font:(id)font backgroundColor:(id)backgroundColor;

/**
 create button by center and bounds + title + font + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithCenter:(CGPoint)center bounds:(CGRect)bounds title:(NSString *)title font:(id)font backgroundColor:(id)backgroundColor;

/**
 create button by center and bounds + title + font + backgroundColor + target + action
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds title:(NSString *)title font:(id)font backgroundColor:(id)backgroundColor target:(id)target action:(SEL)action;

/**
 create button by center and bounds + title + font + backgroundColor + target + action
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithCenter:(CGPoint)center bounds:(CGRect)bounds title:(NSString *)title font:(id)font backgroundColor:(id)backgroundColor target:(id)target action:(SEL)action;

/**
 create button by center and bounds + title + titleColor
 
 @param titleColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds title:(NSString *)title titleColor:(id)titleColor;

/**
 create button by center and bounds + title + titleColor
 
 @param titleColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithCenter:(CGPoint)center bounds:(CGRect)bounds title:(NSString *)title titleColor:(id)titleColor;

/**
 create button by center and bounds + title + titleColor + target + action
 
 @param titleColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds title:(NSString *)title titleColor:(id)titleColor target:(id)target action:(SEL)action;

/**
 create button by center and bounds + title + titleColor + target + action
 
 @param titleColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithCenter:(CGPoint)center bounds:(CGRect)bounds title:(NSString *)title titleColor:(id)titleColor target:(id)target action:(SEL)action;

/**
 create button by center and bounds + title + font + titleColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param titleColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds title:(NSString *)title font:(id)font titleColor:(id)titleColor;

/**
 create button by center and bounds + title + font + titleColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param titleColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithCenter:(CGPoint)center bounds:(CGRect)bounds title:(NSString *)title font:(id)font titleColor:(id)titleColor;

/**
 create button by center and bounds + title + font + titleColor + target + action
 
 @param font UIFont或者NSString或者NSNumber格式
 @param titleColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds title:(NSString *)title font:(id)font titleColor:(id)titleColor target:(id)target action:(SEL)action;

/**
 create button by center and bounds + title + font + titleColor + target + action
 
 @param font UIFont或者NSString或者NSNumber格式
 @param titleColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithCenter:(CGPoint)center bounds:(CGRect)bounds title:(NSString *)title font:(id)font titleColor:(id)titleColor target:(id)target action:(SEL)action;

/**
 create button by center and bounds + title + titleColor + backgroundColor
 
 @param titleColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds title:(NSString *)title titleColor:(id)titleColor backgroundColor:(id)backgroundColor;

/**
 create button by center and bounds + title + titleColor + backgroundColor
 
 @param titleColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithCenter:(CGPoint)center bounds:(CGRect)bounds title:(NSString *)title titleColor:(id)titleColor backgroundColor:(id)backgroundColor;

/**
 create button by center and bounds + title + titleColor + backgroundColor + target + action
 
 @param titleColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds title:(NSString *)title titleColor:(id)titleColor backgroundColor:(id)backgroundColor target:(id)target action:(SEL)action;

/**
 create button by center and bounds + title + titleColor + backgroundColor + target + action
 
 @param titleColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds title:(NSString *)title titleColor:(id)titleColor backgroundColor:(id)backgroundColor target:(id)target action:(SEL)action;

/**
 create button by center and bounds + title + font + titleColor + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param titleColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds title:(NSString *)title font:(id)font titleColor:(id)titleColor backgroundColor:(id)backgroundColor;

/**
 create button by center and bounds + title + font + titleColor + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param titleColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithCenter:(CGPoint)center bounds:(CGRect)bounds title:(NSString *)title font:(id)font titleColor:(id)titleColor backgroundColor:(id)backgroundColor;

/**
 create button by center and bounds + title + font + titleColor + backgroundColor
 + target + action
 
 @param font UIFont或者NSString或者NSNumber格式
 @param titleColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds title:(NSString *)title font:(id)font titleColor:(id)titleColor backgroundColor:(id)backgroundColor target:(id)target action:(SEL)action;

/**
 create button by center and bounds + title + font + titleColor + backgroundColor
 + target + action
 
 @param font UIFont或者NSString或者NSNumber格式
 @param titleColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithCenter:(CGPoint)center bounds:(CGRect)bounds title:(nullable NSString *)title font:(nullable id)font titleColor:(nullable id)titleColor backgroundColor:(nullable id)backgroundColor target:(nullable id)target action:(nullable SEL)action;

/**
 create button by center and bounds + title + font + titleColor + backgroundColor + horizontalAlignment + verticalAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param titleColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds title:(NSString *)title font:(id)font titleColor:(id)titleColor backgroundColor:(id)backgroundColor horizontalAlignment:(UIControlContentHorizontalAlignment)horizontalAlignment verticalAlignment:(UIControlContentVerticalAlignment)verticalAlignment;

/**
 create button by center and bounds + title + font + titleColor + backgroundColor + horizontalAlignment + verticalAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param titleColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithCenter:(CGPoint)center bounds:(CGRect)bounds title:(NSString *)title font:(id)font titleColor:(id)titleColor backgroundColor:(id)backgroundColor horizontalAlignment:(UIControlContentHorizontalAlignment)horizontalAlignment verticalAlignment:(UIControlContentVerticalAlignment)verticalAlignment;

/**
 create button by center and bounds + title + font + titleColor + backgroundColor + horizontalAlignment + verticalAlignment + target + action
 
 @param font UIFont或者NSString或者NSNumber格式
 @param titleColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds title:(NSString *)title font:(id)font titleColor:(id)titleColor backgroundColor:(id)backgroundColor horizontalAlignment:(UIControlContentHorizontalAlignment)horizontalAlignment verticalAlignment:(UIControlContentVerticalAlignment)verticalAlignment target:(id)target action:(SEL)action;

/**
 create button by center and bounds + title + font + titleColor + backgroundColor + horizontalAlignment + verticalAlignment + target + action
 
 @param font UIFont或者NSString或者NSNumber格式
 @param titleColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithCenter:(CGPoint)center bounds:(CGRect)bounds title:(NSString *)title font:(id)font titleColor:(id)titleColor backgroundColor:(id)backgroundColor horizontalAlignment:(UIControlContentHorizontalAlignment)horizontalAlignment verticalAlignment:(UIControlContentVerticalAlignment)verticalAlignment target:(nullable id)target action:(nullable SEL)action;

/**
 设置对齐方式
 
 @param horizontalAlignment 水平对齐方式
 @param verticalAlignment 垂直对齐方式
 */
- (void)horizontalAlignment:(UIControlContentHorizontalAlignment)horizontalAlignment verticalAlignment:(UIControlContentVerticalAlignment)verticalAlignment;

/**
 set button normalImage + selectImage
 
 @param normalImage UIImage或者NSString格式
 @param selectImage UIImage或者NSString格式
 */
- (void)normalImage:(id)normalImage selectImage:(id)selectImage;

/**
 set button normalImage + highlightedImage
 
 @param normalImage UIImage或者NSString格式
 @param highlightedImage UIImage或者NSString格式
 */
- (void)normalImage:(id)normalImage highlightedImage:(id)highlightedImage;

/**
 set button by normalImage + selectImage
 
 @param normalImage UIImage或者NSString格式
 @param selectImage UIImage或者NSString格式
 */
- (void)normalBackgroundImage:(id)normalImage selectBackgroundImage:(id)selectImage;

/**
 set button normalImage + highlightedImage
 
 @param normalImage UIImage或者NSString格式
 @param highlightedImage UIImage或者NSString格式
 */
- (void)normalBackgroundImage:(id)normalImage highlightedBackgroundImage:(id)highlightedImage;

#pragma mark --- 添加button样式
@property (nonatomic,assign) CGRect titleRect;/**< 可用来控制按钮的titleRect */
@property (nonatomic,assign) CGRect imageRect;/**< 可用来控制按钮的imageRect */

/**
 设置button的titleLabel和imageView的布局样式，及间距

 @param style titleLabel和imageView的布局样式
 @param space titleLabel和imageView的间距
 住：需要先设置button的frame
 当FRGButtonEdgeInsetsStyleCenter时，space失效
  */
- (void)layoutButtonWithEdgeInsetsStyle:(FRGButtonEdgeInsetsStyle)style imageTitleSpace:(CGFloat)space;

#pragma mark --- 调整button点击区域
/**
 扩充按钮的可点击区域

 @param top    在button的frame的基础上往上扩充的距离
 @param right  在button的frame的基础上往右扩充的距离
 @param bottom 在button的frame的基础上往下扩充的距离
 @param left   在button的frame的基础上往左扩充的距离
 */
- (void)enlargeEdgeWithTop:(CGFloat)top right:(CGFloat)right bottom:(CGFloat)bottom left:(CGFloat)left;


@end

NS_ASSUME_NONNULL_END
