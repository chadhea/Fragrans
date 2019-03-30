//
//  UITextField+Fragrans.h
//  Fragrans
//
//  Created by qmz on 2019/2/28.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

static NSString   *const FRG_TextFieldBaseFontSize = @"17";
static NSString   *const FRG_TextFieldBaseColorHex = @"3";

typedef  void(^frg_inputMaxLengthBlock)(void);

@interface UITextField (Fragrans)

@property (nonatomic,assign)NSInteger   FRG_TextFieldMaxLength;
@property (nonatomic,copy) frg_inputMaxLengthBlock frg_maxLengthBlock;

/**
 create textField by text
 */
- (UITextField *)initWithText:(NSString *)text;

/**
 create textField by text
 */
+ (UITextField *)textFieldWithText:(NSString *)text;

/**
 create textField by text + font
 
 @param font UIFont或者NSString或者NSNumber格式
 */
- (UITextField *)initWithText:(NSString *)text font:(id)font;

/**
 create textField by text + font
 
 @param font UIFont或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithText:(NSString *)text font:(id)font;

/**
 create textField by text + font + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 */
- (UITextField *)initWithText:(NSString *)text font:(id)font delegate:(id)delegate;

/**
 create textField by text + font + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithText:(NSString *)text font:(id)font delegate:(id)delegate;

/**
 create textField by text + font + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 */
- (UITextField *)initWithText:(NSString *)text font:(id)font textAlignment:(NSTextAlignment)textAlignment;

/**
 create textField by text + font + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithText:(NSString *)text font:(id)font textAlignment:(NSTextAlignment)textAlignment;

/**
 create textField by placeholder
 */
- (UITextField *)initWithPlaceholder:(NSString *)placeholder;

/**
 create textField by placeholder
 */
+ (UITextField *)textFieldWithPlaceholder:(NSString *)placeholder;

/**
 create textField by placeholder  + font
 
 @param font UIFont或者NSString或者NSNumber格式
 */
- (UITextField *)initWithPlaceholder:(NSString *)placeholder font:(id)font;

/**
 create textField by placeholder  + font
 
 @param font UIFont或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithPlaceholder:(NSString *)placeholder font:(id)font;

/**
 create textField by placeholder  + font + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 */
- (UITextField *)initWithPlaceholder:(NSString *)placeholder font:(id)font delegate:(id)delegate;

/**
 create textField by placeholder  + font + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithPlaceholder:(NSString *)placeholder font:(id)font delegate:(id)delegate;

/**
 create textField by placeholder  + font + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 */
- (UITextField *)initWithPlaceholder:(NSString *)placeholder font:(id)font textAlignment:(NSTextAlignment)textAlignment;

/**
 create textField by placeholder  + font + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithPlaceholder:(NSString *)placeholder font:(id)font textAlignment:(NSTextAlignment)textAlignment;

/**
 create textField by text + placeholder
 */
- (UITextField *)initWithText:(NSString *)text placeholder:(NSString *)placeholder;

/**
 create textField by text + placeholder
 */
+ (UITextField *)textFieldWithText:(NSString *)text placeholder:(NSString *)placeholder;

/**
 create textField by text + placeholder + font
 
 @param font UIFont或者NSString或者NSNumber格式
 */
- (UITextField *)initWithText:(NSString *)text placeholder:(NSString *)placeholder font:(id)font;

/**
 create textField by text + placeholder + font
 
 @param font UIFont或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithText:(NSString *)text placeholder:(NSString *)placeholder font:(id)font;

/**
 create textField by text + placeholder + font + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 */
- (UITextField *)initWithText:(NSString *)text placeholder:(NSString *)placeholder font:(id)font delegate:(id)delegate;

/**
 create textField by text + placeholder + font + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithText:(NSString *)text placeholder:(NSString *)placeholder font:(id)font delegate:(id)delegate;

/**
 create textField by text + placeholder + font + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 */
- (UITextField *)initWithText:(NSString *)text placeholder:(NSString *)placeholder font:(id)font textAlignment:(NSTextAlignment)textAlignment;

