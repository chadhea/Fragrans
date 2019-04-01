//
//  UITextView+Fragrans.m
//  Fragrans
//
//  Created by qmz on 2019/3/7.
//

#import "UITextView+Fragrans.h"
#import <objc/runtime.h>
#import "UIColor+Fragrans.h"
#import "UIFont+Fragrans.h"
#import "NSString+Fragrans.h"
#import "UILabel+Fragrans.h"
@implementation UITextView (Fragrans)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wobjc-designated-initializers"

- (UILabel *)frg_placeholderLabel {
    return objc_getAssociatedObject(self, @selector(frg_placeholderLabel));
}
- (void)setFrg_placeholderLabel:(UILabel * _Nonnull)frg_placeholderLabel {
    objc_setAssociatedObject(self, @selector(frg_placeholderLabel), frg_placeholderLabel, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

/**
 create textView by text
 
 */
- (UITextView *)initWithText:(NSString *)text {
    return [UITextView textViewWithText:text font:nil textColor:nil backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textView by text
 
 */
+ (UITextView *)textViewWithText:(NSString *)text {
    return [UITextView textViewWithText:text font:nil textColor:nil backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textView by text + font
 
 @param font UIFont或者NSString或者NSNumber格式
 */
- (UITextView *)initWithText:(NSString *)text font:(id)font {
    return [UITextView textViewWithText:text font:font textColor:nil backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textView by text + font
 
 @param font UIFont或者NSString或者NSNumber格式
 */
+ (UITextView *)textViewWithText:(NSString *)text font:(id)font {
    return [UITextView textViewWithText:text font:font textColor:nil backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textView by text + font + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 */
- (UITextView *)initWithText:(NSString *)text font:(id)font delegate:(id)delegate {
    return [UITextView textViewWithText:text font:font textColor:nil backgroundColor:nil textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textView by text + font + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 */
+ (UITextView *)textViewWithText:(NSString *)text font:(id)font delegate:(id)delegate {
    return [UITextView textViewWithText:text font:font textColor:nil backgroundColor:nil textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textView by text + textColor
 
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UITextView *)initWithText:(NSString *)text textColor:(id)textColor {
    return [UITextView textViewWithText:text font:nil textColor:textColor backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textView by text + textColor
 
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextView *)textViewWithText:(NSString *)text textColor:(id)textColor {
    return [UITextView textViewWithText:text font:nil textColor:textColor backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textView by text + font + textColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UITextView *)initWithText:(NSString *)text font:(id)font textColor:(id)textColor {
    return [UITextView textViewWithText:text font:font textColor:textColor backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textView by text + font + textColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextView *)textViewWithText:(NSString *)text font:(id)font textColor:(id)textColor {
    return [UITextView textViewWithText:text font:font textColor:textColor backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textView by text + font + textColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UITextView *)initWithText:(NSString *)text font:(id)font textColor:(id)textColor delegate:(id)delegate {
    return [UITextView textViewWithText:text font:font textColor:textColor backgroundColor:nil textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textView by text + font + textColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextView *)textViewWithText:(NSString *)text font:(id)font textColor:(id)textColor delegate:(id)delegate {
    return [UITextView textViewWithText:text font:font textColor:textColor backgroundColor:nil textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textView by backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextView *)initWithBackgroundColor:(id)backgroundColor {
    return [UITextView textViewWithText:nil font:nil textColor:nil backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textView by backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextView *)textViewWithBackgroundColor:(id)backgroundColor {
    return [UITextView textViewWithText:nil font:nil textColor:nil backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textView by text + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextView *)initWithText:(NSString *)text backgroundColor:(id)backgroundColor {
    return [UITextView textViewWithText:text font:nil textColor:nil backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textView by text + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextView *)textViewWithText:(NSString *)text backgroundColor:(id)backgroundColor {
    return [UITextView textViewWithText:text font:nil textColor:nil backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textView by text + font + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextView *)initWithText:(NSString *)text font:(id)font backgroundColor:(id)backgroundColor {
    return [UITextView textViewWithText:text font:font textColor:nil backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textView by text + font + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextView *)textViewWithText:(NSString *)text font:(id)font backgroundColor:(id)backgroundColor {
    return [UITextView textViewWithText:text font:font textColor:nil backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textView by text + font + backgroundColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextView *)initWithText:(NSString *)text font:(id)font backgroundColor:(id)backgroundColor delegate:(id)delegate {
    return [UITextView textViewWithText:text font:font textColor:nil backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textView by text + font + backgroundColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextView *)textViewWithText:(NSString *)text font:(id)font backgroundColor:(id)backgroundColor delegate:(id)delegate {
    return [UITextView textViewWithText:text font:font textColor:nil backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textView by text + textColor + backgroundColor
 
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextView *)initWithText:(NSString *)text textColor:(id)textColor backgroundColor:(id)backgroundColor {
    return [UITextView textViewWithText:text font:nil textColor:textColor backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textView by text + textColor + backgroundColor
 
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextView *)textViewWithText:(NSString *)text textColor:(id)textColor backgroundColor:(id)backgroundColor {
    return [UITextView textViewWithText:text font:nil textColor:textColor backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textView by text + font + textColor + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextView *)initWithText:(NSString *)text font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor {
    return [UITextView textViewWithText:text font:font textColor:textColor backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textView by text + font + textColor + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextView *)textViewWithText:(NSString *)text font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor {
    return [UITextView textViewWithText:text font:font textColor:textColor backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textView by text + font + textColor + backgroundColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextView *)initWithText:(NSString *)text font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor delegate:(id)delegate {
    return [UITextView textViewWithText:text font:font textColor:textColor backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textView by text + font + textColor + backgroundColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextView *)textViewWithText:(NSString *)text font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor delegate:(id)delegate {
    return [UITextView textViewWithText:text font:font textColor:textColor backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textView by text + font + textColor + backgroundColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextView *)initWithText:(NSString *)text font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment {
    return [UITextView textViewWithText:text font:font textColor:textColor backgroundColor:backgroundColor textAlignment:textAlignment];
}

/**
 create textView by text + font + textColor + backgroundColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextView *)textViewWithText:(nullable NSString *)text font:(nullable id)font textColor:(nullable id)textColor backgroundColor:(nullable id)backgroundColor textAlignment:(NSTextAlignment)textAlignment {
    UITextView   *textView = [[UITextView alloc] init];
    textView.text = [NSString safeString:text];
    textView.font = [UIFont safeFont:font baseFont:FRG_TextViewBaseFontSize];
    textView.textColor = [UIColor safeColor:textColor baseColor:FRG_TextViewBaseColorHex];
    textView.backgroundColor = [UIColor safeColor:backgroundColor baseColor:[UIColor whiteColor]];
    if (textAlignment >= NSTextAlignmentLeft && textAlignment <= NSTextAlignmentNatural) {
        textView.textAlignment = textAlignment;
    }else {
        textView.textAlignment = NSTextAlignmentLeft;
    }
    return textView;
}

/**
 create textView by text + font + textColor + backgroundColor + textAlignment + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextView *)initWithText:(NSString *)text font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment delegate:(id)delegate {
    return [UITextView textViewWithText:text font:font textColor:textColor backgroundColor:backgroundColor textAlignment:textAlignment delegate:delegate];
}

/**
 create textView by text + font + textColor + backgroundColor + textAlignment + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextView *)textViewWithText:(nullable NSString *)text font:(nullable id)font textColor:(nullable id)textColor backgroundColor:(nullable id)backgroundColor textAlignment:(NSTextAlignment)textAlignment delegate:(id)delegate {
    UITextView   *textView = [UITextView textViewWithText:text font:font textColor:textColor backgroundColor:backgroundColor textAlignment:textAlignment];
    if (delegate) {
        textView.delegate = delegate;
    }
    return textView;
}

/**
 create textView by frame + text
 
 */
- (UITextView *)initWithFrame:(CGRect)frame text:(NSString *)text {
    return [UITextView textViewWithFrame:frame text:text font:nil textColor:nil backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textView by frame + text
 
 */
+ (UITextView *)textViewWithFrame:(CGRect)frame text:(NSString *)text {
    return [UITextView textViewWithFrame:frame text:text font:nil textColor:nil backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textView by frame + text + font
 
 @param font UIFont或者NSString或者NSNumber格式
 */
- (UITextView *)initWithFrame:(CGRect)frame text:(NSString *)text font:(id)font {
    return [UITextView textViewWithFrame:frame text:text font:font textColor:nil backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textView by frame + text + font
 
 @param font UIFont或者NSString或者NSNumber格式
 */
+ (UITextView *)textViewWithFrame:(CGRect)frame text:(NSString *)text font:(id)font {
    return [UITextView textViewWithFrame:frame text:text font:font textColor:nil backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textView by frame + text + font + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 */
- (UITextView *)initWithFrame:(CGRect)frame text:(NSString *)text font:(id)font delegate:(id)delegate {
    return [UITextView textViewWithFrame:frame text:text font:font textColor:nil backgroundColor:nil textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textView by frame + text + font + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 */
+ (UITextView *)textViewWithFrame:(CGRect)frame text:(NSString *)text font:(id)font delegate:(id)delegate {
    return [UITextView textViewWithFrame:frame text:text font:font textColor:nil backgroundColor:nil textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textView by frame + text + textColor
 
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UITextView *)initWithFrame:(CGRect)frame text:(NSString *)text textColor:(id)textColor {
    return [UITextView textViewWithFrame:frame text:text font:nil textColor:textColor backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textView by frame + text + textColor
 
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextView *)textViewWithFrame:(CGRect)frame text:(NSString *)text textColor:(id)textColor {
    return [UITextView textViewWithFrame:frame text:text font:nil textColor:textColor backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textView by frame + text + font + textColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UITextView *)initWithFrame:(CGRect)frame text:(NSString *)text font:(id)font textColor:(id)textColor {
    return [UITextView textViewWithFrame:frame text:text font:font textColor:textColor backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textView by frame + text + font + textColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextView *)textViewWithFrame:(CGRect)frame text:(NSString *)text font:(id)font textColor:(id)textColor {
    return [UITextView textViewWithFrame:frame text:text font:font textColor:textColor backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textView by frame + text + font + textColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UITextView *)initWithFrame:(CGRect)frame text:(NSString *)text font:(id)font textColor:(id)textColor delegate:(id)delegate {
    return [UITextView textViewWithFrame:frame text:text font:font textColor:textColor backgroundColor:nil textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textView by frame + text + font + textColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextView *)textViewWithFrame:(CGRect)frame text:(NSString *)text font:(id)font textColor:(id)textColor delegate:(id)delegate {
    return [UITextView textViewWithFrame:frame text:text font:font textColor:textColor backgroundColor:nil textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textView by frame + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextView *)initWithFrame:(CGRect)frame backgroundColor:(id)backgroundColor {
    return [UITextView textViewWithFrame:frame text:nil font:nil textColor:nil backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textView by frame + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextView *)textViewWithFrame:(CGRect)frame backgroundColor:(id)backgroundColor {
    return [UITextView textViewWithFrame:frame text:nil font:nil textColor:nil backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textView by frame + text + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextView *)initWithFrame:(CGRect)frame text:(NSString *)text backgroundColor:(id)backgroundColor {
    return [UITextView textViewWithFrame:frame text:text font:nil textColor:nil backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textView by frame + text + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextView *)textViewWithFrame:(CGRect)frame text:(NSString *)text backgroundColor:(id)backgroundColor {
    return [UITextView textViewWithFrame:frame text:text font:nil textColor:nil backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textView by frame + text + font + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextView *)initWithFrame:(CGRect)frame text:(NSString *)text font:(id)font backgroundColor:(id)backgroundColor {
    return [UITextView textViewWithFrame:frame text:text font:font textColor:nil backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textView by frame + text + font + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextView *)textViewWithFrame:(CGRect)frame text:(NSString *)text font:(id)font backgroundColor:(id)backgroundColor {
    return [UITextView textViewWithFrame:frame text:text font:font textColor:nil backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textView by frame + text + font + backgroundColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextView *)initWithFrame:(CGRect)frame text:(NSString *)text font:(id)font backgroundColor:(id)backgroundColor delegate:(id)delegate {
    return [UITextView textViewWithFrame:frame text:text font:font textColor:nil backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textView by frame + text + font + backgroundColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextView *)textViewWithFrame:(CGRect)frame text:(NSString *)text font:(id)font backgroundColor:(id)backgroundColor delegate:(id)delegate {
    return [UITextView textViewWithFrame:frame text:text font:font textColor:nil backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textView by frame + text + textColor + backgroundColor
 
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextView *)initWithFrame:(CGRect)frame text:(NSString *)text textColor:(id)textColor backgroundColor:(id)backgroundColor {
    return [UITextView textViewWithFrame:frame text:text font:nil textColor:textColor backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textView by frame + text + textColor + backgroundColor
 
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextView *)textViewWithFrame:(CGRect)frame text:(NSString *)text textColor:(id)textColor backgroundColor:(id)backgroundColor {
    return [UITextView textViewWithFrame:frame text:text font:nil textColor:textColor backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textView by frame + text + font + textColor + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextView *)initWithFrame:(CGRect)frame text:(NSString *)text font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor {
    return [UITextView textViewWithFrame:frame text:text font:font textColor:textColor backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textView by frame + text + font + textColor + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextView *)textViewWithFrame:(CGRect)frame text:(NSString *)text font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor {
    return [UITextView textViewWithFrame:frame text:text font:font textColor:textColor backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textView by frame + text + font + textColor + backgroundColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextView *)initWithFrame:(CGRect)frame text:(NSString *)text font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor delegate:(id)delegate {
    return [UITextView textViewWithFrame:frame text:text font:font textColor:textColor backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textView by frame + text + font + textColor + backgroundColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextView *)textViewWithFrame:(CGRect)frame text:(NSString *)text font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor delegate:(id)delegate {
    return [UITextView textViewWithFrame:frame text:text font:font textColor:textColor backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textView by frame + text + font + textColor + backgroundColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextView *)initWithFrame:(CGRect)frame text:(NSString *)text font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment {
    return [UITextView textViewWithFrame:frame text:text font:font textColor:textColor backgroundColor:backgroundColor textAlignment:textAlignment];
}

/**
 create textView by frame + text + font + textColor + backgroundColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextView *)textViewWithFrame:(CGRect)frame text:(nullable NSString *)text font:(nullable id)font textColor:(nullable id)textColor backgroundColor:(nullable id)backgroundColor textAlignment:(NSTextAlignment)textAlignment {
    UITextView   *textView = [UITextView textViewWithText:text font:font textColor:textColor backgroundColor:backgroundColor textAlignment:textAlignment];
    textView.frame = frame;
    return textView;
}

/**
 create textView by frame + text + font + textColor + backgroundColor + textAlignment
 + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextView *)initWithFrame:(CGRect)frame text:(NSString *)text font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment delegate:(id)delegate {
    return [UITextView textViewWithFrame:frame text:text font:font textColor:textColor backgroundColor:backgroundColor textAlignment:textAlignment delegate:delegate];
}

/**
 create textView by frame + text + font + textColor + backgroundColor + textAlignment
 + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextView *)textViewWithFrame:(CGRect)frame text:(nullable NSString *)text font:(nullable id)font textColor:(nullable id)textColor backgroundColor:(nullable id)backgroundColor textAlignment:(NSTextAlignment)textAlignment delegate:(id)delegate {
    UITextView   *textView = [UITextView textViewWithFrame:frame text:text font:font textColor:textColor backgroundColor:backgroundColor textAlignment:textAlignment];
    if (delegate) {
        textView.delegate = delegate;
    }
    return textView;
}

/**
 create textView by center and bounds
 
 */
- (UITextView *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds {
    return [UITextView textViewWithCenter:center bounds:bounds text:nil font:nil textColor:nil backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textView by center and bounds
 
 */
+ (UITextView *)textViewWithCenter:(CGPoint)center bounds:(CGRect)bounds {
    return [UITextView textViewWithCenter:center bounds:bounds text:nil font:nil textColor:nil backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textView by center and bounds + text
 
 */
- (UITextView *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text {
    return [UITextView textViewWithCenter:center bounds:bounds text:text font:nil textColor:nil backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textView by center and bounds + text
 
 */
+ (UITextView *)textViewWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text {
    return [UITextView textViewWithCenter:center bounds:bounds text:text font:nil textColor:nil backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textView by center and bounds + text + font
 
 @param font UIFont或者NSString或者NSNumber格式
 */
- (UITextView *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font {
    return [UITextView textViewWithCenter:center bounds:bounds text:text font:font textColor:nil backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textView by center and bounds + text + font
 
 @param font UIFont或者NSString或者NSNumber格式
 */
+ (UITextView *)textViewWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font {
    return [UITextView textViewWithCenter:center bounds:bounds text:text font:font textColor:nil backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textView by center and bounds + text + font + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 */
- (UITextView *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font delegate:(id)delegate {
    return [UITextView textViewWithCenter:center bounds:bounds text:text font:font textColor:nil backgroundColor:nil textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textView by center and bounds + text + font + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 */
+ (UITextView *)textViewWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font delegate:(id)delegate {
    return [UITextView textViewWithCenter:center bounds:bounds text:text font:font textColor:nil backgroundColor:nil textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textView by center and bounds + text + textColor
 
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UITextView *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text textColor:(id)textColor {
    return [UITextView textViewWithCenter:center bounds:bounds text:text font:nil textColor:textColor backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textView by center and bounds + text + textColor
 
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextView *)textViewWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text textColor:(id)textColor {
    return [UITextView textViewWithCenter:center bounds:bounds text:text font:nil textColor:textColor backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textView by center and bounds + text + font + textColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UITextView *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font textColor:(id)textColor {
    return [UITextView textViewWithCenter:center bounds:bounds text:text font:font textColor:textColor backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textView by center and bounds + text + font + textColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextView *)textViewWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font textColor:(id)textColor {
    return [UITextView textViewWithCenter:center bounds:bounds text:text font:font textColor:textColor backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textView by center and bounds + text + font + textColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UITextView *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font textColor:(id)textColor delegate:(id)delegate {
    return [UITextView textViewWithCenter:center bounds:bounds text:text font:font textColor:textColor backgroundColor:nil textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textView by center and bounds + text + font + textColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextView *)textViewWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font textColor:(id)textColor delegate:(id)delegate {
    return [UITextView textViewWithCenter:center bounds:bounds text:text font:font textColor:textColor backgroundColor:nil textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textView by center and bounds + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextView *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds backgroundColor:(id)backgroundColor {
    return [UITextView textViewWithCenter:center bounds:bounds text:nil font:nil textColor:nil backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textView by center and bounds + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextView *)textViewWithCenter:(CGPoint)center bounds:(CGRect)bounds backgroundColor:(id)backgroundColor {
    return [UITextView textViewWithCenter:center bounds:bounds text:nil font:nil textColor:nil backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textView by center and bounds + text + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextView *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text backgroundColor:(id)backgroundColor {
    return [UITextView textViewWithCenter:center bounds:bounds text:text font:nil textColor:nil backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textView by center and bounds + text + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextView *)textViewWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text backgroundColor:(id)backgroundColor {
    return [UITextView textViewWithCenter:center bounds:bounds text:text font:nil textColor:nil backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textView by center and bounds + text + font + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextView *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font backgroundColor:(id)backgroundColor {
    return [UITextView textViewWithCenter:center bounds:bounds text:text font:font textColor:nil backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textView by center and bounds + text + font + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextView *)textViewWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font backgroundColor:(id)backgroundColor {
    return [UITextView textViewWithCenter:center bounds:bounds text:text font:font textColor:nil backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textView by center and bounds + text + font + backgroundColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextView *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font backgroundColor:(id)backgroundColor delegate:(id)delegate {
     return [UITextView textViewWithCenter:center bounds:bounds text:text font:font textColor:nil backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textView by center and bounds + text + font + backgroundColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextView *)textViewWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font backgroundColor:(id)backgroundColor delegate:(id)delegate {
    return [UITextView textViewWithCenter:center bounds:bounds text:text font:font textColor:nil backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textView by center and bounds + text + textColor + backgroundColor
 
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextView *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text textColor:(id)textColor backgroundColor:(id)backgroundColor {
    return [UITextView textViewWithCenter:center bounds:bounds text:text font:nil textColor:textColor backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textView by center and bounds + text + textColor + backgroundColor
 
 @param textColor UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextView *)textViewWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text textColor:(id)textColor backgroundColor:(id)backgroundColor {
    return [UITextView textViewWithCenter:center bounds:bounds text:text font:nil textColor:textColor backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textView by center and bounds + text + font + textColor + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextView *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor {
    return [UITextView textViewWithCenter:center bounds:bounds text:text font:font textColor:textColor backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textView by center and bounds + text + font + textColor + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextView *)textViewWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor {
    return [UITextView textViewWithCenter:center bounds:bounds text:text font:font textColor:textColor backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textView by center and bounds + text + font + textColor + backgroundColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextView *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor delegate:(id)delegate {
    return [UITextView textViewWithCenter:center bounds:bounds text:text font:font textColor:textColor backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textView by center and bounds + text + font + textColor + backgroundColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextView *)textViewWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor delegate:(id)delegate {
    return [UITextView textViewWithCenter:center bounds:bounds text:text font:font textColor:textColor backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textView by center and bounds + text + font + textColor + backgroundColor
 + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextView *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment {
    return [UITextView textViewWithCenter:center bounds:bounds text:text font:font textColor:textColor backgroundColor:backgroundColor textAlignment:textAlignment];
}

/**
 create textView by center and bounds + text + font + textColor + backgroundColor
 + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextView *)textViewWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(nullable NSString *)text font:(nullable id)font textColor:(nullable id)textColor backgroundColor:(nullable id)backgroundColor textAlignment:(NSTextAlignment)textAlignment {
    UITextView   *textView = [UITextView textViewWithText:text font:font textColor:textColor backgroundColor:backgroundColor textAlignment:textAlignment];
    textView.center = center;
    textView.bounds = bounds;
    return textView;
}

/**
 create textView by center and bounds + text + font + textColor + backgroundColor
 + textAlignment + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextView *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment delegate:(id)delegate {
    return [UITextView textViewWithCenter:center bounds:bounds text:text font:font textColor:textColor backgroundColor:backgroundColor textAlignment:textAlignment delegate:delegate];
}

/**
 create textView by center and bounds + text + font + textColor + backgroundColor
 + textAlignment + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextView *)textViewWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(nullable NSString *)text font:(nullable id)font textColor:(nullable id)textColor backgroundColor:(nullable id)backgroundColor textAlignment:(NSTextAlignment)textAlignment delegate:(id)delegate {
    UITextView   *textView = [UITextView textViewWithCenter:center bounds:bounds text:text font:font textColor:textColor backgroundColor:backgroundColor textAlignment:textAlignment];
    if (delegate) {
        textView.delegate = delegate;
    }
    return textView;
}

#pragma clang diagnostic pop


/**
 设置行间距
 */
- (void)lineSpacing:(CGFloat)space {
    NSMutableAttributedString  *attributedString = nil;
    if (self.attributedText && self.attributedText.length > 0) {
        attributedString = [[NSMutableAttributedString alloc] initWithAttributedString:self.attributedText];
    }else {
        attributedString = [[NSMutableAttributedString alloc] initWithString:self.text];
    }
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    paragraphStyle.lineSpacing = space;
    NSRange range = NSMakeRange(0, attributedString.length);
    [attributedString addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:range];
    self.attributedText = attributedString;
}

/**
 设置字间距
 */
- (void)wordSpacing:(CGFloat)space {
    NSMutableAttributedString  *attributedString = nil;
    if (self.attributedText && self.attributedText.length > 0) {
        attributedString = [[NSMutableAttributedString alloc] initWithAttributedString:self.attributedText];
    }else {
        attributedString = [[NSMutableAttributedString alloc] initWithString:self.text];
    }
    [attributedString addAttribute:NSKernAttributeName value:@(space) range:NSMakeRange(0, attributedString.length)];
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    [attributedString addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:NSMakeRange(0, attributedString.length)];
    self.attributedText = attributedString;
}

/**
 设置行间距和字间距
 */
- (void)lineSpacing:(float)lineSpace wordSpacing:(float)wordSpace {
    NSMutableAttributedString  *attributedString = nil;
    if (self.attributedText && self.attributedText.length > 0) {
        attributedString = [[NSMutableAttributedString alloc] initWithAttributedString:self.attributedText];
    }else {
        attributedString = [[NSMutableAttributedString alloc] initWithString:self.text];
    }
    [attributedString addAttribute:NSKernAttributeName value:@(wordSpace) range:NSMakeRange(0, attributedString.length)];
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    paragraphStyle.lineSpacing = lineSpace;
    [attributedString addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:NSMakeRange(0, [self.text length])];
    self.attributedText = attributedString;
}

/**
 设置placeholder
 
 font 默认14
 color 默认cccccc
 */
- (void)placeholder:(NSString *)placeholder {
    [self placeholder:placeholder font:self.font color:@"c"];
}
/**
 设置placeholder
 
 @param font UIFont或者NSString或者NSNumber格式
 @param color UIColor或者NSString格式
 */
- (void)placeholder:(NSString *)placeholder font:(id)font color:(id)color {
    placeholder = [NSString safeString:placeholder];
    if (placeholder.length <= 0) {
        return;
    }
    CGFloat  fontstr = [UIFont safeFont:font].pointSize;
    UILabel   *placeholderLab = [UILabel labelWithFrame:CGRectMake(5, 10 * fontstr / 15.0, [placeholder boundingWidthForFont:font] + 3, 17) text:placeholder font:font textColor:color backgroundColor:[UIColor clearColor]];
    [self addSubview:placeholderLab];
    self.frg_placeholderLabel = placeholderLab;
    if (self.text.length > 0) {
        placeholderLab.hidden = YES;
    }
}

/**
 使用说明
 在- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text 代理中使用，返回真实的字符串
 
 */
- (NSString *)frg_shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {
    return [self.text stringByReplacingCharactersInRange:range withString:text];
}

/**
 使用说明
 在- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text 代理中使用，隐藏placeholderLabel并返回真实的字符串
 
 */
- (NSString *)frg_hiddenPlaceholder_shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {
    NSString   *new_text = [self.text stringByReplacingCharactersInRange:range withString:text];
    if (new_text.length > 0) {
        if (self.frg_placeholderLabel) {
            self.frg_placeholderLabel.hidden = YES;
        }
    }else {
        if (self.frg_placeholderLabel) {
            self.frg_placeholderLabel.hidden = NO;
        }
    }
    return new_text;
}

/**
 使用说明
 在- (void)textViewDidChange:(UITextView *)textView
 代理中使用，限制输入的字符串长度，并返回maxLength长度内字符串
 
 */
- (NSString *)frg_textViewDidChangeWithMaxLength:(NSInteger)maxLength {
    UITextRange  *selectedRange = [self markedTextRange];
    //获取高亮部分
    UITextPosition *pos = [self positionFromPosition:selectedRange.start offset:0];
    //如果在变化中是高亮部分在变，就不要计算字符了
    if (selectedRange && pos) {
        return self.text;
    }
    
    if ( (unsigned long)self.text.length > maxLength) {
        // 对超出的部分进行剪切
        self.text = [self.text substringToIndex:maxLength];
    }
    return self.text;
}


@end
