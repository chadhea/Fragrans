//
//  UIButton+Fragrans.m
//  Fragrans
//
//  Created by qmz on 2019/1/31.
//

#import "UIButton+Fragrans.h"
#import <objc/runtime.h>
#import "UIImage+Fragrans.h"
#import "UIKitBridge.h"
static const char  *frg_titleRectKey = "frg_titleRectKey";
static const char  *frg_imageRectKey = "frg_imageRectKey";

@implementation UIButton (Fragrans)

+ (void)load {
    [super load];
    //保证方法只交换一次
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        [objc_getClass("UIButton") exchangeInstanceMethod:@selector(titleRectForContentRect:) targetMethod:@selector(frg_titleRectForContentRect:) error:nil];
        [objc_getClass("UIButton") exchangeInstanceMethod:@selector(imageRectForContentRect:) targetMethod:@selector(frg_imageRectForContentRect:) error:nil];
    });
}
- (CGRect)frg_titleRectForContentRect:(CGRect)contentRect {
    if (!CGRectIsEmpty(self.titleRect) && !CGRectEqualToRect(self.titleRect, CGRectZero)) {
        return self.titleRect;
    }
    return [self frg_titleRectForContentRect:contentRect];
}

- (CGRect)frg_imageRectForContentRect:(CGRect)contentRect {
    if (!CGRectIsEmpty(self.imageRect) && !CGRectEqualToRect(self.imageRect, CGRectZero)) {
        return self.imageRect;
    }
    return [self frg_imageRectForContentRect:contentRect];
}

- (CGRect)titleRect {
    return [objc_getAssociatedObject(self, frg_titleRectKey) CGRectValue];
}

- (void)setTitleRect:(CGRect)rect {
    objc_setAssociatedObject(self, frg_titleRectKey, [NSValue valueWithCGRect:rect], OBJC_ASSOCIATION_RETAIN);
}

- (CGRect)imageRect {
    NSValue * rectValue = objc_getAssociatedObject(self, frg_imageRectKey);
    return [rectValue CGRectValue];
}

- (void)setImageRect:(CGRect)rect {
    objc_setAssociatedObject(self, frg_imageRectKey, [NSValue valueWithCGRect:rect], OBJC_ASSOCIATION_RETAIN);
}

/**
 create button by target + action
 */
- (UIButton *)initWithTarget:(id)target action:(SEL)action {
    return [UIButton buttonWithTitle:nil font:nil titleColor:nil backgroundColor:nil target:target action:action];
}

/**
 create button by target + action
 */
+ (UIButton *)buttonWithTarget:(id)target action:(SEL)action {
    return [UIButton buttonWithTitle:nil font:nil titleColor:nil backgroundColor:nil target:target action:action];
}

/**
 create button by backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithBackgroundColor:(id)backgroundColor {
    return [UIButton buttonWithTitle:nil font:nil titleColor:nil backgroundColor:backgroundColor target:nil action:nil];
}

/**
 create button by backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)initWithBackgroundColor:(id)backgroundColor {
    return [UIButton buttonWithTitle:nil font:nil titleColor:nil backgroundColor:backgroundColor target:nil action:nil];
}

/**
 create button by backgroundColor + target +action
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithBackgroundColor:(id)backgroundColor target:(id)target action:(SEL)action {
    return [UIButton buttonWithTitle:nil font:nil titleColor:nil backgroundColor:backgroundColor target:target action:action];
}

/**
 create button by backgroundColor + target +action
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)initWithBackgroundColor:(id)backgroundColor target:(id)target action:(SEL)action {
    return [UIButton buttonWithTitle:nil font:nil titleColor:nil backgroundColor:backgroundColor target:target action:action];
}

/**
 create button by image
 
 @param image UIImage或者NSString格式
 */
- (UIButton *)initWithImage:(id)image {
    return [UIButton buttonWithImage:image target:nil action:nil];
}

/**
 create button by image
 
 @param image UIImage或者NSString格式
 */
+ (UIButton *)buttonWithImage:(id)image {
    return [UIButton buttonWithImage:image target:nil action:nil];
}

/**
 create button by normalImage + selectImage
 
 @param normalImage UIImage或者NSString格式
 @param selectImage UIImage或者NSString格式
 */
- (UIButton *)initWithNormalImage:(id)normalImage selectImage:(id)selectImage {
    return [UIButton buttonWithNormalImage:normalImage selectImage:selectImage target:nil action:nil];
}

/**
 create button by normalImage + selectImage
 
 @param normalImage UIImage或者NSString格式
 @param selectImage UIImage或者NSString格式
 */
+ (UIButton *)buttonWithNormalImage:(id)normalImage selectImage:(id)selectImage {
    return [UIButton buttonWithNormalImage:normalImage selectImage:selectImage target:nil action:nil];
}

/**
 create button by normalImage + highlightedImage
 
 @param normalImage UIImage或者NSString格式
 @param highlightedImage UIImage或者NSString格式
 */
- (UIButton *)initWithNormalImage:(id)normalImage highlightedImage:(id)highlightedImage {
    return [UIButton buttonWithNormalImage:normalImage highlightedImage:highlightedImage target:nil action:nil];
}

/**
 create button by normalImage + highlightedImage
 
 @param normalImage UIImage或者NSString格式
 @param highlightedImage UIImage或者NSString格式
 */
+ (UIButton *)buttonWithNormalImage:(id)normalImage highlightedImage:(id)highlightedImage {
    return [UIButton buttonWithNormalImage:normalImage highlightedImage:highlightedImage target:nil action:nil];
}

/**
 create button by image + target + action
 
 @param image UIImage或者NSString格式
 */
- (UIButton *)initWithImage:(id)image target:(id)target action:(SEL)action {
    return [UIButton buttonWithImage:image target:target action:action];
}

/**
 create button by image + target + action
 
 @param image UIImage或者NSString格式
 */
+ (UIButton *)buttonWithImage:(id)image target:(nullable id)target action:(nullable SEL)action {
    UIButton   *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setImage:[UIImage safeImage:image] forState:UIControlStateNormal];
    if (target && action) {
        [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    }
    return button;
}

/**
 create button by normalImage + selectImage + target + action
 
 @param normalImage UIImage或者NSString格式
 @param selectImage UIImage或者NSString格式
 */
- (UIButton *)initWithNormalImage:(id)normalImage selectImage:(id)selectImage target:(id)target action:(SEL)action {
    return [UIButton buttonWithNormalImage:normalImage selectImage:selectImage target:target action:action];
}

/**
 create button by normalImage + selectImage + target + action
 
 @param normalImage UIImage或者NSString格式
 @param selectImage UIImage或者NSString格式
 */
+ (UIButton *)buttonWithNormalImage:(id)normalImage selectImage:(id)selectImage target:(nullable id)target action:(nullable SEL)action {
    UIButton   *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setImage:[UIImage safeImage:normalImage] forState:UIControlStateNormal];
    [button setImage:[UIImage safeImage:selectImage] forState:UIControlStateSelected];
    if (target && action) {
        [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    }
    return button;
}

/**
 create button by normalImage + highlightedImage + target + action
 
 @param normalImage UIImage或者NSString格式
 @param highlightedImage UIImage或者NSString格式
 */
- (UIButton *)initWithNormalImage:(id)normalImage highlightedImage:(id)highlightedImage target:(id)target action:(SEL)action {
    return [UIButton buttonWithNormalImage:normalImage highlightedImage:highlightedImage target:target action:action];
}

/**
 create button by normalImage + highlightedImage + target + action
 
 @param normalImage UIImage或者NSString格式
 @param highlightedImage UIImage或者NSString格式
 */
+ (UIButton *)buttonWithNormalImage:(id)normalImage highlightedImage:(id)highlightedImage target:(nullable id)target action:(nullable SEL)action {
    UIButton   *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setImage:[UIImage safeImage:normalImage] forState:UIControlStateNormal];
    [button setImage:[UIImage safeImage:highlightedImage] forState:UIControlStateHighlighted];
    if (target && action) {
        [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    }
    return button;
}

/**
 create button by backgroundImage
 
 @param backgroundImage UIImage或者NSString格式
 */
- (UIButton *)initWithBackgroundImage:(id)backgroundImage {
    return [UIButton buttonWithBackgroundImage:backgroundImage target:nil action:nil];
}

/**
 create button by backgroundImage
 
 @param backgroundImage UIImage或者NSString格式
 */
+ (UIButton *)buttonWithBackgroundImage:(id)backgroundImage {
    return [UIButton buttonWithBackgroundImage:backgroundImage target:nil action:nil];
}

/**
 create button by normalImage + selectImage
 
 @param normalImage UIImage或者NSString格式
 @param selectImage UIImage或者NSString格式
 */
- (UIButton *)initWithNormalBackgroundImage:(id)normalImage selectBackgroundImage:(id)selectImage {
    return [UIButton buttonWithNormalBackgroundImage:normalImage selectBackgroundImage:selectImage target:nil action:nil];
}

/**
 create button by normalImage + selectImage
 
 @param normalImage UIImage或者NSString格式
 @param selectImage UIImage或者NSString格式
 */
+ (UIButton *)buttonWithNormalBackgroundImage:(id)normalImage selectBackgroundImage:(id)selectImage {
   return [UIButton buttonWithNormalBackgroundImage:normalImage selectBackgroundImage:selectImage target:nil action:nil];
}

/**
 create button by normalImage + highlightedImage
 
 @param normalImage UIImage或者NSString格式
 @param highlightedImage UIImage或者NSString格式
 */
- (UIButton *)initWithNormalBackgroundImage:(id)normalImage highlightedBackgroundImage:(id)highlightedImage {
    return [UIButton buttonWithNormalBackgroundImage:normalImage highlightedBackgroundImage:highlightedImage target:nil action:nil];
}

/**
 create button by normalImage + highlightedImage
 
 @param normalImage UIImage或者NSString格式
 @param highlightedImage UIImage或者NSString格式
 */
+ (UIButton *)buttonWithNormalBackgroundImage:(id)normalImage highlightedBackgroundImage:(id)highlightedImage {
    return [UIButton buttonWithNormalBackgroundImage:normalImage highlightedBackgroundImage:highlightedImage target:nil action:nil];
}

/**
 create button by backgroundImage + target + action
 
 @param backgroundImage UIImage或者NSString格式
 */
- (UIButton *)initWithBackgroundImage:(id)backgroundImage target:(id)target action:(SEL)action {
    return [UIButton buttonWithBackgroundImage:backgroundImage target:target action:action];
}

/**
 create button by backgroundImage + target + action
 
 @param backgroundImage UIImage或者NSString格式
 */
+ (UIButton *)buttonWithBackgroundImage:(id)backgroundImage target:(nullable id)target action:(nullable SEL)action {
    UIButton   *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setBackgroundImage:[UIImage safeImage:backgroundImage] forState:UIControlStateNormal];
    if (target && action) {
        [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    }
    return button;
}