/**
 create textField by text + placeholder + font + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithText:(NSString *)text placeholder:(NSString *)placeholder font:(id)font textAlignment:(NSTextAlignment)textAlignment;

/**
 create textField by backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithBackgroundColor:(id)backgroundColor;

/**
 create textField by backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithBackgroundColor:(id)backgroundColor;

/**
 create textField by text + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithText:(NSString *)text backgroundColor:(id)backgroundColor;

/**
 create textField by text + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithText:(NSString *)text backgroundColor:(id)backgroundColor;

/**
 create textField by placeholder + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithPlaceholder:(NSString *)placeholder backgroundColor:(id)backgroundColor;

/**
 create textField by placeholder + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithPlaceholder:(NSString *)placeholder backgroundColor:(id)backgroundColor;

/**
 create textField by text + font + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithText:(NSString *)text font:(id)font backgroundColor:(id)backgroundColor;

/**
 create textField by text + font + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithText:(NSString *)text font:(id)font backgroundColor:(id)backgroundColor;

/**
 create textField by text + font + backgroundColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithText:(NSString *)text font:(id)font backgroundColor:(id)backgroundColor delegate:(id)delegate;

/**
 create textField by text + font + backgroundColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithText:(NSString *)text font:(id)font backgroundColor:(id)backgroundColor delegate:(id)delegate;

/**
 create textField by placeholder + font + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithPlaceholder:(NSString *)placeholder font:(id)font backgroundColor:(id)backgroundColor;

/**
 create textField by placeholder + font + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithPlaceholder:(NSString *)placeholder font:(id)font backgroundColor:(id)backgroundColor;

/**
 create textField by placeholder + font + backgroundColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithPlaceholder:(NSString *)placeholder font:(id)font backgroundColor:(id)backgroundColor delegate:(id)delegate;

/**
 create textField by placeholder + font + backgroundColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithPlaceholder:(NSString *)placeholder font:(id)font backgroundColor:(id)backgroundColor delegate:(id)delegate;

/**
 create textField by text + font + backgroundColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithText:(NSString *)text font:(id)font backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment;

/**
 create textField by text + font + backgroundColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithText:(NSString *)text font:(id)font backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment;

/**
 create textField by placeholder + font + backgroundColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithPlaceholder:(NSString *)placeholder font:(id)font backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment;

/**
 create textField by placeholder + font + backgroundColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithPlaceholder:(NSString *)placeholder font:(id)font backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment;

/**
 create textField by text + placeholder + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithText:(NSString *)text placeholder:(NSString *)placeholder backgroundColor:(id)backgroundColor;

/**
 create textField by text + placeholder + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithText:(NSString *)text placeholder:(NSString *)placeholder backgroundColor:(id)backgroundColor;

/**
 create textField by text + placeholder + font + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithText:(NSString *)text placeholder:(NSString *)placeholder font:(id)font backgroundColor:(id)backgroundColor;

/**
 create textField by text + placeholder + font + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithText:(NSString *)text placeholder:(NSString *)placeholder font:(id)font backgroundColor:(id)backgroundColor;

/**
 create textField by text + placeholder + font + backgroundColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithText:(NSString *)text placeholder:(NSString *)placeholder font:(id)font backgroundColor:(id)backgroundColor delegate:(id)delegate;

/**
 create textField by text + placeholder + font + backgroundColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithText:(NSString *)text placeholder:(NSString *)placeholder font:(id)font backgroundColor:(id)backgroundColor delegate:(id)delegate;

/**
 create textField by text + placeholder + font + backgroundColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithText:(NSString *)text placeholder:(NSString *)placeholder font:(id)font backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment;

/**
 create textField by text + placeholder + font + backgroundColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithText:(NSString *)text placeholder:(NSString *)placeholder font:(id)font backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment;

/**
 create textField by text + textColor
 
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithText:(NSString *)text textColor:(id)textColor;

/**
 create textField by text + textColor
 
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithText:(NSString *)text textColor:(id)textColor;

/**
 create textField by placeholder + textColor
 
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithPlaceholder:(NSString *)placeholder textColor:(id)textColor;

/**
 create textField by placeholder + textColor
 
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithPlaceholder:(NSString *)placeholder textColor:(id)textColor;

/**
 create textField by text + font + textColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithText:(NSString *)text font:(id)font textColor:(id)textColor;

/**
 create textField by text + font + textColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithText:(NSString *)text font:(id)font textColor:(id)textColor;

/**
 create textField by text + font + textColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithText:(NSString *)text font:(id)font textColor:(id)textColor delegate:(id)delegate;

/**
 create textField by text + font + textColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithText:(NSString *)text font:(id)font textColor:(id)textColor delegate:(id)delegate;

/**
 create textField by placeholder + font + textColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithPlaceholder:(NSString *)placeholder font:(id)font textColor:(id)textColor;

/**
 create textField by placeholder + font + textColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithPlaceholder:(NSString *)placeholder font:(id)font textColor:(id)textColor;

/**
 create textField by placeholder + font + textColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithPlaceholder:(NSString *)placeholder font:(id)font textColor:(id)textColor delegate:(id)delegate;

/**
 create textField by placeholder + font + textColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithPlaceholder:(NSString *)placeholder font:(id)font textColor:(id)textColor delegate:(id)delegate;

/**
 create textField by text + font + textColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithText:(NSString *)text font:(id)font textColor:(id)textColor textAlignment:(NSTextAlignment)textAlignment;

/**
 create textField by text + font + textColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithText:(NSString *)text font:(id)font textColor:(id)textColor textAlignment:(NSTextAlignment)textAlignment;

/**
 create textField by placeholder + font + textColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithPlaceholder:(NSString *)placeholder font:(id)font textColor:(id)textColor textAlignment:(NSTextAlignment)textAlignment;

/**
 create textField by placeholder + font + textColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithPlaceholder:(NSString *)placeholder font:(id)font textColor:(id)textColor textAlignment:(NSTextAlignment)textAlignment;

/**
 create textField by text + textColor + backgroundColor
 
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithText:(NSString *)text textColor:(id)textColor backgroundColor:(id)backgroundColor;

/**
 create textField by text + textColor + backgroundColor
 
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithText:(NSString *)text textColor:(id)textColor backgroundColor:(id)backgroundColor;

/**
 create textField by text + font + textColor + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithText:(NSString *)text font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor;

/**
 create textField by text + font + textColor + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithText:(NSString *)text font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor;

/**
 create textField by text + font + textColor + backgroundColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithText:(NSString *)text font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor delegate:(id)delegate;

/**
 create textField by text + font + textColor + backgroundColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithText:(NSString *)text font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor delegate:(id)delegate;

/**
 create textField by text + font + textColor + backgroundColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithText:(NSString *)text font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment;

/**
 create textField by text + font + textColor + backgroundColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithText:(NSString *)text font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment;

/**
 create textField by placeholder + font + textColor + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithPlaceholder:(NSString *)placeholder font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor;

/**
 create textField by placeholder + font + textColor + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithPlaceholder:(NSString *)placeholder font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor;

/**
 create textField by placeholder + font + textColor + backgroundColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithPlaceholder:(NSString *)placeholder font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor delegate:(id)delegate;

/**
 create textField by placeholder + font + textColor + backgroundColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithPlaceholder:(NSString *)placeholder font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor delegate:(id)delegate;

/**
 create textField by placeholder + font + textColor + backgroundColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithPlaceholder:(NSString *)placeholder font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment;

/**
 create textField by placeholder + font + textColor + backgroundColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithPlaceholder:(NSString *)placeholder font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment;

/**
 create textField by text + placeholder + textColor
 
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithText:(NSString *)text placeholder:(NSString *)placeholder textColor:(id)textColor;

/**
 create textField by text + placeholder + textColor
 
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithText:(NSString *)text placeholder:(NSString *)placeholder textColor:(id)textColor;

/**
 create textField by text + placeholder + font + textColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithText:(NSString *)text placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor;

/**
 create textField by text + placeholder + font + textColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithText:(NSString *)text placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor;

/**
 create textField by text + placeholder + font + textColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithText:(NSString *)text placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor delegate:(id)delegate;

/**
 create textField by text + placeholder + font + textColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithText:(NSString *)text placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor delegate:(id)delegate;

/**
 create textField by text + placeholder  + textColor + backgroundColor
 
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithText:(NSString *)text placeholder:(NSString *)placeholder textColor:(id)textColor backgroundColor:(id)backgroundColor;

/**
 create textField by text + placeholder  + textColor + backgroundColor
 
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithText:(NSString *)text placeholder:(NSString *)placeholder textColor:(id)textColor backgroundColor:(id)backgroundColor;

/**
 create textField by text + placeholder + font + textColor + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithText:(NSString *)text placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor;

/**
 create textField by text + placeholder + font + textColor + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithText:(NSString *)text placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor;

/**
 create textField by text + placeholder + font + textColor + backgroundColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithText:(NSString *)text placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor delegate:(id)delegate;

/**
 create textField by text + placeholder + font + textColor + backgroundColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithText:(NSString *)text placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor delegate:(id)delegate;

/**
 create textField by text + placeholder + font + textColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithText:(NSString *)text placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor textAlignment:(NSTextAlignment)textAlignment;

/**
 create textField by text + placeholder + font + textColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithText:(NSString *)text placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor textAlignment:(NSTextAlignment)textAlignment;

/**
 create textField by text + placeholder + font + textColor + backgroundColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithText:(NSString *)text placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment;

/**
 create textField by text + placeholder + font + textColor + backgroundColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithText:(nullable NSString *)text placeholder:(nullable NSString *)placeholder font:(nullable id)font textColor:(nullable id)textColor backgroundColor:(nullable id)backgroundColor textAlignment:(NSTextAlignment)textAlignment;

/**
 create textField by text + placeholder + font + textColor + backgroundColor + textAlignment
 + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithText:(NSString *)text placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment delegate:(id)delegate;

/**
 create textField by text + placeholder + font + textColor + backgroundColor + textAlignment
 + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithText:(nullable NSString *)text placeholder:(nullable NSString *)placeholder font:(nullable id)font textColor:(nullable id)textColor backgroundColor:(nullable id)backgroundColor textAlignment:(NSTextAlignment)textAlignment  delegate:(id)delegate;

/**
 create textField by frame + text
 */
