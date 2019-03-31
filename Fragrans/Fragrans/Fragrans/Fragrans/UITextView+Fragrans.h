//
//  UITextView+Fragrans.h
//  Fragrans
//
//  Created by qmz on 2019/3/7.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

static NSString   *const FRG_TextViewBaseFontSize = @"17";
static NSString   *const FRG_TextViewBaseColorHex = @"3";

@interface UITextView (Fragrans)

/**
 create textView by text
 
 */
- (UITextView *)initWithText:(NSString *)text;

/**
 create textView by text
 
 */
+ (UITextView *)textViewWithText:(NSString *)text;

/**
 create textView by text + font
 
 @param font UIFont或者NSString或者NSNumber格式
 */
- (UITextView *)initWithText:(NSString *)text font:(id)font;

/**
 create textView by text + font
 
 @param font UIFont或者NSString或者NSNumber格式
 */
+ (UITextView *)textViewWithText:(NSString *)text font:(id)font;

/**
 create textView by text + font + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 */
- (UITextView *)initWithText:(NSString *)text font:(id)font delegate:(id)delegate;

/**
 create textView by text + font + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 */
+ (UITextView *)textViewWithText:(NSString *)text font:(id)font delegate:(id)delegate;

/**
 create textView by text + textColor
 
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UITextView *)initWithText:(NSString *)text textColor:(id)textColor;

/**
 create textView by text + textColor
 
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextView *)textViewWithText:(NSString *)text textColor:(id)textColor;

/**
 create textView by text + font + textColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UITextView *)initWithText:(NSString *)text font:(id)font textColor:(id)textColor;

/**
 create textView by text + font + textColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextView *)textViewWithText:(NSString *)text font:(id)font textColor:(id)textColor;

/**
 create textView by text + font + textColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UITextView *)initWithText:(NSString *)text font:(id)font textColor:(id)textColor delegate:(id)delegate;

/**
 create textView by text + font + textColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextView *)textViewWithText:(NSString *)text font:(id)font textColor:(id)textColor delegate:(id)delegate;

/**
 create textView by backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextView *)initWithBackgroundColor:(id)backgroundColor;

/**
 create textView by backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextView *)textViewWithBackgroundColor:(id)backgroundColor;

/**
 create textView by text + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextView *)initWithText:(NSString *)text backgroundColor:(id)backgroundColor;

/**
 create textView by text + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextView *)textViewWithText:(NSString *)text backgroundColor:(id)backgroundColor;

/**
 create textView by text + font + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextView *)initWithText:(NSString *)text font:(id)font backgroundColor:(id)backgroundColor;

/**
 create textView by text + font + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextView *)textViewWithText:(NSString *)text font:(id)font backgroundColor:(id)backgroundColor;

/**
 create textView by text + font + backgroundColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextView *)initWithText:(NSString *)text font:(id)font backgroundColor:(id)backgroundColor delegate:(id)delegate;

/**
 create textView by text + font + backgroundColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextView *)textViewWithText:(NSString *)text font:(id)font backgroundColor:(id)backgroundColor delegate:(id)delegate;

/**
 create textView by text + textColor + backgroundColor
 
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextView *)initWithText:(NSString *)text textColor:(id)textColor backgroundColor:(id)backgroundColor;

/**
 create textView by text + textColor + backgroundColor
 
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextView *)textViewWithText:(NSString *)text textColor:(id)textColor backgroundColor:(id)backgroundColor;

/**
 create textView by text + font + textColor + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextView *)initWithText:(NSString *)text font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor;

/**
 create textView by text + font + textColor + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextView *)textViewWithText:(NSString *)text font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor;

/**
 create textView by text + font + textColor + backgroundColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextView *)initWithText:(NSString *)text font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor delegate:(id)delegate;

/**
 create textView by text + font + textColor + backgroundColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextView *)textViewWithText:(NSString *)text font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor delegate:(id)delegate;

/**
 create textView by text + font + textColor + backgroundColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextView *)initWithText:(NSString *)text font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment;

/**
 create textView by text + font + textColor + backgroundColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextView *)textViewWithText:(nullable NSString *)text font:(nullable id)font textColor:(nullable id)textColor backgroundColor:(nullable id)backgroundColor textAlignment:(NSTextAlignment)textAlignment;

/**
 create textView by text + font + textColor + backgroundColor + textAlignment + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextView *)initWithText:(NSString *)text font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment delegate:(id)delegate;

/**
 create textView by text + font + textColor + backgroundColor + textAlignment + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextView *)textViewWithText:(nullable NSString *)text font:(nullable id)font textColor:(nullable id)textColor backgroundColor:(nullable id)backgroundColor textAlignment:(NSTextAlignment)textAlignment delegate:(id)delegate;

/**
 create textView by frame + text
 
 */