/**
 create button by normalImage + selectImage + target + action
 
 @param normalImage UIImage或者NSString格式
 @param selectImage UIImage或者NSString格式
 */
- (UIButton *)initWithNormalBackgroundImage:(id)normalImage selectBackgroundImage:(id)selectImage target:(id)target action:(SEL)action {
    return [UIButton buttonWithNormalBackgroundImage:normalImage selectBackgroundImage:selectImage target:target action:action];
}

/**
 create button by normalImage + selectImage + target + action
 
 @param normalImage UIImage或者NSString格式
 @param selectImage UIImage或者NSString格式
 */
+ (UIButton *)buttonWithNormalBackgroundImage:(id)normalImage selectBackgroundImage:(id)selectImage target:(nullable id)target action:(nullable SEL)action {
    UIButton   *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setBackgroundImage:[UIImage safeImage:normalImage] forState:UIControlStateNormal];
    [button setBackgroundImage:[UIImage safeImage:selectImage] forState:UIControlStateSelected];
    if (target && action) {
        [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    }
    return button;
}

/**
 create button by normalImage + highlightedImage + target + action
 
 @param normalImage UIImage或者NSString格式
 @param highlightedImage UIImage或者NSString格式
 */
- (UIButton *)initWithNormalBackgroundImage:(id)normalImage highlightedBackgroundImage:(id)highlightedImage target:(id)target action:(SEL)action {
    return [UIButton buttonWithNormalBackgroundImage:normalImage highlightedBackgroundImage:highlightedImage target:target action:action];
}

/**
 create button by normalImage + highlightedImage + target + action
 
 @param normalImage UIImage或者NSString格式
 @param highlightedImage UIImage或者NSString格式
 */
+ (UIButton *)buttonWithNormalBackgroundImage:(id)normalImage highlightedBackgroundImage:(id)highlightedImage target:(nullable id)target action:(nullable SEL)action {
    UIButton   *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setBackgroundImage:[UIImage safeImage:normalImage] forState:UIControlStateNormal];
    [button setBackgroundImage:[UIImage safeImage:highlightedImage] forState:UIControlStateHighlighted];
    if (target && action) {
        [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    }
    return button;
}

/**
 create button by title
 */
- (UIButton *)initWithTitle:(NSString *)title {
    return [UIButton buttonWithTitle:title font:nil titleColor:nil backgroundColor:nil target:nil action:nil];
}

/**
 create button by title
 */
+ (UIButton *)buttonWithTitle:(NSString *)title {
    return [UIButton buttonWithTitle:title font:nil titleColor:nil backgroundColor:nil target:nil action:nil];
}

/**
 create button by title + target + action
 */
- (UIButton *)initWithTitle:(NSString *)title target:(id)target action:(SEL)action {
    return [UIButton buttonWithTitle:title font:nil titleColor:nil backgroundColor:nil target:target action:action];
}

/**
 create button by title + target + action
 */
+ (UIButton *)buttonWithTitle:(NSString *)title target:(id)target action:(SEL)action {
    return [UIButton buttonWithTitle:title font:nil titleColor:nil backgroundColor:nil target:target action:action];
}

/**
 create button by title + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithTitle:(NSString *)title backgroundColor:(id)backgroundColor {
    return [UIButton buttonWithTitle:title font:nil titleColor:nil backgroundColor:backgroundColor target:nil action:nil];
}

/**
 create button by title + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithTitle:(NSString *)title backgroundColor:(id)backgroundColor {
    return [UIButton buttonWithTitle:title font:nil titleColor:nil backgroundColor:backgroundColor target:nil action:nil];
}

/**
 create button by title + backgroundColor + target + action
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithTitle:(NSString *)title backgroundColor:(id)backgroundColor target:(id)target action:(SEL)action {
    return [UIButton buttonWithTitle:title font:nil titleColor:nil backgroundColor:backgroundColor target:target action:action];
}

/**
 create button by title + backgroundColor + target + action
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithTitle:(NSString *)title backgroundColor:(id)backgroundColor target:(id)target action:(SEL)action {
    return [UIButton buttonWithTitle:title font:nil titleColor:nil backgroundColor:backgroundColor target:target action:action];
}

/**
 create button by title + font
 
 @param font UIFont或者NSString或者NSNumber格式
 */
- (UIButton *)initWithTitle:(NSString *)title font:(id)font {
    return [UIButton buttonWithTitle:title font:font titleColor:nil backgroundColor:nil target:nil action:nil];
}

/**
 create button by title + font
 
 @param font UIFont或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithTitle:(NSString *)title font:(id)font {
    return [UIButton buttonWithTitle:title font:font titleColor:nil backgroundColor:nil target:nil action:nil];
}

/**
 create button by title + font + target + action
 
 @param font UIFont或者NSString或者NSNumber格式
 */
- (UIButton *)initWithTitle:(NSString *)title font:(id)font target:(id)target action:(SEL)action {
    return [UIButton buttonWithTitle:title font:font titleColor:nil backgroundColor:nil target:target action:action];
}

/**
 create button by title + font + target + action
 
 @param font UIFont或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithTitle:(NSString *)title font:(id)font target:(id)target action:(SEL)action {
    return [UIButton buttonWithTitle:title font:font titleColor:nil backgroundColor:nil target:target action:action];
}

/**
 create button by title + font + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithTitle:(NSString *)title font:(id)font backgroundColor:(id)backgroundColor {
    return [UIButton buttonWithTitle:title font:font titleColor:nil backgroundColor:backgroundColor target:nil action:nil];
}

/**
 create button by title + font + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithTitle:(NSString *)title font:(id)font backgroundColor:(id)backgroundColor {
    return [UIButton buttonWithTitle:title font:font titleColor:nil backgroundColor:backgroundColor target:nil action:nil];
}

/**
 create button by title + font + backgroundColor + target + action
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithTitle:(NSString *)title font:(id)font backgroundColor:(id)backgroundColor target:(id)target action:(SEL)action {
    return [UIButton buttonWithTitle:title font:font titleColor:nil backgroundColor:backgroundColor target:target action:action];
}

/**
 create button by title + font + backgroundColor + target + action
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithTitle:(NSString *)title font:(id)font backgroundColor:(id)backgroundColor target:(id)target action:(SEL)action {
    return [UIButton buttonWithTitle:title font:font titleColor:nil backgroundColor:backgroundColor target:target action:action];
}

/**
 create button by title + titleColor
 
 @param titleColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithTitle:(NSString *)title titleColor:(id)titleColor {
    return [UIButton buttonWithTitle:title font:nil titleColor:titleColor backgroundColor:nil target:nil action:nil];
}

/**
 create button by title + titleColor
 
 @param titleColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithTitle:(NSString *)title titleColor:(id)titleColor {
    return [UIButton buttonWithTitle:title font:nil titleColor:titleColor backgroundColor:nil target:nil action:nil];
}

/**
 create button by title + titleColor + target + action
 
 @param titleColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithTitle:(NSString *)title titleColor:(id)titleColor target:(id)target action:(SEL)action {
    return [UIButton buttonWithTitle:title font:nil titleColor:titleColor backgroundColor:nil target:target action:action];
}

/**
 create button by title + titleColor + target + action
 
 @param titleColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithTitle:(NSString *)title titleColor:(id)titleColor target:(id)target action:(SEL)action {
    return [UIButton buttonWithTitle:title font:nil titleColor:titleColor backgroundColor:nil target:target action:action];
}

/**
 create button by title + font + titleColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param titleColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithTitle:(NSString *)title font:(id)font titleColor:(id)titleColor {
    return [UIButton buttonWithTitle:title font:font titleColor:titleColor backgroundColor:nil target:nil action:nil];
}

/**
 create button by title + font + titleColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param titleColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithTitle:(NSString *)title font:(id)font titleColor:(id)titleColor {
    return [UIButton buttonWithTitle:title font:font titleColor:titleColor backgroundColor:nil target:nil action:nil];
}

/**
 create button by title + font + titleColor + target + action
 
 @param font UIFont或者NSString或者NSNumber格式
 @param titleColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithTitle:(NSString *)title font:(id)font titleColor:(id)titleColor target:(id)target action:(SEL)action {
    return [UIButton buttonWithTitle:title font:font titleColor:titleColor backgroundColor:nil target:target action:action];
}

/**
 create button by title + font + titleColor + target + action
 
 @param font UIFont或者NSString或者NSNumber格式
 @param titleColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithTitle:(NSString *)title font:(id)font titleColor:(id)titleColor target:(id)target action:(SEL)action {
    return [UIButton buttonWithTitle:title font:font titleColor:titleColor backgroundColor:nil target:target action:action];
}

/**
 create button by title + titleColor + backgroundColor
 
 @param titleColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithTitle:(NSString *)title titleColor:(id)titleColor backgroundColor:(id)backgroundColor {
    return [UIButton buttonWithTitle:title font:nil titleColor:titleColor backgroundColor:backgroundColor target:nil action:nil];
}

/**
 create button by title + titleColor + backgroundColor
 
 @param titleColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithTitle:(NSString *)title titleColor:(id)titleColor backgroundColor:(id)backgroundColor {
    return [UIButton buttonWithTitle:title font:nil titleColor:titleColor backgroundColor:backgroundColor target:nil action:nil];
}

/**
 create button by title + titleColor + backgroundColor + target + action
 
 @param titleColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithTitle:(NSString *)title titleColor:(id)titleColor backgroundColor:(id)backgroundColor target:(id)target action:(SEL)action {
    return [UIButton buttonWithTitle:title font:nil titleColor:titleColor backgroundColor:backgroundColor target:target action:action];
}

/**
 create button by title + titleColor + backgroundColor + target + action
 
 @param titleColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithTitle:(NSString *)title titleColor:(id)titleColor backgroundColor:(id)backgroundColor target:(id)target action:(SEL)action {
    return [UIButton buttonWithTitle:title font:nil titleColor:titleColor backgroundColor:backgroundColor target:target action:action];
}

/**
 create button by title + font + titleColor + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param titleColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithTitle:(NSString *)title font:(id)font titleColor:(id)titleColor backgroundColor:(id)backgroundColor {
    return [UIButton buttonWithTitle:title font:font titleColor:titleColor backgroundColor:backgroundColor target:nil action:nil];
}

/**
 create button by title + font + titleColor + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param titleColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithTitle:(NSString *)title font:(id)font titleColor:(id)titleColor backgroundColor:(id)backgroundColor {
    return [UIButton buttonWithTitle:title font:font titleColor:titleColor backgroundColor:backgroundColor target:nil action:nil];
}

/**
 create button by title + font + titleColor + backgroundColor + target + action
 
 @param font UIFont或者NSString或者NSNumber格式
 @param titleColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithTitle:(NSString *)title font:(id)font titleColor:(id)titleColor backgroundColor:(id)backgroundColor target:(id)target action:(SEL)action {
    return [UIButton buttonWithTitle:title font:font titleColor:titleColor backgroundColor:backgroundColor target:target action:action];
}

/**
 create button by title + font + titleColor + backgroundColor + target + action
 
 @param font UIFont或者NSString或者NSNumber格式
 @param titleColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithTitle:(nullable NSString *)title font:(nullable id)font titleColor:(nullable id)titleColor backgroundColor:(nullable id)backgroundColor target:(nullable id)target action:(nullable SEL)action {
    UIButton   *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:[UIKitBridge safeString:title] forState:UIControlStateNormal];
    button.titleLabel.font = [UIKitBridge safeFont:font baseFont:FRG_ButtonBaseFontSize];
    [button setTitleColor:[UIKitBridge safeColor:titleColor baseColor:FRG_ButtonBaseColorHex] forState:UIControlStateNormal];
    button.backgroundColor = [UIKitBridge safeColor:backgroundColor baseColor:[UIColor whiteColor]];
    if (target && action) {
        [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    }
    return button;
}

/**
 create button by title + font + titleColor + backgroundColor + horizontalAlignment + verticalAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param titleColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithTitle:(NSString *)title font:(id)font titleColor:(id)titleColor backgroundColor:(id)backgroundColor horizontalAlignment:(UIControlContentHorizontalAlignment)horizontalAlignment verticalAlignment:(UIControlContentVerticalAlignment)verticalAlignment {
    return [UIButton buttonWithTitle:title font:font titleColor:titleColor backgroundColor:backgroundColor horizontalAlignment:horizontalAlignment verticalAlignment:verticalAlignment target:nil action:nil];
}

/**
 create button by title + font + titleColor + backgroundColor + horizontalAlignment + verticalAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param titleColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithTitle:(NSString *)title font:(id)font titleColor:(id)titleColor backgroundColor:(id)backgroundColor horizontalAlignment:(UIControlContentHorizontalAlignment)horizontalAlignment verticalAlignment:(UIControlContentVerticalAlignment)verticalAlignment {
    return [UIButton buttonWithTitle:title font:font titleColor:titleColor backgroundColor:backgroundColor horizontalAlignment:horizontalAlignment verticalAlignment:verticalAlignment target:nil action:nil];
}

/**
 create button by title + font + titleColor + backgroundColor + horizontalAlignment
 + verticalAlignment + target + action
 
 @param font UIFont或者NSString或者NSNumber格式
 @param titleColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithTitle:(NSString *)title font:(id)font titleColor:(id)titleColor backgroundColor:(id)backgroundColor horizontalAlignment:(UIControlContentHorizontalAlignment)horizontalAlignment verticalAlignment:(UIControlContentVerticalAlignment)verticalAlignment target:(id)target action:(SEL)action {
    return [UIButton buttonWithTitle:title font:font titleColor:titleColor backgroundColor:backgroundColor horizontalAlignment:horizontalAlignment verticalAlignment:verticalAlignment target:target action:action];
}

/**
 create button by title + font + titleColor + backgroundColor + horizontalAlignment
 + verticalAlignment + target + action
 
 @param font UIFont或者NSString或者NSNumber格式
 @param titleColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithTitle:(NSString *)title font:(id)font titleColor:(id)titleColor backgroundColor:(id)backgroundColor horizontalAlignment:(UIControlContentHorizontalAlignment)horizontalAlignment verticalAlignment:(UIControlContentVerticalAlignment)verticalAlignment target:(nullable id)target action:(nullable SEL)action {
    UIButton   *button = [UIButton buttonWithTitle:title font:font titleColor:titleColor backgroundColor:backgroundColor target:target action:action];
    button.contentHorizontalAlignment = horizontalAlignment;
    button.contentVerticalAlignment = verticalAlignment;
    return button;
}

/**
 create button by frame + target + action
 */