- (UITextField *)initWithFrame:(CGRect)frame text:(NSString *)text;

/**
 create textField by frame + text
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame text:(NSString *)text;

/**
 create textField by frame + text + font
 
 @param font UIFont或者NSString或者NSNumber格式
 */
- (UITextField *)initWithFrame:(CGRect)frame text:(NSString *)text font:(id)font;

/**
 create textField by frame + text + font
 
 @param font UIFont或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame text:(NSString *)text font:(id)font;

/**
 create textField by frame + text + font + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 */
- (UITextField *)initWithFrame:(CGRect)frame text:(NSString *)text font:(id)font delegate:(id)delegate;

/**
 create textField by frame + text + font + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame text:(NSString *)text font:(id)font delegate:(id)delegate;

/**
 create textField by frame + text + font + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 */
- (UITextField *)initWithFrame:(CGRect)frame text:(NSString *)text font:(id)font textAlignment:(NSTextAlignment)textAlignment;

/**
 create textField by frame + text + font + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame text:(NSString *)text font:(id)font textAlignment:(NSTextAlignment)textAlignment;

/**
 create textField by frame + placeholder
 */
- (UITextField *)initWithFrame:(CGRect)frame placeholder:(NSString *)placeholder;

/**
 create textField by frame + placeholder
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame placeholder:(NSString *)placeholder;

/**
 create textField by frame + placeholder  + font
 
 @param font UIFont或者NSString或者NSNumber格式
 */