- (UITextView *)initWithFrame:(CGRect)frame text:(NSString *)text;

/**
 create textView by frame + text
 
 */
+ (UITextView *)textViewWithFrame:(CGRect)frame text:(NSString *)text;

/**
 create textView by frame + text + font
 
 @param font UIFont或者NSString或者NSNumber格式
 */
- (UITextView *)initWithFrame:(CGRect)frame text:(NSString *)text font:(id)font;

/**
 create textView by frame + text + font
 
 @param font UIFont或者NSString或者NSNumber格式
 */
+ (UITextView *)textViewWithFrame:(CGRect)frame text:(NSString *)text font:(id)font;

/**
 create textView by frame + text + font + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 */
- (UITextView *)initWithFrame:(CGRect)frame text:(NSString *)text font:(id)font delegate:(id)delegate;

/**
 create textView by frame + text + font + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 */
+ (UITextView *)textViewWithFrame:(CGRect)frame text:(NSString *)text font:(id)font delegate:(id)delegate;

/**
 create textView by frame + text + textColor
 
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UITextView *)initWithFrame:(CGRect)frame text:(NSString *)text textColor:(id)textColor;

/**
 create textView by frame + text + textColor
 
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextView *)textViewWithFrame:(CGRect)frame text:(NSString *)text textColor:(id)textColor;

/**
 create textView by frame + text + font + textColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UITextView *)initWithFrame:(CGRect)frame text:(NSString *)text font:(id)font textColor:(id)textColor;

/**
 create textView by frame + text + font + textColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextView *)textViewWithFrame:(CGRect)frame text:(NSString *)text font:(id)font textColor:(id)textColor;

/**
 create textView by frame + text + font + textColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UITextView *)initWithFrame:(CGRect)frame text:(NSString *)text font:(id)font textColor:(id)textColor delegate:(id)delegate;

/**
 create textView by frame + text + font + textColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextView *)textViewWithFrame:(CGRect)frame text:(NSString *)text font:(id)font textColor:(id)textColor delegate:(id)delegate;

/**
 create textView by frame + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextView *)initWithFrame:(CGRect)frame backgroundColor:(id)backgroundColor;

/**
 create textView by frame + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextView *)textViewWithFrame:(CGRect)frame backgroundColor:(id)backgroundColor;

/**
 create textView by frame + text + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextView *)initWithFrame:(CGRect)frame text:(NSString *)text backgroundColor:(id)backgroundColor;

/**
 create textView by frame + text + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextView *)textViewWithFrame:(CGRect)frame text:(NSString *)text backgroundColor:(id)backgroundColor;

/**
 create textView by frame + text + font + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextView *)initWithFrame:(CGRect)frame text:(NSString *)text font:(id)font backgroundColor:(id)backgroundColor;

/**
 create textView by frame + text + font + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextView *)textViewWithFrame:(CGRect)frame text:(NSString *)text font:(id)font backgroundColor:(id)backgroundColor;

/**
 create textView by frame + text + font + backgroundColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextView *)initWithFrame:(CGRect)frame text:(NSString *)text font:(id)font backgroundColor:(id)backgroundColor delegate:(id)delegate;

/**
 create textView by frame + text + font + backgroundColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextView *)textViewWithFrame:(CGRect)frame text:(NSString *)text font:(id)font backgroundColor:(id)backgroundColor delegate:(id)delegate;

/**
 create textView by frame + text + textColor + backgroundColor
 
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextView *)initWithFrame:(CGRect)frame text:(NSString *)text textColor:(id)textColor backgroundColor:(id)backgroundColor;

/**
 create textView by frame + text + textColor + backgroundColor
 
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextView *)textViewWithFrame:(CGRect)frame text:(NSString *)text textColor:(id)textColor backgroundColor:(id)backgroundColor;

/**
 create textView by frame + text + font + textColor + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextView *)initWithFrame:(CGRect)frame text:(NSString *)text font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor;

/**
 create textView by frame + text + font + textColor + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextView *)textViewWithFrame:(CGRect)frame text:(NSString *)text font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor;

/**
 create textView by frame + text + font + textColor + backgroundColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextView *)initWithFrame:(CGRect)frame text:(NSString *)text font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor delegate:(id)delegate;

/**
 create textView by frame + text + font + textColor + backgroundColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextView *)textViewWithFrame:(CGRect)frame text:(NSString *)text font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor delegate:(id)delegate;

/**
 create textView by frame + text + font + textColor + backgroundColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextView *)initWithFrame:(CGRect)frame text:(NSString *)text font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment;

/**
 create textView by frame + text + font + textColor + backgroundColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextView *)textViewWithFrame:(CGRect)frame text:(nullable NSString *)text font:(nullable id)font textColor:(nullable id)textColor backgroundColor:(nullable id)backgroundColor textAlignment:(NSTextAlignment)textAlignment;

/**
 create textView by frame + text + font + textColor + backgroundColor + textAlignment
 + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextView *)initWithFrame:(CGRect)frame text:(NSString *)text font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment delegate:(id)delegate;

/**
 create textView by frame + text + font + textColor + backgroundColor + textAlignment
 + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextView *)textViewWithFrame:(CGRect)frame text:(nullable NSString *)text font:(nullable id)font textColor:(nullable id)textColor backgroundColor:(nullable id)backgroundColor textAlignment:(NSTextAlignment)textAlignment delegate:(id)delegate;

/**
 create textView by center and bounds
 
 */