- (UIButton *)initWithFrame:(CGRect)frame target:(id)target action:(SEL)action {
    return [UIButton buttonWithFrame:frame title:nil font:nil titleColor:nil backgroundColor:nil target:target action:action];
}

/**
 create button by frame + target + action
 */
+ (UIButton *)buttonWithFrame:(CGRect)frame target:(id)target action:(SEL)action {
    return [UIButton buttonWithFrame:frame title:nil font:nil titleColor:nil backgroundColor:nil target:target action:action];
}

/**
 create button by frame + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithFrame:(CGRect)frame backgroundColor:(id)backgroundColor {
    return [UIButton buttonWithFrame:frame title:nil font:nil titleColor:nil backgroundColor:backgroundColor target:nil action:nil];
}

/**
 create button by frame + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithFrame:(CGRect)frame backgroundColor:(id)backgroundColor {
    return [UIButton buttonWithFrame:frame title:nil font:nil titleColor:nil backgroundColor:backgroundColor target:nil action:nil];
}

/**
 create button by frame + backgroundColor + target + action
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithFrame:(CGRect)frame backgroundColor:(id)backgroundColor target:(id)target action:(SEL)action {
    return [UIButton buttonWithFrame:frame title:nil font:nil titleColor:nil backgroundColor:backgroundColor target:target action:action];
}

/**
 create button by frame + backgroundColor + target + action
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithFrame:(CGRect)frame backgroundColor:(id)backgroundColor target:(id)target action:(SEL)action {
    return [UIButton buttonWithFrame:frame title:nil font:nil titleColor:nil backgroundColor:backgroundColor target:target action:action];
}

/**
 create button by frame + image
 
 @param image UIImage或者NSString格式
 */
- (UIButton *)initWithFrame:(CGRect)frame image:(id)image {
    return [UIButton buttonWithFrame:frame image:image target:nil action:nil];
}

/**
 create button by frame + image
 
 @param image UIImage或者NSString格式
 */
+ (UIButton *)initWithFrame:(CGRect)frame image:(id)image {
    return [UIButton buttonWithFrame:frame image:image target:nil action:nil];
}

/**
 create button by frame + normalImage + selectImage
 
 @param normalImage UIImage或者NSString格式
 @param selectImage UIImage或者NSString格式
 */
- (UIButton *)initWithFrame:(CGRect)frame normalImage:(id)normalImage selectImage:(id)selectImage {
    return [UIButton buttonWithFrame:frame normalImage:normalImage selectImage:selectImage target:nil action:nil];
}

/**
 create button by frame + normalImage + selectImage
 
 @param normalImage UIImage或者NSString格式
 @param selectImage UIImage或者NSString格式
 */
+ (UIButton *)initWithFrame:(CGRect)frame normalImage:(id)normalImage selectImage:(id)selectImage {
    return [UIButton buttonWithFrame:frame normalImage:normalImage selectImage:selectImage target:nil action:nil];
}

/**
 create button by frame + normalImage + highlightedImage
 
 @param normalImage UIImage或者NSString格式
 @param highlightedImage UIImage或者NSString格式
 */
- (UIButton *)initWithFrame:(CGRect)frame normalImage:(id)normalImage highlightedImage:(id)highlightedImage {
    return [UIButton buttonWithFrame:frame normalImage:normalImage highlightedImage:highlightedImage target:nil action:nil];
}

/**
 create button by frame + normalImage + highlightedImage
 
 @param normalImage UIImage或者NSString格式
 @param highlightedImage UIImage或者NSString格式
 */
+ (UIButton *)initWithFrame:(CGRect)frame normalImage:(id)normalImage highlightedImage:(id)highlightedImage {
    return [UIButton buttonWithFrame:frame normalImage:normalImage highlightedImage:highlightedImage target:nil action:nil];
}

/**
 create button by frame + image + target + action
 
 @param image UIImage或者NSString格式
 */
- (UIButton *)initWithFrame:(CGRect)frame image:(id)image target:(id)target action:(SEL)action {
    return [UIButton buttonWithFrame:frame image:image target:target action:action];
}

/**
 create button by frame + image + target + action
 
 @param image UIImage或者NSString格式
 */
+ (UIButton *)buttonWithFrame:(CGRect)frame image:(id)image target:(nullable id)target action:(nullable SEL)action {
    UIButton   *button = [UIButton buttonWithImage:image target:target action:action];
    button.frame = frame;
    return button;
}

/**
 create button by frame + normalImage + selectImage + target + action
 
 @param normalImage UIImage或者NSString格式
 @param selectImage UIImage或者NSString格式
 */
- (UIButton *)initWithFrame:(CGRect)frame normalImage:(id)normalImage selectImage:(id)selectImage target:(id)target action:(SEL)action {
    return [UIButton buttonWithFrame:frame normalImage:normalImage selectImage:selectImage target:target action:action];
}

/**
 create button by frame + normalImage + selectImage + target + action
 
 @param normalImage UIImage或者NSString格式
 @param selectImage UIImage或者NSString格式
 */
+ (UIButton *)buttonWithFrame:(CGRect)frame normalImage:(id)normalImage selectImage:(id)selectImage target:(nullable id)target action:(nullable SEL)action {
    UIButton   *button = [UIButton buttonWithNormalImage:normalImage selectImage:selectImage target:target action:action];
    button.frame = frame;
    return button;
}

/**
 create button by frame + normalImage + highlightedImage + target + action
 
 @param normalImage UIImage或者NSString格式
 @param highlightedImage UIImage或者NSString格式
 */
- (UIButton *)initWithFrame:(CGRect)frame normalImage:(id)normalImage highlightedImage:(id)highlightedImage target:(id)target action:(SEL)action {
    return [UIButton buttonWithFrame:frame normalImage:normalImage highlightedImage:highlightedImage target:target action:action];
}

/**
 create button by frame + normalImage + highlightedImage + target + action
 
 @param normalImage UIImage或者NSString格式
 @param highlightedImage UIImage或者NSString格式
 */
+ (UIButton *)buttonWithFrame:(CGRect)frame normalImage:(id)normalImage highlightedImage:(id)highlightedImage target:(nullable id)target action:(nullable SEL)action {
    UIButton   *button = [UIButton buttonWithNormalImage:normalImage highlightedImage:highlightedImage target:target action:action];
    button.frame = frame;
    return button;
}

/**
 create button by frame + backgroundImage
 
 @param backgroundImage UIImage或者NSString格式
 */
- (UIButton *)initWithFrame:(CGRect)frame backgroundImage:(id)backgroundImage {
    return [UIButton buttonWithFrame:frame backgroundImage:backgroundImage target:nil action:nil];
}

/**
 create button by frame + backgroundImage
 
 @param backgroundImage UIImage或者NSString格式
 */
+ (UIButton *)initWithFrame:(CGRect)frame backgroundImage:(id)backgroundImage {
    return [UIButton buttonWithFrame:frame backgroundImage:backgroundImage target:nil action:nil];
}

/**
 create button by frame + normalImage + selectImage
 
 @param normalImage UIImage或者NSString格式
 @param selectImage UIImage或者NSString格式
 */