- (UITextField *)initWithFrame:(CGRect)frame placeholder:(NSString *)placeholder font:(id)font;

/**
 create textField by frame + placeholder  + font
 
 @param font UIFont或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame placeholder:(NSString *)placeholder font:(id)font;

/**
 create textField by frame + placeholder  + font + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 */
- (UITextField *)initWithFrame:(CGRect)frame placeholder:(NSString *)placeholder font:(id)font delegate:(id)delegate;

/**
 create textField by frame + placeholder  + font + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame placeholder:(NSString *)placeholder font:(id)font delegate:(id)delegate;

/**
 create textField by frame + placeholder  + font + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 */
- (UITextField *)initWithFrame:(CGRect)frame placeholder:(NSString *)placeholder font:(id)font textAlignment:(NSTextAlignment)textAlignment;

/**
 create textField by frame + placeholder  + font + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame placeholder:(NSString *)placeholder font:(id)font textAlignment:(NSTextAlignment)textAlignment;

/**
 create textField by frame + text + placeholder
 */
- (UITextField *)initWithFrame:(CGRect)frame text:(NSString *)text placeholder:(NSString *)placeholder;

/**
 create textField by frame + text + placeholder
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame text:(NSString *)text placeholder:(NSString *)placeholder;

/**
 create textField by frame + text + placeholder + font
 
 @param font UIFont或者NSString或者NSNumber格式
 */
- (UITextField *)initWithFrame:(CGRect)frame text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font;

/**
 create textField by frame + text + placeholder + font
 
 @param font UIFont或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font;

/**
 create textField by frame + text + placeholder + font + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 */
- (UITextField *)initWithFrame:(CGRect)frame text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font delegate:(id)delegate;

/**
 create textField by frame + text + placeholder + font + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font delegate:(id)delegate;

/**
 create textField by frame + text + placeholder + font + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 */
- (UITextField *)initWithFrame:(CGRect)frame text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font textAlignment:(NSTextAlignment)textAlignment;