- (UITextView *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds;

/**
 create textView by center and bounds
 
 */
+ (UITextView *)textViewWithCenter:(CGPoint)center bounds:(CGRect)bounds;

/**
 create textView by center and bounds + text
 
 */
- (UITextView *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text;

/**
 create textView by center and bounds + text
 
 */
+ (UITextView *)textViewWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text;

/**
 create textView by center and bounds + text + font
 
 @param font UIFont或者NSString或者NSNumber格式
 */
- (UITextView *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font;

/**
 create textView by center and bounds + text + font
 
 @param font UIFont或者NSString或者NSNumber格式
 */
+ (UITextView *)textViewWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font;

/**
 create textView by center and bounds + text + font + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 */
- (UITextView *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font delegate:(id)delegate;

/**
 create textView by center and bounds + text + font + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 */
+ (UITextView *)textViewWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font delegate:(id)delegate;

/**
 create textView by center and bounds + text + textColor
 
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UITextView *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text textColor:(id)textColor;

/**
 create textView by center and bounds + text + textColor
 
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextView *)textViewWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text textColor:(id)textColor;

/**
 create textView by center and bounds + text + font + textColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UITextView *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font textColor:(id)textColor;

/**
 create textView by center and bounds + text + font + textColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextView *)textViewWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font textColor:(id)textColor;

/**
 create textView by center and bounds + text + font + textColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UITextView *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font textColor:(id)textColor delegate:(id)delegate;

/**
 create textView by center and bounds + text + font + textColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextView *)textViewWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font textColor:(id)textColor delegate:(id)delegate;

/**
 create textView by center and bounds + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextView *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds backgroundColor:(id)backgroundColor;

/**
 create textView by center and bounds + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextView *)textViewWithCenter:(CGPoint)center bounds:(CGRect)bounds backgroundColor:(id)backgroundColor;

/**
 create textView by center and bounds + text + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextView *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text backgroundColor:(id)backgroundColor;

/**
 create textView by center and bounds + text + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextView *)textViewWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text backgroundColor:(id)backgroundColor;

/**
 create textView by center and bounds + text + font + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextView *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font backgroundColor:(id)backgroundColor;

/**
 create textView by center and bounds + text + font + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextView *)textViewWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font backgroundColor:(id)backgroundColor;

/**
 create textView by center and bounds + text + font + backgroundColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextView *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font backgroundColor:(id)backgroundColor delegate:(id)delegate;

/**
 create textView by center and bounds + text + font + backgroundColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextView *)textViewWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font backgroundColor:(id)backgroundColor delegate:(id)delegate;

/**
 create textView by center and bounds + text + textColor + backgroundColor
 
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextView *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text textColor:(id)textColor backgroundColor:(id)backgroundColor;

/**
 create textView by center and bounds + text + textColor + backgroundColor
 
 @param textColor UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextView *)textViewWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text textColor:(id)textColor backgroundColor:(id)backgroundColor;

/**
 create textView by center and bounds + text + font + textColor + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextView *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor;

/**
 create textView by center and bounds + text + font + textColor + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextView *)textViewWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor;

/**
 create textView by center and bounds + text + font + textColor + backgroundColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextView *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor delegate:(id)delegate;

/**
 create textView by center and bounds + text + font + textColor + backgroundColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextView *)textViewWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor delegate:(id)delegate;

/**
 create textView by center and bounds + text + font + textColor + backgroundColor
 + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextView *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment;

/**
 create textView by center and bounds + text + font + textColor + backgroundColor
 + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextView *)textViewWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(nullable NSString *)text font:(nullable id)font textColor:(nullable id)textColor backgroundColor:(nullable id)backgroundColor textAlignment:(NSTextAlignment)textAlignment;

/**
 create textView by center and bounds + text + font + textColor + backgroundColor
 + textAlignment + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextView *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment delegate:(id)delegate;

/**
 create textView by center and bounds + text + font + textColor + backgroundColor
 + textAlignment + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextView *)textViewWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(nullable NSString *)text font:(nullable id)font textColor:(nullable id)textColor backgroundColor:(nullable id)backgroundColor textAlignment:(NSTextAlignment)textAlignment delegate:(id)delegate;

/**
 设置行间距
 */
- (void)lineSpacing:(CGFloat)space;

/**
 设置字间距
 */
- (void)wordSpacing:(CGFloat)space;

/**
 设置行间距和字间距
 需要监听textField.text的变化
 
 */
- (void)lineSpacing:(float)lineSpace wordSpacing:(float)wordSpace;

/**
 placeholder属性label
 
 可通过- (void)placeholder:(NSString *)placeholder font:(id)font color:(id)color;等方法设置
 */
@property (nonatomic,readonly,strong)UILabel   *frg_placeholderLabel;

/**
 设置placeholder
 
 font 默认14
 color 默认cccccc
 */
- (void)placeholder:(NSString *)placeholder;

/**
 设置placeholder
 
 @param font UIFont或者NSString或者NSNumber格式
 @param color UIColor或者NSString格式
 */
- (void)placeholder:(NSString *)placeholder font:(id)font color:(id)color;

/**
 使用说明
在- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text 代理中使用，返回真实的字符串
 
 */
- (NSString *)frg_shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text;

/**
 使用说明
 在- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text 代理中使用，隐藏placeholderLabel并返回真实的字符串
 
 */
- (NSString *)frg_hiddenPlaceholder_shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text;

/**
 使用说明
 在- (void)textViewDidChange:(UITextView *)textView
 代理中使用，限制输入的字符串长度，并返回maxLength长度内字符串
 
 */
- (NSString *)frg_textViewDidChangeWithMaxLength:(NSInteger)maxLength;




@end

NS_ASSUME_NONNULL_END