- (UIButton *)initWithFrame:(CGRect)frame normalBackgroundImage:(id)normalImage selectBackgroundImage:(id)selectImage {
    return [UIButton buttonWithFrame:frame normalBackgroundImage:normalImage selectBackgroundImage:selectImage target:nil action:nil];
}

/**
 create button by frame + normalImage + selectImage
 
 @param normalImage UIImage或者NSString格式
 @param selectImage UIImage或者NSString格式
 */
+ (UIButton *)initWithFrame:(CGRect)frame normalBackgroundImage:(id)normalImage selectBackgroundImage:(id)selectImage {
    return [UIButton buttonWithFrame:frame normalBackgroundImage:normalImage selectBackgroundImage:selectImage target:nil action:nil];
}

/**
 create button by frame + normalImage + highlightedImage
 
 @param normalImage UIImage或者NSString格式
 @param highlightedImage UIImage或者NSString格式
 */
- (UIButton *)initWithFrame:(CGRect)frame normalBackgroundImage:(id)normalImage highlightedBackgroundImage:(id)highlightedImage {
    return [UIButton buttonWithFrame:frame normalBackgroundImage:normalImage highlightedBackgroundImage:highlightedImage target:nil action:nil];
}

/**
 create button by frame + normalImage + highlightedImage
 
 @param normalImage UIImage或者NSString格式
 @param highlightedImage UIImage或者NSString格式
 */
+ (UIButton *)initWithFrame:(CGRect)frame normalBackgroundImage:(id)normalImage highlightedBackgroundImage:(id)highlightedImage {
    return [UIButton buttonWithFrame:frame normalBackgroundImage:normalImage highlightedBackgroundImage:highlightedImage target:nil action:nil];
}

/**
 create button by frame + backgroundImage + target + action
 
 @param backgroundImage UIImage或者NSString格式
 */
- (UIButton *)initWithFrame:(CGRect)frame backgroundImage:(id)backgroundImage target:(id)target action:(SEL)action {
    return [UIButton buttonWithFrame:frame backgroundImage:backgroundImage target:target action:action];
}

/**
 create button by frame + backgroundImage + target + action
 
 @param backgroundImage UIImage或者NSString格式
 */
+ (UIButton *)buttonWithFrame:(CGRect)frame backgroundImage:(id)backgroundImage target:(nullable id)target action:(nullable SEL)action {
    UIButton   *button = [UIButton buttonWithBackgroundImage:backgroundImage target:target action:action];
    button.frame = frame;
    return button;
}

/**
 create button by frame + normalImage + selectImage + target + action
 
 @param normalImage UIImage或者NSString格式
 @param selectImage UIImage或者NSString格式
 */
- (UIButton *)initWithFrame:(CGRect)frame normalBackgroundImage:(id)normalImage selectBackgroundImage:(id)selectImage target:(id)target action:(SEL)action {
    return [UIButton buttonWithFrame:frame normalBackgroundImage:normalImage selectBackgroundImage:selectImage target:target action:action];
}

/**
 create button by frame + normalImage + selectImage + target + action
 
 @param normalImage UIImage或者NSString格式
 @param selectImage UIImage或者NSString格式
 */
+ (UIButton *)buttonWithFrame:(CGRect)frame normalBackgroundImage:(id)normalImage selectBackgroundImage:(id)selectImage target:(nullable id)target action:(nullable SEL)action {
    UIButton   *button = [UIButton buttonWithNormalBackgroundImage:normalImage selectBackgroundImage:selectImage target:target action:action];
    button.frame = frame;
    return button;
}

/**
 create button by frame + normalImage + highlightedImage + target + action
 
 @param normalImage UIImage或者NSString格式
 @param highlightedImage UIImage或者NSString格式
 */
- (UIButton *)initWithFrame:(CGRect)frame normalBackgroundImage:(id)normalImage highlightedBackgroundImage:(id)highlightedImage target:(id)target action:(SEL)action {
    return [UIButton buttonWithFrame:frame normalBackgroundImage:normalImage highlightedBackgroundImage:highlightedImage target:target action:action];
}

/**
 create button by frame + normalImage + highlightedImage + target + action
 
 @param normalImage UIImage或者NSString格式
 @param highlightedImage UIImage或者NSString格式
 */
+ (UIButton *)buttonWithFrame:(CGRect)frame normalBackgroundImage:(id)normalImage highlightedBackgroundImage:(id)highlightedImage target:(nullable id)target action:(nullable SEL)action {
    UIButton   *button = [UIButton buttonWithNormalBackgroundImage:normalImage highlightedBackgroundImage:highlightedImage target:target action:action];
    button.frame = frame;
    return button;
}

/**
 create button by frame + title
 */
- (UIButton *)initWithFrame:(CGRect)frame title:(NSString *)title {
    return [UIButton buttonWithFrame:frame title:title font:nil titleColor:nil backgroundColor:nil target:nil action:nil];
}

/**
 create button by frame + title
 */
+ (UIButton *)buttonWithFrame:(CGRect)frame title:(NSString *)title {
    return [UIButton buttonWithFrame:frame title:title font:nil titleColor:nil backgroundColor:nil target:nil action:nil];
}

/**
 create button by frame + title + target + action
 */
- (UIButton *)initWithFrame:(CGRect)frame title:(NSString *)title target:(id)target action:(SEL)action {
    return [UIButton buttonWithFrame:frame title:title font:nil titleColor:nil backgroundColor:nil target:target action:action];
}

/**
 create button by frame + title + target + action
 */
+ (UIButton *)buttonWithFrame:(CGRect)frame title:(NSString *)title target:(id)target action:(SEL)action {
    return [UIButton buttonWithFrame:frame title:title font:nil titleColor:nil backgroundColor:nil target:target action:action];
}

/**
 create button by frame + title + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithFrame:(CGRect)frame title:(NSString *)title backgroundColor:(id)backgroundColor {
    return [UIButton buttonWithFrame:frame title:title font:nil titleColor:nil backgroundColor:backgroundColor target:nil action:nil];
}

/**
 create button by frame + title + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithFrame:(CGRect)frame title:(NSString *)title backgroundColor:(id)backgroundColor {
    return [UIButton buttonWithFrame:frame title:title font:nil titleColor:nil backgroundColor:backgroundColor target:nil action:nil];
}

/**
 create button by frame + title + backgroundColor + target + action
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithFrame:(CGRect)frame title:(NSString *)title backgroundColor:(id)backgroundColor target:(id)target action:(SEL)action {
    return [UIButton buttonWithFrame:frame title:title font:nil titleColor:nil backgroundColor:backgroundColor target:target action:action];
}

/**
 create button by frame + title + backgroundColor + target + action
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithFrame:(CGRect)frame title:(NSString *)title backgroundColor:(id)backgroundColor target:(id)target action:(SEL)action {
    return [UIButton buttonWithFrame:frame title:title font:nil titleColor:nil backgroundColor:backgroundColor target:target action:action];
}

/**
 create button by frame + title + font
 
 @param font UIFont或者NSString或者NSNumber格式
 */
- (UIButton *)initWithFrame:(CGRect)frame title:(NSString *)title font:(id)font {
    return [UIButton buttonWithFrame:frame title:title font:font titleColor:nil backgroundColor:nil target:nil action:nil];
}

/**
 create button by frame + title + font
 
 @param font UIFont或者NSString或者NSNumber格式
 */
+ (UIButton *)initWithFrame:(CGRect)frame title:(NSString *)title font:(id)font {
    return [UIButton buttonWithFrame:frame title:title font:font titleColor:nil backgroundColor:nil target:nil action:nil];
}

/**
 create button by frame + title + font + target + action
 
 @param font UIFont或者NSString或者NSNumber格式
 */
- (UIButton *)initWithFrame:(CGRect)frame title:(NSString *)title font:(id)font target:(id)target action:(SEL)action {
    return [UIButton buttonWithFrame:frame title:title font:font titleColor:nil backgroundColor:nil target:target action:action];
}