/**
 create textField by frame + text + placeholder + font + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font textAlignment:(NSTextAlignment)textAlignment;

/**
 create textField by frame + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithFrame:(CGRect)frame backgroundColor:(id)backgroundColor;

/**
 create textField by frame + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame backgroundColor:(id)backgroundColor;

/**
 create textField by frame + text + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithFrame:(CGRect)frame text:(NSString *)text backgroundColor:(id)backgroundColor;

/**
 create textField by frame + text + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame text:(NSString *)text backgroundColor:(id)backgroundColor;

/**
 create textField by frame + placeholder + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithFrame:(CGRect)frame placeholder:(NSString *)placeholder backgroundColor:(id)backgroundColor;

/**
 create textField by frame + placeholder + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame placeholder:(NSString *)placeholder backgroundColor:(id)backgroundColor;

/**
 create textField by frame + text + font + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithFrame:(CGRect)frame text:(NSString *)text font:(id)font backgroundColor:(id)backgroundColor;

/**
 create textField by frame + text + font + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame text:(NSString *)text font:(id)font backgroundColor:(id)backgroundColor;

/**
 create textField by frame + text + font + backgroundColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithFrame:(CGRect)frame text:(NSString *)text font:(id)font backgroundColor:(id)backgroundColor delegate:(id)delegate;

/**
 create textField by frame + text + font + backgroundColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame text:(NSString *)text font:(id)font backgroundColor:(id)backgroundColor delegate:(id)delegate;

/**
 create textField by frame + placeholder + font + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithFrame:(CGRect)frame placeholder:(NSString *)placeholder font:(id)font backgroundColor:(id)backgroundColor;

/**
 create textField by frame + placeholder + font + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame placeholder:(NSString *)placeholder font:(id)font backgroundColor:(id)backgroundColor;

/**
 create textField by frame + placeholder + font + backgroundColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithFrame:(CGRect)frame placeholder:(NSString *)placeholder font:(id)font backgroundColor:(id)backgroundColor delegate:(id)delegate;

/**
 create textField by frame + placeholder + font + backgroundColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame placeholder:(NSString *)placeholder font:(id)font backgroundColor:(id)backgroundColor delegate:(id)delegate;

/**
 create textField by frame + text + font + backgroundColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithFrame:(CGRect)frame text:(NSString *)text font:(id)font backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment;

/**
 create textField by frame + text + font + backgroundColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame text:(NSString *)text font:(id)font backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment;

/**
 create textField by frame + placeholder + font + backgroundColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithFrame:(CGRect)frame placeholder:(NSString *)placeholder font:(id)font backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment;

/**
 create textField by frame + placeholder + font + backgroundColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame placeholder:(NSString *)placeholder font:(id)font backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment;

/**
 create textField by frame + text + placeholder + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithFrame:(CGRect)frame text:(NSString *)text placeholder:(NSString *)placeholder backgroundColor:(id)backgroundColor;

/**
 create textField by frame + text + placeholder + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame text:(NSString *)text placeholder:(NSString *)placeholder backgroundColor:(id)backgroundColor;

/**
 create textField by frame + text + placeholder + font + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithFrame:(CGRect)frame text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font backgroundColor:(id)backgroundColor;

/**
 create textField by frame + text + placeholder + font + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font backgroundColor:(id)backgroundColor;

/**
 create textField by frame + text + placeholder + font + backgroundColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithFrame:(CGRect)frame text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font backgroundColor:(id)backgroundColor delegate:(id)delegate;

/**
 create textField by frame + text + placeholder + font + backgroundColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font backgroundColor:(id)backgroundColor delegate:(id)delegate;

/**
 create textField by frame + text + placeholder + font + backgroundColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithFrame:(CGRect)frame text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment;

/**
 create textField by frame + text + placeholder + font + backgroundColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment;

/**
 create textField by frame + text + textColor
 
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithFrame:(CGRect)frame text:(NSString *)text textColor:(id)textColor;

/**
 create textField by frame + text + textColor
 
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame text:(NSString *)text textColor:(id)textColor;

/**
 create textField by frame + placeholder + textColor
 
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithFrame:(CGRect)frame placeholder:(NSString *)placeholder textColor:(id)textColor;

/**
 create textField by frame + placeholder + textColor
 
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame placeholder:(NSString *)placeholder textColor:(id)textColor;

/**
 create textField by frame + text + font + textColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithFrame:(CGRect)frame text:(NSString *)text font:(id)font textColor:(id)textColor;

/**
 create textField by frame + text + font + textColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame text:(NSString *)text font:(id)font textColor:(id)textColor;

/**
 create textField by frame + text + font + textColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithFrame:(CGRect)frame text:(NSString *)text font:(id)font textColor:(id)textColor delegate:(id)delegate;

/**
 create textField by frame + text + font + textColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame text:(NSString *)text font:(id)font textColor:(id)textColor delegate:(id)delegate;

/**
 create textField by frame + placeholder + font + textColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithFrame:(CGRect)frame placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor;

/**
 create textField by frame + placeholder + font + textColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor;

/**
 create textField by frame + placeholder + font + textColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithFrame:(CGRect)frame placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor delegate:(id)delegate;

/**
 create textField by frame + placeholder + font + textColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor delegate:(id)delegate;

/**
 create textField by frame + text + font + textColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithFrame:(CGRect)frame text:(NSString *)text font:(id)font textColor:(id)textColor textAlignment:(NSTextAlignment)textAlignment;

/**
 create textField by frame + text + font + textColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame text:(NSString *)text font:(id)font textColor:(id)textColor textAlignment:(NSTextAlignment)textAlignment;

/**
 create textField by frame + placeholder + font + textColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithFrame:(CGRect)frame placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor textAlignment:(NSTextAlignment)textAlignment;

/**
 create textField by frame + placeholder + font + textColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor textAlignment:(NSTextAlignment)textAlignment;

/**
 create textField by frame + text + textColor + backgroundColor
 
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithFrame:(CGRect)frame text:(NSString *)text textColor:(id)textColor backgroundColor:(id)backgroundColor;

/**
 create textField by frame + text + textColor + backgroundColor
 
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame text:(NSString *)text textColor:(id)textColor backgroundColor:(id)backgroundColor;

/**
 create textField by frame + text + font + textColor + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithFrame:(CGRect)frame text:(NSString *)text font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor;

/**
 create textField by frame + text + font + textColor + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame text:(NSString *)text font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor;

/**
 create textField by frame + text + font + textColor + backgroundColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithFrame:(CGRect)frame text:(NSString *)text font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor delegate:(id)delegate;

/**
 create textField by frame + text + font + textColor + backgroundColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame text:(NSString *)text font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor delegate:(id)delegate;

/**
 create textField by frame + text + font + textColor + backgroundColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithFrame:(CGRect)frame text:(NSString *)text font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment;

/**
 create textField by frame + text + font + textColor + backgroundColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame text:(NSString *)text font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment;

/**
 create textField by frame + placeholder + font + textColor + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithFrame:(CGRect)frame placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor;

/**
 create textField by frame + placeholder + font + textColor + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor;

/**
 create textField by frame + placeholder + font + textColor + backgroundColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithFrame:(CGRect)frame placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor delegate:(id)delegate;

/**
 create textField by frame + placeholder + font + textColor + backgroundColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor delegate:(id)delegate;

/**
 create textField by frame + placeholder + font + textColor + backgroundColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithFrame:(CGRect)frame placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment;

/**
 create textField by frame + placeholder + font + textColor + backgroundColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment;

/**
 create textField by frame + text + placeholder + textColor
 
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithFrame:(CGRect)frame text:(NSString *)text placeholder:(NSString *)placeholder textColor:(id)textColor;

/**
 create textField by frame + text + placeholder + textColor
 
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame text:(NSString *)text placeholder:(NSString *)placeholder textColor:(id)textColor;

/**
 create textField by frame + text + placeholder + font + textColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithFrame:(CGRect)frame text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor;

/**
 create textField by frame + text + placeholder + font + textColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor;

/**
 create textField by frame + text + placeholder + font + textColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithFrame:(CGRect)frame text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor delegate:(id)delegate;

/**
 create textField by frame + text + placeholder + font + textColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor delegate:(id)delegate;

/**
 create textField by frame + text + placeholder + textColor + backgroundColor
 
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithFrame:(CGRect)frame text:(NSString *)text placeholder:(NSString *)placeholder textColor:(id)textColor backgroundColor:(id)backgroundColor;

/**
 create textField by frame + text + placeholder + textColor + backgroundColor
 
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame text:(NSString *)text placeholder:(NSString *)placeholder textColor:(id)textColor backgroundColor:(id)backgroundColor;

/**
 create textField by frame + text + placeholder + font + textColor + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithFrame:(CGRect)frame text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor;

/**
 create textField by frame + text + placeholder + font + textColor + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor;

/**
 create textField by frame + text + placeholder + font + textColor + backgroundColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithFrame:(CGRect)frame text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor delegate:(id)delegate;

/**
 create textField by frame + text + placeholder + font + textColor + backgroundColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor delegate:(id)delegate;

/**
 create textField by frame + text + placeholder + font + textColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithFrame:(CGRect)frame text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor textAlignment:(NSTextAlignment)textAlignment;

/**
 create textField by frame + text + placeholder + font + textColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor textAlignment:(NSTextAlignment)textAlignment;

/**
 create textField by frame + text + placeholder + font + textColor + backgroundColor +
 textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithFrame:(CGRect)frame text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment;

/**
 create textField by frame + text + placeholder + font + textColor + backgroundColor +
 textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame text:(nullable NSString *)text placeholder:(nullable NSString *)placeholder font:(nullable id)font textColor:(nullable id)textColor backgroundColor:(nullable id)backgroundColor textAlignment:(NSTextAlignment)textAlignment;

/**
 create textField by frame + text + placeholder + font + textColor + backgroundColor
 + textAlignment + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithFrame:(CGRect)frame text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment delegate:(id)delegate;

/**
 create textField by frame + text + placeholder + font + textColor + backgroundColor
 + textAlignment + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame text:(nullable NSString *)text placeholder:(nullable NSString *)placeholder font:(nullable id)font textColor:(nullable id)textColor backgroundColor:(nullable id)backgroundColor textAlignment:(NSTextAlignment)textAlignment delegate:(id)delegate;

/**
 create textField by center and bounds
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds;

/**
 create textField by center and bounds
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds;

/**
 create textField by center and bounds + text
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text;

/**
 create textField by center and bounds + text
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text;

/**
 create textField by center and bounds + text + font
 
 @param font UIFont或者NSString或者NSNumber格式
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font;

/**
 create textField by center and bounds + text + font
 
 @param font UIFont或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font;

/**
 create textField by center and bounds + text + font + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font delegate:(id)delegate;

/**
 create textField by center and bounds + text + font + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font delegate:(id)delegate;

/**
 create textField by center and bounds + text + font + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font textAlignment:(NSTextAlignment)textAlignment;

/**
 create textField by center and bounds + text + font + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font textAlignment:(NSTextAlignment)textAlignment;

/**
 create textField by center and bounds + placeholder
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds placeholder:(NSString *)placeholder;

/**
 create textField by center and bounds + placeholder
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds placeholder:(NSString *)placeholder;

/**
 create textField by center and bounds + placeholder  + font
 
 @param font UIFont或者NSString或者NSNumber格式
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds placeholder:(NSString *)placeholder font:(id)font;

/**
 create textField by center and bounds + placeholder  + font
 
 @param font UIFont或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds placeholder:(NSString *)placeholder font:(id)font;

/**
 create textField by center and bounds + placeholder  + font + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds placeholder:(NSString *)placeholder font:(id)font delegate:(id)delegate;

/**
 create textField by center and bounds + placeholder  + font + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds placeholder:(NSString *)placeholder font:(id)font delegate:(id)delegate;

/**
 create textField by center and bounds + placeholder  + font + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds placeholder:(NSString *)placeholder font:(id)font textAlignment:(NSTextAlignment)textAlignment;

/**
 create textField by center and bounds + placeholder  + font + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds placeholder:(NSString *)placeholder font:(id)font textAlignment:(NSTextAlignment)textAlignment;

/**
 create textField by center and bounds + text + placeholder
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text placeholder:(NSString *)placeholder;

/**
 create textField by center and bounds + text + placeholder
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text placeholder:(NSString *)placeholder;

/**
 create textField by center and bounds + text + placeholder + font
 
 @param font UIFont或者NSString或者NSNumber格式
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font;

/**
 create textField by center and bounds + text + placeholder + font
 
 @param font UIFont或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font;

/**
 create textField by center and bounds + text + placeholder + font + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font delegate:(id)delegate;

/**
 create textField by center and bounds + text + placeholder + font + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font delegate:(id)delegate;

/**
 create textField by center and bounds + text + placeholder + font + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font textAlignment:(NSTextAlignment)textAlignment;

/**
 create textField by center and bounds + text + placeholder + font + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font textAlignment:(NSTextAlignment)textAlignment;

/**
 create textField by center and bounds + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds backgroundColor:(id)backgroundColor;

/**
 create textField by center and bounds + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds backgroundColor:(id)backgroundColor;

/**
 create textField by center and bounds + text + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text backgroundColor:(id)backgroundColor;

/**
 create textField by center and bounds + text + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text backgroundColor:(id)backgroundColor;

/**
 create textField by center and bounds + placeholder + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds placeholder:(NSString *)placeholder backgroundColor:(id)backgroundColor;

/**
 create textField by center and bounds + placeholder + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds placeholder:(NSString *)placeholder backgroundColor:(id)backgroundColor;

/**
 create textField by center and bounds + text + font + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font backgroundColor:(id)backgroundColor;

/**
 create textField by center and bounds + text + font + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font backgroundColor:(id)backgroundColor;

/**
 create textField by center and bounds + text + font + backgroundColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font backgroundColor:(id)backgroundColor delegate:(id)delegate;

/**
 create textField by center and bounds + text + font + backgroundColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font backgroundColor:(id)backgroundColor delegate:(id)delegate;

/**
 create textField by center and bounds + placeholder + font + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds placeholder:(NSString *)placeholder font:(id)font backgroundColor:(id)backgroundColor;

/**
 create textField by center and bounds + placeholder + font + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds placeholder:(NSString *)placeholder font:(id)font backgroundColor:(id)backgroundColor;

/**
 create textField by center and bounds + placeholder + font + backgroundColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds placeholder:(NSString *)placeholder font:(id)font backgroundColor:(id)backgroundColor delegate:(id)delegate;

/**
 create textField by center and bounds + placeholder + font + backgroundColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds placeholder:(NSString *)placeholder font:(id)font backgroundColor:(id)backgroundColor delegate:(id)delegate;

/**
 create textField by center and bounds + text + font + backgroundColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment;

/**
 create textField by center and bounds + text + font + backgroundColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment;

/**
 create textField by center and bounds + placeholder + font + backgroundColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds placeholder:(NSString *)placeholder font:(id)font backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment;

/**
 create textField by center and bounds + placeholder + font + backgroundColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds placeholder:(NSString *)placeholder font:(id)font backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment;

/**
 create textField by center and bounds + text + placeholder + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text placeholder:(NSString *)placeholder backgroundColor:(id)backgroundColor;

/**
 create textField by center and bounds + text + placeholder + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text placeholder:(NSString *)placeholder backgroundColor:(id)backgroundColor;

/**
 create textField by center and bounds + text + placeholder + font + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font backgroundColor:(id)backgroundColor;

/**
 create textField by center and bounds + text + placeholder + font + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font backgroundColor:(id)backgroundColor;

/**
 create textField by center and bounds + text + placeholder + font + backgroundColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font backgroundColor:(id)backgroundColor delegate:(id)delegate;

/**
 create textField by center and bounds + text + placeholder + font + backgroundColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font backgroundColor:(id)backgroundColor delegate:(id)delegate;

/**
 create textField by center and bounds + text + placeholder + font + backgroundColor +
 textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment;

/**
 create textField by center and bounds + text + placeholder + font + backgroundColor +
 textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment;

/**
 create textField by center and bounds + text + textColor
 
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text textColor:(id)textColor;

/**
 create textField by center and bounds + text + textColor
 
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text textColor:(id)textColor;

/**
 create textField by center and bounds + placeholder + textColor
 
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds placeholder:(NSString *)placeholder textColor:(id)textColor;

/**
 create textField by center and bounds + placeholder + textColor
 
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds placeholder:(NSString *)placeholder textColor:(id)textColor;

/**
 create textField by center and bounds + text + font + textColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font textColor:(id)textColor;

/**
 create textField by center and bounds + text + font + textColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font textColor:(id)textColor;

/**
 create textField by center and bounds + text + font + textColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font textColor:(id)textColor delegate:(id)delegate;

/**
 create textField by center and bounds + text + font + textColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font textColor:(id)textColor delegate:(id)delegate;

/**
 create textField by center and bounds + placeholder + font + textColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor;

/**
 create textField by center and bounds + placeholder + font + textColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor;

/**
 create textField by center and bounds + placeholder + font + textColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor delegate:(id)delegate;

/**
 create textField by center and bounds + placeholder + font + textColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor delegate:(id)delegate;

/**
 create textField by center and bounds + text + font + textColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font textColor:(id)textColor textAlignment:(NSTextAlignment)textAlignment;

/**
 create textField by center and bounds + text + font + textColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font textColor:(id)textColor textAlignment:(NSTextAlignment)textAlignment;

/**
 create textField by center and bounds + placeholder + font + textColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor textAlignment:(NSTextAlignment)textAlignment;

/**
 create textField by center and bounds + placeholder + font + textColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor textAlignment:(NSTextAlignment)textAlignment;

/**
 create textField by center and bounds + text + textColor + backgroundColor
 
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text textColor:(id)textColor backgroundColor:(id)backgroundColor;

/**
 create textField by center and bounds + text + textColor + backgroundColor
 
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text textColor:(id)textColor backgroundColor:(id)backgroundColor;

/**
 create textField by center and bounds + text + font + textColor + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor;

/**
 create textField by center and bounds + text + font + textColor + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor;

/**
 create textField by center and bounds + text + font + textColor + backgroundColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor delegate:(id)delegate;

/**
 create textField by center and bounds + text + font + textColor + backgroundColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor delegate:(id)delegate;

/**
 create textField by center and bounds + text + font + textColor + backgroundColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment;

/**
 create textField by center and bounds + text + font + textColor + backgroundColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment;

/**
 create textField by center and bounds + placeholder + font + textColor + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor;

/**
 create textField by center and bounds + placeholder + font + textColor + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor;

/**
 create textField by center and bounds + placeholder + font + textColor + backgroundColor
 + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor delegate:(id)delegate;

/**
 create textField by center and bounds + placeholder + font + textColor + backgroundColor
 + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor delegate:(id)delegate;

/**
 create textField by center and bounds + placeholder + font + textColor + backgroundColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment;

/**
 create textField by center and bounds + placeholder + font + textColor + backgroundColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment;

/**
 create textField by center and bounds + text + placeholder + textColor
 
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text placeholder:(NSString *)placeholder textColor:(id)textColor;

/**
 create textField by center and bounds + text + placeholder + textColor
 
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text placeholder:(NSString *)placeholder textColor:(id)textColor;

/**
 create textField by center and bounds + text + placeholder + font + textColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor;

/**
 create textField by center and bounds + text + placeholder + font + textColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor;

/**
 create textField by center and bounds + text + placeholder + font + textColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor delegate:(id)delegate;

/**
 create textField by center and bounds + text + placeholder + font + textColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor delegate:(id)delegate;

/**
 create textField by center and bounds + text + placeholder + textColor + backgroundColor
 
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text placeholder:(NSString *)placeholder textColor:(id)textColor backgroundColor:(id)backgroundColor;

/**
 create textField by center and bounds + text + placeholder + textColor + backgroundColor
 
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text placeholder:(NSString *)placeholder textColor:(id)textColor backgroundColor:(id)backgroundColor;

/**
 create textField by center and bounds + text + placeholder + font + textColor + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor;

/**
 create textField by center and bounds + text + placeholder + font + textColor + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor;

/**
 create textField by center and bounds + text + placeholder + font + textColor
 + backgroundColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor delegate:(id)delegate;

/**
 create textField by center and bounds + text + placeholder + font + textColor
 + backgroundColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor delegate:(id)delegate;

/**
 create textField by center and bounds + text + placeholder + font + textColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor textAlignment:(NSTextAlignment)textAlignment;

/**
 create textField by center and bounds + text + placeholder + font + textColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor textAlignment:(NSTextAlignment)textAlignment;

/**
 create textField by center and bounds + text + placeholder + font + textColor + backgroundColor
 + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment;

/**
 create textField by center and bounds + text + placeholder + font + textColor + backgroundColor
 + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(nullable NSString *)text placeholder:(nullable NSString *)placeholder font:(nullable id)font textColor:(nullable id)textColor backgroundColor:(nullable id)backgroundColor textAlignment:(NSTextAlignment)textAlignment;

/**
 create textField by center and bounds + text + placeholder + font + textColor
 + backgroundColor + textAlignment + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment delegate:(id)delegate;

/**
 create textField by center and bounds + text + placeholder + font + textColor
 + backgroundColor + textAlignment + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(nullable NSString *)text placeholder:(nullable NSString *)placeholder font:(nullable id)font textColor:(nullable id)textColor backgroundColor:(nullable id)backgroundColor textAlignment:(NSTextAlignment)textAlignment delegate:(id)delegate;

/**
 设置placeholder颜色
 
 @param placeholderColor UIColor或者NSString或者NSNumber格式
 */
- (void)placeholderColor:(id)placeholderColor;

/**
 设置placeholder字体
 
 @param placeholderFont UIFont或者NSString或者NSNumber格式
 */
- (void)placeholderFont:(id)placeholderFont;

/**
 设置placeholder颜色和字体
 
 @param placeholderFont UIFont或者NSString或者NSNumber格式
 @param placeholderColor UIColor或者NSString或者NSNumber格式
 */
- (void)placeholderColor:(nullable id)placeholderColor placeholderFont:(nullable id)placeholderFont;

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
 使用说明
 在- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string 代理中使用，返回真实的字符串

 */
- (NSString *)frg_shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string;

/**
 限制输入的字符串长度
 
 result:返回length长度内的字符串
 */
- (void)maxLength:(NSInteger)length textStringBlock:(void(^)(NSString *textString))result;





@end

NS_ASSUME_NONNULL_END