/**
 create button by frame + title + font + target + action
 
 @param font UIFont或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithFrame:(CGRect)frame title:(NSString *)title font:(id)font target:(id)target action:(SEL)action {
    return [UIButton buttonWithFrame:frame title:title font:font titleColor:nil backgroundColor:nil target:target action:action];
}

/**
 create button by frame + title + font + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithFrame:(CGRect)frame title:(NSString *)title font:(id)font backgroundColor:(id)backgroundColor {
    return [UIButton buttonWithFrame:frame title:title font:font titleColor:nil backgroundColor:backgroundColor target:nil action:nil];
}

/**
 create button by frame + title + font + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithFrame:(CGRect)frame title:(NSString *)title font:(id)font backgroundColor:(id)backgroundColor {
    return [UIButton buttonWithFrame:frame title:title font:font titleColor:nil backgroundColor:backgroundColor target:nil action:nil];
}

/**
 create button by frame + title + font + backgroundColor + target + action
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithFrame:(CGRect)frame title:(NSString *)title font:(id)font backgroundColor:(id)backgroundColor target:(id)target action:(SEL)action {
    return [UIButton buttonWithFrame:frame title:title font:font titleColor:nil backgroundColor:backgroundColor target:target action:action];
}

/**
 create button by frame + title + font + backgroundColor + target + action
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithFrame:(CGRect)frame title:(NSString *)title font:(id)font backgroundColor:(id)backgroundColor target:(id)target action:(SEL)action {
    return [UIButton buttonWithFrame:frame title:title font:font titleColor:nil backgroundColor:backgroundColor target:target action:action];
}

/**
 create button by frame + title + titleColor
 
 @param titleColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithFrame:(CGRect)frame title:(NSString *)title titleColor:(id)titleColor {
    return [UIButton buttonWithFrame:frame title:title font:nil titleColor:titleColor backgroundColor:nil target:nil action:nil];
}

/**
 create button by frame + title + titleColor
 
 @param titleColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithFrame:(CGRect)frame title:(NSString *)title titleColor:(id)titleColor {
    return [UIButton buttonWithFrame:frame title:title font:nil titleColor:titleColor backgroundColor:nil target:nil action:nil];
}

/**
 create button by frame + title + titleColor + target + action
 
 @param titleColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithFrame:(CGRect)frame title:(NSString *)title titleColor:(id)titleColor target:(id)target action:(SEL)action {
    return [UIButton buttonWithFrame:frame title:title font:nil titleColor:titleColor backgroundColor:nil target:target action:action];
}

/**
 create button by frame + title + titleColor + target + action
 
 @param titleColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithFrame:(CGRect)frame title:(NSString *)title titleColor:(id)titleColor target:(id)target action:(SEL)action {
    return [UIButton buttonWithFrame:frame title:title font:nil titleColor:titleColor backgroundColor:nil target:target action:action];
}

/**
 create button by frame + title + font + titleColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param titleColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithFrame:(CGRect)frame title:(NSString *)title font:(id)font titleColor:(id)titleColor {
    return [UIButton buttonWithFrame:frame title:title font:font titleColor:titleColor backgroundColor:nil target:nil action:nil];
}

/**
 create button by frame + title + font + titleColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param titleColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithFrame:(CGRect)frame title:(NSString *)title font:(id)font titleColor:(id)titleColor {
    return [UIButton buttonWithFrame:frame title:title font:font titleColor:titleColor backgroundColor:nil target:nil action:nil];
}

/**
 create button by frame + title + font + titleColor + target + action
 
 @param font UIFont或者NSString或者NSNumber格式
 @param titleColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithFrame:(CGRect)frame title:(NSString *)title font:(id)font titleColor:(id)titleColor target:(id)target action:(SEL)action {
    return [UIButton buttonWithFrame:frame title:title font:font titleColor:titleColor backgroundColor:nil target:target action:action];
}

/**
 create button by frame + title + font + titleColor + target + action
 
 @param font UIFont或者NSString或者NSNumber格式
 @param titleColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithFrame:(CGRect)frame title:(NSString *)title font:(id)font titleColor:(id)titleColor target:(id)target action:(SEL)action {
    return [UIButton buttonWithFrame:frame title:title font:font titleColor:titleColor backgroundColor:nil target:target action:action];
}

/**
 create button by frame + title + titleColor + backgroundColor
 
 @param titleColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithFrame:(CGRect)frame title:(NSString *)title titleColor:(id)titleColor backgroundColor:(id)backgroundColor {
    return [UIButton buttonWithFrame:frame title:title font:nil titleColor:titleColor backgroundColor:backgroundColor target:nil action:nil];
}

/**
 create button by frame + title + titleColor + backgroundColor
 
 @param titleColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithFrame:(CGRect)frame title:(NSString *)title titleColor:(id)titleColor backgroundColor:(id)backgroundColor {
    return [UIButton buttonWithFrame:frame title:title font:nil titleColor:titleColor backgroundColor:backgroundColor target:nil action:nil];
}

/**
 create button by frame + title + titleColor + backgroundColor + target + action
 
 @param titleColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithFrame:(CGRect)frame title:(NSString *)title titleColor:(id)titleColor backgroundColor:(id)backgroundColor target:(id)target action:(SEL)action {
    return [UIButton buttonWithFrame:frame title:title font:nil titleColor:titleColor backgroundColor:backgroundColor target:target action:action];
}

/**
 create button by frame + title + titleColor + backgroundColor + target + action
 
 @param titleColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithFrame:(CGRect)frame title:(NSString *)title titleColor:(id)titleColor backgroundColor:(id)backgroundColor target:(id)target action:(SEL)action {
    return [UIButton buttonWithFrame:frame title:title font:nil titleColor:titleColor backgroundColor:backgroundColor target:target action:action];
}

/**
 create button by frame + title + font + titleColor + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param titleColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithFrame:(CGRect)frame title:(NSString *)title font:(id)font titleColor:(id)titleColor backgroundColor:(id)backgroundColor {
    return [UIButton buttonWithFrame:frame title:title font:font titleColor:titleColor backgroundColor:backgroundColor target:nil action:nil];
}

/**
 create button by frame + title + font + titleColor + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param titleColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithFrame:(CGRect)frame title:(NSString *)title font:(id)font titleColor:(id)titleColor backgroundColor:(id)backgroundColor {
    return [UIButton buttonWithFrame:frame title:title font:font titleColor:titleColor backgroundColor:backgroundColor target:nil action:nil];
}

/**
 create button by frame + title + font + titleColor + backgroundColor + target + action
 
 @param font UIFont或者NSString或者NSNumber格式
 @param titleColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithFrame:(CGRect)frame title:(NSString *)title font:(id)font titleColor:(id)titleColor backgroundColor:(id)backgroundColor target:(id)target action:(SEL)action {
    return [UIButton buttonWithFrame:frame title:title font:font titleColor:titleColor backgroundColor:backgroundColor target:target action:action];
}

/**
 create button by frame + title + font + titleColor + backgroundColor + target + action
 
 @param font UIFont或者NSString或者NSNumber格式
 @param titleColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithFrame:(CGRect)frame title:(nullable NSString *)title font:(nullable id)font titleColor:(nullable id)titleColor backgroundColor:(nullable id)backgroundColor target:(nullable id)target action:(nullable SEL)action {
    UIButton   *button = [UIButton buttonWithTitle:title font:font titleColor:titleColor backgroundColor:backgroundColor target:target action:action];
    button.frame = frame;
    return button;
}

/**
 create button by frame + title + font + titleColor + backgroundColor + horizontalAlignment + verticalAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param titleColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithFrame:(CGRect)frame title:(NSString *)title font:(id)font titleColor:(id)titleColor backgroundColor:(id)backgroundColor horizontalAlignment:(UIControlContentHorizontalAlignment)horizontalAlignment verticalAlignment:(UIControlContentVerticalAlignment)verticalAlignment {
    return [UIButton buttonWithFrame:frame title:title font:font titleColor:titleColor backgroundColor:backgroundColor horizontalAlignment:horizontalAlignment verticalAlignment:verticalAlignment target:nil action:nil];
}

/**
 create button by frame + title + font + titleColor + backgroundColor + horizontalAlignment + verticalAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param titleColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithFrame:(CGRect)frame title:(NSString *)title font:(id)font titleColor:(id)titleColor backgroundColor:(id)backgroundColor horizontalAlignment:(UIControlContentHorizontalAlignment)horizontalAlignment verticalAlignment:(UIControlContentVerticalAlignment)verticalAlignment {
    return [UIButton buttonWithFrame:frame title:title font:font titleColor:titleColor backgroundColor:backgroundColor horizontalAlignment:horizontalAlignment verticalAlignment:verticalAlignment target:nil action:nil];
}

/**
 create button by frame + title + font + titleColor + backgroundColor + horizontalAlignment
 + verticalAlignment + target + action
 
 @param font UIFont或者NSString或者NSNumber格式
 @param titleColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithFrame:(CGRect)frame title:(NSString *)title font:(id)font titleColor:(id)titleColor backgroundColor:(id)backgroundColor horizontalAlignment:(UIControlContentHorizontalAlignment)horizontalAlignment verticalAlignment:(UIControlContentVerticalAlignment)verticalAlignment target:(id)target action:(SEL)action {
    return [UIButton buttonWithFrame:frame title:title font:font titleColor:titleColor backgroundColor:backgroundColor horizontalAlignment:horizontalAlignment verticalAlignment:verticalAlignment target:target action:action];
}

/**
 create button by frame + title + font + titleColor + backgroundColor + horizontalAlignment
 + verticalAlignment + target + action
 
 @param font UIFont或者NSString或者NSNumber格式
 @param titleColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithFrame:(CGRect)frame title:(NSString *)title font:(id)font titleColor:(id)titleColor backgroundColor:(id)backgroundColor horizontalAlignment:(UIControlContentHorizontalAlignment)horizontalAlignment verticalAlignment:(UIControlContentVerticalAlignment)verticalAlignment target:(nullable id)target action:(nullable SEL)action {
    UIButton   *button = [UIButton buttonWithTitle:title font:font titleColor:titleColor backgroundColor:backgroundColor target:target action:action];
    button.frame = frame;
    button.contentHorizontalAlignment = horizontalAlignment;
    button.contentVerticalAlignment = verticalAlignment;
    return button;
}

/**
 create button by center and bounds
 */
- (UIButton *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds {
    return [UIButton buttonWithCenter:center bounds:bounds title:nil font:nil titleColor:nil backgroundColor:nil target:nil action:nil];
}

/**
 create button by center and bounds
 */
+ (UIButton *)buttonWithCenter:(CGPoint)center bounds:(CGRect)bounds {
    return [UIButton buttonWithCenter:center bounds:bounds title:nil font:nil titleColor:nil backgroundColor:nil target:nil action:nil];
}

/**
 create button by center and bounds + target + action
 */
- (UIButton *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds target:(id)target action:(SEL)action {
    return [UIButton buttonWithCenter:center bounds:bounds title:nil font:nil titleColor:nil backgroundColor:nil target:target action:action];
}

/**
 create button by center and bounds + target + action
 */
+ (UIButton *)buttonWithCenter:(CGPoint)center bounds:(CGRect)bounds target:(id)target action:(SEL)action {
    return [UIButton buttonWithCenter:center bounds:bounds title:nil font:nil titleColor:nil backgroundColor:nil target:target action:action];
}

/**
 create button by center and bounds + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds backgroundColor:(id)backgroundColor {
    return [UIButton buttonWithCenter:center bounds:bounds title:nil font:nil titleColor:nil backgroundColor:backgroundColor target:nil action:nil];
}

/**
 create button by center and bounds + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithCenter:(CGPoint)center bounds:(CGRect)bounds backgroundColor:(id)backgroundColor {
    return [UIButton buttonWithCenter:center bounds:bounds title:nil font:nil titleColor:nil backgroundColor:backgroundColor target:nil action:nil];
}

/**
 create button by center and bounds + backgroundColor + target + action
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds backgroundColor:(id)backgroundColor target:(id)target action:(SEL)action {
    return [UIButton buttonWithCenter:center bounds:bounds title:nil font:nil titleColor:nil backgroundColor:backgroundColor target:target action:action];
}

/**
 create button by center and bounds + backgroundColor + target + action
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithCenter:(CGPoint)center bounds:(CGRect)bounds backgroundColor:(id)backgroundColor target:(id)target action:(SEL)action {
    return [UIButton buttonWithCenter:center bounds:bounds title:nil font:nil titleColor:nil backgroundColor:backgroundColor target:target action:action];
}

/**
 create button by center and bounds + image
 
 @param image UIImage或者NSString格式
 */
- (UIButton *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds image:(id)image {
    return [UIButton buttonWithCenter:center bounds:bounds image:image target:nil action:nil];
}

/**
 create button by center and bounds + image
 
 @param image UIImage或者NSString格式
 */
+ (UIButton *)buttonWithCenter:(CGPoint)center bounds:(CGRect)bounds image:(id)image {
    return [UIButton buttonWithCenter:center bounds:bounds image:image target:nil action:nil];
}

/**
 create button by center and bounds + normalImage + selectImage
 
 @param normalImage UIImage或者NSString格式
 @param selectImage UIImage或者NSString格式
 */
- (UIButton *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds normalImage:(id)normalImage selectImage:(id)selectImage {
    return [UIButton buttonWithCenter:center bounds:bounds normalImage:normalImage selectImage:selectImage target:nil action:nil];
}

/**
 create button by center and bounds + normalImage + selectImage
 
 @param normalImage UIImage或者NSString格式
 @param selectImage UIImage或者NSString格式
 */
+ (UIButton *)buttonWithCenter:(CGPoint)center bounds:(CGRect)bounds normalImage:(id)normalImage selectImage:(id)selectImage {
    return [UIButton buttonWithCenter:center bounds:bounds normalImage:normalImage selectImage:selectImage target:nil action:nil];
}

/**
 create button by center and bounds + normalImage + highlightedImage
 
 @param normalImage UIImage或者NSString格式
 @param highlightedImage UIImage或者NSString格式
 */
- (UIButton *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds normalImage:(id)normalImage highlightedImage:(id)highlightedImage {
    return [UIButton buttonWithCenter:center bounds:bounds normalImage:normalImage highlightedImage:highlightedImage target:nil action:nil];
}

/**
 create button by center and bounds + normalImage + highlightedImage
 
 @param normalImage UIImage或者NSString格式
 @param highlightedImage UIImage或者NSString格式
 */
+ (UIButton *)buttonWithCenter:(CGPoint)center bounds:(CGRect)bounds normalImage:(id)normalImage highlightedImage:(id)highlightedImage {
    return [UIButton buttonWithCenter:center bounds:bounds normalImage:normalImage highlightedImage:highlightedImage target:nil action:nil];
}

/**
 create button by center and bounds + image + target + action
 
 @param image UIImage或者NSString格式
 */
- (UIButton *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds image:(id)image target:(id)target action:(SEL)action {
    return [UIButton buttonWithCenter:center bounds:bounds image:image target:target action:action];
}

/**
 create button by center and bounds + image + target + action
 
 @param image UIImage或者NSString格式
 */
+ (UIButton *)buttonWithCenter:(CGPoint)center bounds:(CGRect)bounds image:(id)image target:(nullable id)target action:(nullable SEL)action {
    UIButton   *button = [UIButton buttonWithImage:image target:target action:action];
    button.center = center;
    button.bounds = bounds;
    return button;
}

/**
 create button by center and bounds + normalImage + selectImage + target + action
 
 @param normalImage UIImage或者NSString格式
 @param selectImage UIImage或者NSString格式
 */
- (UIButton *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds normalImage:(id)normalImage selectImage:(id)selectImage target:(id)target action:(SEL)action {
    return [UIButton buttonWithCenter:center bounds:bounds normalImage:normalImage selectImage:selectImage target:target action:action];
}

/**
 create button by center and bounds + normalImage + selectImage + target + action
 
 @param normalImage UIImage或者NSString格式
 @param selectImage UIImage或者NSString格式
 */
+ (UIButton *)buttonWithCenter:(CGPoint)center bounds:(CGRect)bounds normalImage:(id)normalImage selectImage:(id)selectImage target:(nullable id)target action:(nullable SEL)action {
    UIButton   *button = [UIButton buttonWithNormalImage:normalImage selectImage:selectImage target:target action:action];
    button.center = center;
    button.bounds = bounds;
    return button;
}

/**
 create button by center and bounds + normalImage + highlightedImage + target + action
 
 @param normalImage UIImage或者NSString格式
 @param highlightedImage UIImage或者NSString格式
 */
- (UIButton *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds normalImage:(id)normalImage highlightedImage:(id)highlightedImage target:(id)target action:(SEL)action {
    return [UIButton buttonWithCenter:center bounds:bounds normalImage:normalImage highlightedImage:highlightedImage target:target action:action];
}

/**
 create button by center and bounds + normalImage + highlightedImage + target + action
 
 @param normalImage UIImage或者NSString格式
 @param highlightedImage UIImage或者NSString格式
 */
+ (UIButton *)buttonWithCenter:(CGPoint)center bounds:(CGRect)bounds normalImage:(id)normalImage highlightedImage:(id)highlightedImage target:(nullable id)target action:(nullable SEL)action {
    UIButton   *button = [UIButton buttonWithNormalImage:normalImage highlightedImage:highlightedImage target:target action:action];
    button.center = center;
    button.bounds = bounds;
    return button;
}

/**
 create button by center and bounds + backgroundImage
 
 @param backgroundImage UIImage或者NSString格式
 */
- (UIButton *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds backgroundImage:(id)backgroundImage {
    return [UIButton buttonWithCenter:center bounds:bounds backgroundImage:backgroundImage target:nil action:nil];
}

/**
 create button by center and bounds + backgroundImage
 
 @param backgroundImage UIImage或者NSString格式
 */
+ (UIButton *)buttonWithCenter:(CGPoint)center bounds:(CGRect)bounds backgroundImage:(id)backgroundImage {
    return [UIButton buttonWithCenter:center bounds:bounds backgroundImage:backgroundImage target:nil action:nil];
}

/**
 create button by center and bounds + normalImage + selectImage
 
 @param normalImage UIImage或者NSString格式
 @param selectImage UIImage或者NSString格式
 */
- (UIButton *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds normalBackgroundImage:(id)normalImage selectBackgroundImage:(id)selectImage {
    return [UIButton buttonWithCenter:center bounds:bounds normalBackgroundImage:normalImage selectBackgroundImage:selectImage target:nil action:nil];
}

/**
 create button by center and bounds + normalImage + selectImage
 
 @param normalImage UIImage或者NSString格式
 @param selectImage UIImage或者NSString格式
 */
+ (UIButton *)buttonWithCenter:(CGPoint)center bounds:(CGRect)bounds normalBackgroundImage:(id)normalImage selectBackgroundImage:(id)selectImage {
    return [UIButton buttonWithCenter:center bounds:bounds normalBackgroundImage:normalImage selectBackgroundImage:selectImage target:nil action:nil];
}

/**
 create button by center and bounds + normalImage + highlightedImage
 
 @param normalImage UIImage或者NSString格式
 @param highlightedImage UIImage或者NSString格式
 */
- (UIButton *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds normalBackgroundImage:(id)normalImage highlightedBackgroundImage:(id)highlightedImage {
    return [UIButton buttonWithCenter:center bounds:bounds normalBackgroundImage:normalImage highlightedBackgroundImage:highlightedImage target:nil action:nil];
}

/**
 create button by center and bounds + normalImage + highlightedImage
 
 @param normalImage UIImage或者NSString格式
 @param highlightedImage UIImage或者NSString格式
 */
+ (UIButton *)buttonWithCenter:(CGPoint)center bounds:(CGRect)bounds normalBackgroundImage:(id)normalImage highlightedBackgroundImage:(id)highlightedImage {
    return [UIButton buttonWithCenter:center bounds:bounds normalBackgroundImage:normalImage highlightedBackgroundImage:highlightedImage target:nil action:nil];
}

/**
 create button by center and bounds + backgroundImage + target + action
 
 @param backgroundImage UIImage或者NSString格式
 */
- (UIButton *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds backgroundImage:(id)backgroundImage target:(id)target action:(SEL)action {
    return [UIButton buttonWithCenter:center bounds:bounds backgroundImage:backgroundImage target:target action:action];
}

/**
 create button by center and bounds + backgroundImage + target + action
 
 @param backgroundImage UIImage或者NSString格式
 */
+ (UIButton *)buttonWithCenter:(CGPoint)center bounds:(CGRect)bounds backgroundImage:(id)backgroundImage target:(nullable id)target action:(nullable SEL)action {
    UIButton   *button = [UIButton buttonWithBackgroundImage:backgroundImage target:target action:action];
    button.center = center;
    button.bounds = bounds;
    return button;
}

/**
 create button by center and bounds + normalImage + selectImage + target + action
 
 @param normalImage UIImage或者NSString格式
 @param selectImage UIImage或者NSString格式
 */
- (UIButton *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds normalBackgroundImage:(id)normalImage selectBackgroundImage:(id)selectImage target:(id)target action:(SEL)action {
    return [UIButton buttonWithCenter:center bounds:bounds normalBackgroundImage:normalImage selectBackgroundImage:selectImage target:target action:action];
}

/**
 create button by center and bounds + normalImage + selectImage + target + action
 
 @param normalImage UIImage或者NSString格式
 @param selectImage UIImage或者NSString格式
 */
+ (UIButton *)buttonWithCenter:(CGPoint)center bounds:(CGRect)bounds normalBackgroundImage:(id)normalImage selectBackgroundImage:(id)selectImage target:(nullable id)target action:(nullable SEL)action {
    UIButton   *button = [UIButton buttonWithNormalBackgroundImage:normalImage selectBackgroundImage:selectImage target:target action:action];
    button.center = center;
    button.bounds = bounds;
    return button;
}

/**
 create button by center and bounds + normalImage + highlightedImage + target + action
 
 @param normalImage UIImage或者NSString格式
 @param highlightedImage UIImage或者NSString格式
 */
- (UIButton *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds normalBackgroundImage:(id)normalImage highlightedBackgroundImage:(id)highlightedImage target:(id)target action:(SEL)action {
    return [UIButton buttonWithCenter:center bounds:bounds normalBackgroundImage:normalImage highlightedBackgroundImage:highlightedImage target:target action:action];
}

/**
 create button by center and bounds + normalImage + highlightedImage + target + action
 
 @param normalImage UIImage或者NSString格式
 @param highlightedImage UIImage或者NSString格式
 */
+ (UIButton *)buttonWithCenter:(CGPoint)center bounds:(CGRect)bounds normalBackgroundImage:(id)normalImage highlightedBackgroundImage:(id)highlightedImage target:(nullable id)target action:(nullable SEL)action {
    UIButton   *button = [UIButton buttonWithNormalBackgroundImage:normalImage highlightedBackgroundImage:highlightedImage target:target action:action];
    button.center = center;
    button.bounds = bounds;
    return button;
}

/**
 create button by center and bounds + title
 */
- (UIButton *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds title:(NSString *)title {
    return [UIButton buttonWithCenter:center bounds:bounds title:title font:nil titleColor:nil backgroundColor:nil target:nil action:nil];
}

/**
 create button by center and bounds + title
 */
+ (UIButton *)buttonWithCenter:(CGPoint)center bounds:(CGRect)bounds title:(NSString *)title {
    return [UIButton buttonWithCenter:center bounds:bounds title:title font:nil titleColor:nil backgroundColor:nil target:nil action:nil];
}

/**
 create button by center and bounds + title + target + action
 */
- (UIButton *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds title:(NSString *)title target:(id)target action:(SEL)action {
    return [UIButton buttonWithCenter:center bounds:bounds title:title font:nil titleColor:nil backgroundColor:nil target:target action:action];
}

/**
 create button by center and bounds + title + target + action
 */
+ (UIButton *)buttonWithCenter:(CGPoint)center bounds:(CGRect)bounds title:(NSString *)title target:(id)target action:(SEL)action {
    return [UIButton buttonWithCenter:center bounds:bounds title:title font:nil titleColor:nil backgroundColor:nil target:target action:action];
}

/**
 create button by center and bounds + title + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds title:(NSString *)title backgroundColor:(id)backgroundColor {
    return [UIButton buttonWithCenter:center bounds:bounds title:title font:nil titleColor:nil backgroundColor:backgroundColor target:nil action:nil];
}

/**
 create button by center and bounds + title + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithCenter:(CGPoint)center bounds:(CGRect)bounds title:(NSString *)title backgroundColor:(id)backgroundColor {
    return [UIButton buttonWithCenter:center bounds:bounds title:title font:nil titleColor:nil backgroundColor:backgroundColor target:nil action:nil];
}

/**
 create button by center and bounds + title + backgroundColor + target + action
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds title:(NSString *)title backgroundColor:(id)backgroundColor target:(id)target action:(SEL)action {
    return [UIButton buttonWithCenter:center bounds:bounds title:title font:nil titleColor:nil backgroundColor:backgroundColor target:target action:action];
}

/**
 create button by center and bounds + title + backgroundColor + target + action
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithCenter:(CGPoint)center bounds:(CGRect)bounds title:(NSString *)title backgroundColor:(id)backgroundColor target:(id)target action:(SEL)action {
    return [UIButton buttonWithCenter:center bounds:bounds title:title font:nil titleColor:nil backgroundColor:backgroundColor target:target action:action];
}

/**
 create button by center and bounds + title + font
 */
- (UIButton *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds title:(NSString *)title font:(id)font {
    return [UIButton buttonWithCenter:center bounds:bounds title:title font:font titleColor:nil backgroundColor:nil target:nil action:nil];
}

/**
 create button by center and bounds + title + font
 */
+ (UIButton *)buttonWithCenter:(CGPoint)center bounds:(CGRect)bounds title:(NSString *)title font:(id)font {
    return [UIButton buttonWithCenter:center bounds:bounds title:title font:font titleColor:nil backgroundColor:nil target:nil action:nil];
}

/**
 create button by center and bounds + title + font + target + action
 
 @param font UIFont或者NSString或者NSNumber格式
 */
- (UIButton *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds title:(NSString *)title font:(id)font target:(id)target action:(SEL)action {
    return [UIButton buttonWithCenter:center bounds:bounds title:title font:font titleColor:nil backgroundColor:nil target:target action:action];
}

/**
 create button by center and bounds + title + font + target + action
 
 @param font UIFont或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithCenter:(CGPoint)center bounds:(CGRect)bounds title:(NSString *)title font:(id)font target:(id)target action:(SEL)action {
    return [UIButton buttonWithCenter:center bounds:bounds title:title font:font titleColor:nil backgroundColor:nil target:target action:action];
}

/**
 create button by center and bounds + title + font + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds title:(NSString *)title font:(id)font backgroundColor:(id)backgroundColor {
    return [UIButton buttonWithCenter:center bounds:bounds title:title font:font titleColor:nil backgroundColor:backgroundColor target:nil action:nil];
}

/**
 create button by center and bounds + title + font + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithCenter:(CGPoint)center bounds:(CGRect)bounds title:(NSString *)title font:(id)font backgroundColor:(id)backgroundColor {
    return [UIButton buttonWithCenter:center bounds:bounds title:title font:font titleColor:nil backgroundColor:backgroundColor target:nil action:nil];
}

/**
 create button by center and bounds + title + font + backgroundColor + target + action
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds title:(NSString *)title font:(id)font backgroundColor:(id)backgroundColor target:(id)target action:(SEL)action {
    return [UIButton buttonWithCenter:center bounds:bounds title:title font:font titleColor:nil backgroundColor:backgroundColor target:target action:action];
}

/**
 create button by center and bounds + title + font + backgroundColor + target + action
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithCenter:(CGPoint)center bounds:(CGRect)bounds title:(NSString *)title font:(id)font backgroundColor:(id)backgroundColor target:(id)target action:(SEL)action {
    return [UIButton buttonWithCenter:center bounds:bounds title:title font:font titleColor:nil backgroundColor:backgroundColor target:target action:action];
}

/**
 create button by center and bounds + title + titleColor
 
 @param titleColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds title:(NSString *)title titleColor:(id)titleColor {
    return [UIButton buttonWithCenter:center bounds:bounds title:title font:nil titleColor:titleColor backgroundColor:nil target:nil action:nil];
}

/**
 create button by center and bounds + title + titleColor
 
 @param titleColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithCenter:(CGPoint)center bounds:(CGRect)bounds title:(NSString *)title titleColor:(id)titleColor {
    return [UIButton buttonWithCenter:center bounds:bounds title:title font:nil titleColor:titleColor backgroundColor:nil target:nil action:nil];
}

/**
 create button by center and bounds + title + titleColor + target + action
 
 @param titleColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds title:(NSString *)title titleColor:(id)titleColor target:(id)target action:(SEL)action {
    return [UIButton buttonWithCenter:center bounds:bounds title:title font:nil titleColor:titleColor backgroundColor:nil target:target action:action];
}

/**
 create button by center and bounds + title + titleColor + target + action
 
 @param titleColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithCenter:(CGPoint)center bounds:(CGRect)bounds title:(NSString *)title titleColor:(id)titleColor target:(id)target action:(SEL)action {
    return [UIButton buttonWithCenter:center bounds:bounds title:title font:nil titleColor:titleColor backgroundColor:nil target:target action:action];
}

/**
 create button by center and bounds + title + font + titleColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param titleColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds title:(NSString *)title font:(id)font titleColor:(id)titleColor {
    return [UIButton buttonWithCenter:center bounds:bounds title:title font:font titleColor:titleColor backgroundColor:nil target:nil action:nil];
}

/**
 create button by center and bounds + title + font + titleColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param titleColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithCenter:(CGPoint)center bounds:(CGRect)bounds title:(NSString *)title font:(id)font titleColor:(id)titleColor {
    return [UIButton buttonWithCenter:center bounds:bounds title:title font:font titleColor:titleColor backgroundColor:nil target:nil action:nil];
}

/**
 create button by center and bounds + title + font + titleColor + target + action
 
 @param font UIFont或者NSString或者NSNumber格式
 @param titleColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds title:(NSString *)title font:(id)font titleColor:(id)titleColor target:(id)target action:(SEL)action {
    return [UIButton buttonWithCenter:center bounds:bounds title:title font:font titleColor:titleColor backgroundColor:nil target:target action:action];
}

/**
 create button by center and bounds + title + font + titleColor + target + action
 
 @param font UIFont或者NSString或者NSNumber格式
 @param titleColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithCenter:(CGPoint)center bounds:(CGRect)bounds title:(NSString *)title font:(id)font titleColor:(id)titleColor target:(id)target action:(SEL)action {
    return [UIButton buttonWithCenter:center bounds:bounds title:title font:font titleColor:titleColor backgroundColor:nil target:target action:action];
}

/**
 create button by center and bounds + title + titleColor + backgroundColor
 
 @param titleColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds title:(NSString *)title titleColor:(id)titleColor backgroundColor:(id)backgroundColor {
    return [UIButton buttonWithCenter:center bounds:bounds title:title font:nil titleColor:titleColor backgroundColor:backgroundColor target:nil action:nil];
}

/**
 create button by center and bounds + title + titleColor + backgroundColor
 
 @param titleColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithCenter:(CGPoint)center bounds:(CGRect)bounds title:(NSString *)title titleColor:(id)titleColor backgroundColor:(id)backgroundColor {
    return [UIButton buttonWithCenter:center bounds:bounds title:title font:nil titleColor:titleColor backgroundColor:backgroundColor target:nil action:nil];
}

/**
 create button by center and bounds + title + titleColor + backgroundColor + target + action
 
 @param titleColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds title:(NSString *)title titleColor:(id)titleColor backgroundColor:(id)backgroundColor target:(id)target action:(SEL)action {
    return [UIButton buttonWithCenter:center bounds:bounds title:title font:nil titleColor:titleColor backgroundColor:backgroundColor target:target action:action];
}

/**
 create button by center and bounds + title + titleColor + backgroundColor + target + action
 
 @param titleColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds title:(NSString *)title titleColor:(id)titleColor backgroundColor:(id)backgroundColor target:(id)target action:(SEL)action {
    return [UIButton buttonWithCenter:center bounds:bounds title:title font:nil titleColor:titleColor backgroundColor:backgroundColor target:target action:action];
}

/**
 create button by center and bounds + title + font + titleColor + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param titleColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds title:(NSString *)title font:(id)font titleColor:(id)titleColor backgroundColor:(id)backgroundColor {
    return [UIButton buttonWithCenter:center bounds:bounds title:title font:font titleColor:titleColor backgroundColor:backgroundColor target:nil action:nil];
}

/**
 create button by center and bounds + title + font + titleColor + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param titleColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithCenter:(CGPoint)center bounds:(CGRect)bounds title:(NSString *)title font:(id)font titleColor:(id)titleColor backgroundColor:(id)backgroundColor {
    return [UIButton buttonWithCenter:center bounds:bounds title:title font:font titleColor:titleColor backgroundColor:backgroundColor target:nil action:nil];
}

/**
 create button by center and bounds + title + font + titleColor + backgroundColor
 + target + action
 
 @param font UIFont或者NSString或者NSNumber格式
 @param titleColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds title:(NSString *)title font:(id)font titleColor:(id)titleColor backgroundColor:(id)backgroundColor target:(id)target action:(SEL)action {
    return [UIButton buttonWithCenter:center bounds:bounds title:title font:font titleColor:titleColor backgroundColor:backgroundColor target:target action:action];
}

/**
 create button by center and bounds + title + font + titleColor + backgroundColor
 + target + action
 
 @param font UIFont或者NSString或者NSNumber格式
 @param titleColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithCenter:(CGPoint)center bounds:(CGRect)bounds title:(nullable NSString *)title font:(nullable id)font titleColor:(nullable id)titleColor backgroundColor:(nullable id)backgroundColor target:(nullable id)target action:(nullable SEL)action {
    UIButton   *button = [UIButton buttonWithTitle:title font:font titleColor:titleColor backgroundColor:backgroundColor target:target action:action];
    button.center = center;
    button.bounds = bounds;
    return button;
}

/**
 create button by center and bounds + title + font + titleColor + backgroundColor + horizontalAlignment + verticalAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param titleColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds title:(NSString *)title font:(id)font titleColor:(id)titleColor backgroundColor:(id)backgroundColor horizontalAlignment:(UIControlContentHorizontalAlignment)horizontalAlignment verticalAlignment:(UIControlContentVerticalAlignment)verticalAlignment {
    return [UIButton buttonWithCenter:center bounds:bounds title:title font:font titleColor:titleColor backgroundColor:backgroundColor horizontalAlignment:horizontalAlignment verticalAlignment:verticalAlignment target:nil action:nil];
}

/**
 create button by center and bounds + title + font + titleColor + backgroundColor + horizontalAlignment + verticalAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param titleColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithCenter:(CGPoint)center bounds:(CGRect)bounds title:(NSString *)title font:(id)font titleColor:(id)titleColor backgroundColor:(id)backgroundColor horizontalAlignment:(UIControlContentHorizontalAlignment)horizontalAlignment verticalAlignment:(UIControlContentVerticalAlignment)verticalAlignment {
    return [UIButton buttonWithCenter:center bounds:bounds title:title font:font titleColor:titleColor backgroundColor:backgroundColor horizontalAlignment:horizontalAlignment verticalAlignment:verticalAlignment target:nil action:nil];
}

/**
 create button by center and bounds + title + font + titleColor + backgroundColor + horizontalAlignment + verticalAlignment + target + action
 
 @param font UIFont或者NSString或者NSNumber格式
 @param titleColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UIButton *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds title:(NSString *)title font:(id)font titleColor:(id)titleColor backgroundColor:(id)backgroundColor horizontalAlignment:(UIControlContentHorizontalAlignment)horizontalAlignment verticalAlignment:(UIControlContentVerticalAlignment)verticalAlignment target:(id)target action:(SEL)action {
    return [UIButton buttonWithCenter:center bounds:bounds title:title font:font titleColor:titleColor backgroundColor:backgroundColor horizontalAlignment:horizontalAlignment verticalAlignment:verticalAlignment target:target action:action];
}

/**
 create button by center and bounds + title + font + titleColor + backgroundColor + horizontalAlignment + verticalAlignment + target + action
 
 @param font UIFont或者NSString或者NSNumber格式
 @param titleColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIButton *)buttonWithCenter:(CGPoint)center bounds:(CGRect)bounds title:(NSString *)title font:(id)font titleColor:(id)titleColor backgroundColor:(id)backgroundColor horizontalAlignment:(UIControlContentHorizontalAlignment)horizontalAlignment verticalAlignment:(UIControlContentVerticalAlignment)verticalAlignment target:(nullable id)target action:(nullable SEL)action {
    UIButton   *button = [UIButton buttonWithTitle:title font:font titleColor:titleColor backgroundColor:backgroundColor target:target action:action];
    button.center = center;
    button.bounds = bounds;
    button.contentHorizontalAlignment = horizontalAlignment;
    button.contentVerticalAlignment = verticalAlignment;
    return button;
}

/**
 设置对齐方式
 
 @param horizontalAlignment 水平对齐方式
 @param verticalAlignment 垂直对齐方式
 */
- (void)horizontalAlignment:(UIControlContentHorizontalAlignment)horizontalAlignment verticalAlignment:(UIControlContentVerticalAlignment)verticalAlignment {
    self.contentHorizontalAlignment = horizontalAlignment;
    self.contentVerticalAlignment = verticalAlignment;
}


/**
 set button normalImage + selectImage
 
 @param normalImage UIImage或者NSString格式
 @param selectImage UIImage或者NSString格式
 */
- (void)normalImage:(id)normalImage selectImage:(id)selectImage {
    if (normalImage) {
        [self setImage:[UIImage safeImage:normalImage] forState:UIControlStateNormal];
    }
    if (selectImage) {
        [self setImage:[UIImage safeImage:selectImage] forState:UIControlStateSelected];
    }
}

/**
 set button normalImage + highlightedImage
 
 @param normalImage UIImage或者NSString格式
 @param highlightedImage UIImage或者NSString格式
 */
- (void)normalImage:(id)normalImage highlightedImage:(id)highlightedImage {
    if (normalImage) {
        [self setImage:[UIImage safeImage:normalImage] forState:UIControlStateNormal];
    }
    if (highlightedImage) {
        [self setImage:[UIImage safeImage:highlightedImage] forState:UIControlStateHighlighted];
    }
}

/**
 set button by normalImage + selectImage
 
 @param normalImage UIImage或者NSString格式
 @param selectImage UIImage或者NSString格式
 */
- (void)normalBackgroundImage:(id)normalImage selectBackgroundImage:(id)selectImage {
    if (normalImage) {
        [self setBackgroundImage:[UIImage safeImage:normalImage] forState:UIControlStateNormal];
    }
    if (selectImage) {
        [self setBackgroundImage:[UIImage safeImage:selectImage] forState:UIControlStateSelected];
    }
}

/**
 set button normalImage + highlightedImage
 
 @param normalImage UIImage或者NSString格式
 @param highlightedImage UIImage或者NSString格式
 */
- (void)normalBackgroundImage:(id)normalImage highlightedBackgroundImage:(id)highlightedImage {
    if (normalImage) {
        [self setBackgroundImage:[UIImage safeImage:normalImage] forState:UIControlStateNormal];
    }
    if (highlightedImage) {
        [self setBackgroundImage:[UIImage safeImage:highlightedImage] forState:UIControlStateHighlighted];
    }
}

/**
 设置button的titleLabel和imageView的布局样式，及间距
 
 @param style titleLabel和imageView的布局样式
 @param space titleLabel和imageView的间距
 住：当FRGButtonEdgeInsetsStyleCenter时，space失效
 */
- (void)layoutButtonWithEdgeInsetsStyle:(FRGButtonEdgeInsetsStyle)style imageTitleSpace:(CGFloat)space {
    CGFloat imageWith   = self.imageView.frame.size.width;
    CGFloat imageHeight = self.imageView.frame.size.height;
    CGFloat labelWidth  = [UIKitBridge boundingWidthWithString:self.currentTitle font:self.titleLabel.font];
    CGFloat labelHeight = [UIKitBridge boundingHeightWithString:self.currentTitle font:self.titleLabel.font];
    if (self.frame.size.width != 0 && self.frame.size.width - imageWith < labelWidth) {
        labelWidth = self.frame.size.width - imageWith;
    }
    if (self.frame.size.height != 0 && self.frame.size.height - imageHeight < labelHeight) {
        labelHeight = self.frame.size.height - imageHeight;
    }
    UIEdgeInsets imageEdgeInsets = UIEdgeInsetsZero;
    UIEdgeInsets labelEdgeInsets = UIEdgeInsetsZero;
    switch (style) {
        case FRGButtonEdgeInsetsStyleTop:
        {
            imageEdgeInsets = UIEdgeInsetsMake(-labelHeight-space/2.0, 0, 0, -labelWidth);
            labelEdgeInsets = UIEdgeInsetsMake(0, -imageWith, -imageHeight-space/2.0, 0);
        }
            break;
        case FRGButtonEdgeInsetsStyleLeft:
        {
            imageEdgeInsets = UIEdgeInsetsMake(0, -space/2.0, 0, space/2.0);
            labelEdgeInsets = UIEdgeInsetsMake(0, space/2.0, 0, -space/2.0);
        }
            break;
        case FRGButtonEdgeInsetsStyleBottom:
        {
            imageEdgeInsets = UIEdgeInsetsMake(0, 0, -labelHeight-space/2.0, -labelWidth);
            labelEdgeInsets = UIEdgeInsetsMake(-imageHeight-space/2.0, -imageWith, 0, 0);
        }
            break;
        case FRGButtonEdgeInsetsStyleRight:
        {
            imageEdgeInsets = UIEdgeInsetsMake(0, labelWidth+space/2.0, 0, -labelWidth-space/2.0);
            labelEdgeInsets = UIEdgeInsetsMake(0, -imageWith-space/2.0, 0, imageWith+space/2.0);
        }
            break;
        case FRGButtonEdgeInsetsStyleCenter: {
            imageEdgeInsets = UIEdgeInsetsMake(0, labelWidth/2.0, 0, -labelWidth/2.0);
            labelEdgeInsets = UIEdgeInsetsMake(0, -imageWith/2.0, 0, imageWith/2.0);
            
            CGFloat labelWidth  = [UIKitBridge boundingWidthWithString:self.currentTitle font:self.titleLabel.font];
            CGFloat labelHeight = [UIKitBridge boundingHeightWithString:self.currentTitle font:self.titleLabel.font];
            if (self.frame.size.width != 0 && self.frame.size.width < labelWidth) {
                labelWidth = self.frame.size.width;
            }
            if (self.frame.size.height != 0 && self.frame.size.height < labelHeight) {
                labelHeight = self.frame.size.height;
            }
            self.titleRect = CGRectMake((self.frame.size.width - labelWidth) * 0.5, (self.frame.size.height - labelHeight) * 0.5, labelWidth, labelHeight);
        }
            break;
        default:
            break;
    }
    self.titleEdgeInsets = labelEdgeInsets;
    self.imageEdgeInsets = imageEdgeInsets;
}

static char frg_topNameKey;
static char frg_rightNameKey;
static char frg_bottomNameKey;
static char frg_leftNameKey;

/**
 扩充按钮的可点击区域
 
 @param top    在button的frame的基础上往上扩充的距离
 @param right  在button的frame的基础上往右扩充的距离
 @param bottom 在button的frame的基础上往下扩充的距离
 @param left   在button的frame的基础上往左扩充的距离
 */
- (void)enlargeEdgeWithTop:(CGFloat)top right:(CGFloat)right bottom:(CGFloat)bottom left:(CGFloat)left {
    objc_setAssociatedObject(self, &frg_topNameKey, [NSNumber numberWithFloat:top], OBJC_ASSOCIATION_COPY_NONATOMIC);
    objc_setAssociatedObject(self, &frg_rightNameKey, [NSNumber numberWithFloat:right], OBJC_ASSOCIATION_COPY_NONATOMIC);
    objc_setAssociatedObject(self, &frg_bottomNameKey, [NSNumber numberWithFloat:bottom], OBJC_ASSOCIATION_COPY_NONATOMIC);
    objc_setAssociatedObject(self, &frg_leftNameKey, [NSNumber numberWithFloat:left], OBJC_ASSOCIATION_COPY_NONATOMIC);
    
}

- (CGRect)enlargedRect {
    NSNumber* topEdge = objc_getAssociatedObject(self, &frg_topNameKey);
    NSNumber* rightEdge = objc_getAssociatedObject(self, &frg_rightNameKey);
    NSNumber* bottomEdge = objc_getAssociatedObject(self, &frg_bottomNameKey);
    NSNumber* leftEdge = objc_getAssociatedObject(self, &frg_leftNameKey);
    if (topEdge && rightEdge && bottomEdge && leftEdge) {
        return CGRectMake(self.bounds.origin.x - leftEdge.floatValue,
                          self.bounds.origin.y - topEdge.floatValue,
                          self.bounds.size.width + leftEdge.floatValue + rightEdge.floatValue,
                          self.bounds.size.height + topEdge.floatValue + bottomEdge.floatValue);
    } else {
        return self.bounds;
    }
}

- (UIView*)hitTest:(CGPoint) point withEvent:(UIEvent*) event {
    CGRect rect = [self enlargedRect];
    if (CGRectEqualToRect(rect, self.bounds)) {
        return [super hitTest:point withEvent:event];
    }
    return CGRectContainsPoint(rect, point) ? self : nil;
}


@end
