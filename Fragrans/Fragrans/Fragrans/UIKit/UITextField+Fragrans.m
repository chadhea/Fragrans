//
//  UITextField+Fragrans.m
//  Fragrans
//
//  Created by qmz on 2019/2/28.
//

#define FRG_WEAKSELF(OBJC,NAME) typeof(OBJC) __weak NAME = OBJC;
#define FRG_STRONGSELF(OBJC,NAME) typeof(OBJC) __strong NAME = OBJC;

#import "UITextField+Fragrans.h"
#import <objc/runtime.h>
#import "UIKitBridge.h"
static const void  *frg_textField_UtilityKey = &frg_textField_UtilityKey;

@implementation UITextField (Fragrans)

- (NSInteger)FRG_TextFieldMaxLength {
    return [objc_getAssociatedObject(self, _cmd) integerValue];
}

- (void)setFRG_TextFieldMaxLength:(NSInteger)FRG_TextFieldMaxLength {
    objc_setAssociatedObject(self, @selector(FRG_TextFieldMaxLength), @(FRG_TextFieldMaxLength), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (frg_inputMaxLengthBlock)frg_maxLengthBlock {
    return objc_getAssociatedObject(self, frg_textField_UtilityKey);
}

- (void)setFrg_maxLengthBlock:(frg_inputMaxLengthBlock)frg_maxLengthBlock {
    objc_setAssociatedObject(self, frg_textField_UtilityKey, frg_maxLengthBlock, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

/**
 create textField by text
 */
- (UITextField *)initWithText:(NSString *)text {
    return [UITextField textFieldWithText:text placeholder:nil font:nil textColor:nil backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by text
 */
+ (UITextField *)textFieldWithText:(NSString *)text {
    return [UITextField textFieldWithText:text placeholder:nil font:nil textColor:nil backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by text + font
 
 @param font UIFont或者NSString或者NSNumber格式
 */
- (UITextField *)initWithText:(NSString *)text font:(id)font {
    return [UITextField textFieldWithText:text placeholder:nil font:font textColor:nil backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by text + font
 
 @param font UIFont或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithText:(NSString *)text font:(id)font {
    return [UITextField textFieldWithText:text placeholder:nil font:font textColor:nil backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by text + font + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 */
- (UITextField *)initWithText:(NSString *)text font:(id)font delegate:(id)delegate {
    return [UITextField textFieldWithText:text placeholder:nil font:font textColor:nil backgroundColor:nil textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textField by text + font + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithText:(NSString *)text font:(id)font delegate:(id)delegate {
    return [UITextField textFieldWithText:text placeholder:nil font:font textColor:nil backgroundColor:nil textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textField by text + font + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 */
- (UITextField *)initWithText:(NSString *)text font:(id)font textAlignment:(NSTextAlignment)textAlignment {
    return [UITextField textFieldWithText:text placeholder:nil font:font textColor:nil backgroundColor:nil textAlignment:textAlignment];
}

/**
 create textField by text + font + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithText:(NSString *)text font:(id)font textAlignment:(NSTextAlignment)textAlignment {
    return [UITextField textFieldWithText:text placeholder:nil font:font textColor:nil backgroundColor:nil textAlignment:textAlignment];
}

/**
 create textField by placeholder
 */
- (UITextField *)initWithPlaceholder:(NSString *)placeholder {
    return [UITextField textFieldWithText:nil placeholder:placeholder font:nil textColor:nil backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by placeholder
 */
+ (UITextField *)textFieldWithPlaceholder:(NSString *)placeholder {
    return [UITextField textFieldWithText:nil placeholder:placeholder font:nil textColor:nil backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by placeholder  + font
 
 @param font UIFont或者NSString或者NSNumber格式
 */
- (UITextField *)initWithPlaceholder:(NSString *)placeholder font:(id)font {
    return [UITextField textFieldWithText:nil placeholder:placeholder font:font textColor:nil backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by placeholder  + font
 
 @param font UIFont或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithPlaceholder:(NSString *)placeholder font:(id)font {
    return [UITextField textFieldWithText:nil placeholder:placeholder font:font textColor:nil backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by placeholder  + font + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 */
- (UITextField *)initWithPlaceholder:(NSString *)placeholder font:(id)font delegate:(id)delegate {
    return [UITextField textFieldWithText:nil placeholder:placeholder font:font textColor:nil backgroundColor:nil textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textField by placeholder  + font + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithPlaceholder:(NSString *)placeholder font:(id)font delegate:(id)delegate {
    return [UITextField textFieldWithText:nil placeholder:placeholder font:font textColor:nil backgroundColor:nil textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textField by placeholder  + font + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 */
- (UITextField *)initWithPlaceholder:(NSString *)placeholder font:(id)font textAlignment:(NSTextAlignment)textAlignment {
    return [UITextField textFieldWithText:nil placeholder:placeholder font:font textColor:nil backgroundColor:nil textAlignment:textAlignment];
}

/**
 create textField by placeholder  + font + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithPlaceholder:(NSString *)placeholder font:(id)font textAlignment:(NSTextAlignment)textAlignment {
    return [UITextField textFieldWithText:nil placeholder:placeholder font:font textColor:nil backgroundColor:nil textAlignment:textAlignment];
}

/**
 create textField by text + placeholder
 */
- (UITextField *)initWithText:(NSString *)text placeholder:(NSString *)placeholder {
    return [UITextField textFieldWithText:text placeholder:placeholder font:nil textColor:nil backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by text + placeholder
 */
+ (UITextField *)textFieldWithText:(NSString *)text placeholder:(NSString *)placeholder {
    return [UITextField textFieldWithText:text placeholder:placeholder font:nil textColor:nil backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by text + placeholder + font
 
 @param font UIFont或者NSString或者NSNumber格式
 */
- (UITextField *)initWithText:(NSString *)text placeholder:(NSString *)placeholder font:(id)font {
    return [UITextField textFieldWithText:text placeholder:placeholder font:font textColor:nil backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by text + placeholder + font
 
 @param font UIFont或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithText:(NSString *)text placeholder:(NSString *)placeholder font:(id)font {
    return [UITextField textFieldWithText:text placeholder:placeholder font:font textColor:nil backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by text + placeholder + font + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 */
- (UITextField *)initWithText:(NSString *)text placeholder:(NSString *)placeholder font:(id)font delegate:(id)delegate {
    return [UITextField textFieldWithText:text placeholder:placeholder font:font textColor:nil backgroundColor:nil textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textField by text + placeholder + font + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithText:(NSString *)text placeholder:(NSString *)placeholder font:(id)font delegate:(id)delegate {
    return [UITextField textFieldWithText:text placeholder:placeholder font:font textColor:nil backgroundColor:nil textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textField by text + placeholder + font + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 */
- (UITextField *)initWithText:(NSString *)text placeholder:(NSString *)placeholder font:(id)font textAlignment:(NSTextAlignment)textAlignment {
    return [UITextField textFieldWithText:text placeholder:placeholder font:font textColor:nil backgroundColor:nil textAlignment:textAlignment];
}

/**
 create textField by text + placeholder + font + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithText:(NSString *)text placeholder:(NSString *)placeholder font:(id)font textAlignment:(NSTextAlignment)textAlignment {
    return [UITextField textFieldWithText:text placeholder:placeholder font:font textColor:nil backgroundColor:nil textAlignment:textAlignment];
}

/**
 create textField by backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithBackgroundColor:(id)backgroundColor {
    return [UITextField textFieldWithText:nil placeholder:nil font:nil textColor:nil backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithBackgroundColor:(id)backgroundColor {
    return [UITextField textFieldWithText:nil placeholder:nil font:nil textColor:nil backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by text + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithText:(NSString *)text backgroundColor:(id)backgroundColor {
    return [UITextField textFieldWithText:text placeholder:nil font:nil textColor:nil backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by text + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithText:(NSString *)text backgroundColor:(id)backgroundColor {
    return [UITextField textFieldWithText:text placeholder:nil font:nil textColor:nil backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by placeholder + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithPlaceholder:(NSString *)placeholder backgroundColor:(id)backgroundColor {
    return [UITextField textFieldWithText:nil placeholder:placeholder font:nil textColor:nil backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by placeholder + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithPlaceholder:(NSString *)placeholder backgroundColor:(id)backgroundColor {
    return [UITextField textFieldWithText:nil placeholder:placeholder font:nil textColor:nil backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by text + font + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithText:(NSString *)text font:(id)font backgroundColor:(id)backgroundColor {
    return [UITextField textFieldWithText:text placeholder:nil font:font textColor:nil backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by text + font + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithText:(NSString *)text font:(id)font backgroundColor:(id)backgroundColor {
    return [UITextField textFieldWithText:text placeholder:nil font:font textColor:nil backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by text + font + backgroundColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithText:(NSString *)text font:(id)font backgroundColor:(id)backgroundColor delegate:(id)delegate {
    return [UITextField textFieldWithText:text placeholder:nil font:font textColor:nil backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textField by text + font + backgroundColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithText:(NSString *)text font:(id)font backgroundColor:(id)backgroundColor delegate:(id)delegate {
    return [UITextField textFieldWithText:text placeholder:nil font:font textColor:nil backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textField by placeholder + font + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithPlaceholder:(NSString *)placeholder font:(id)font backgroundColor:(id)backgroundColor {
    return [UITextField textFieldWithText:nil placeholder:placeholder font:font textColor:nil backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by placeholder + font + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithPlaceholder:(NSString *)placeholder font:(id)font backgroundColor:(id)backgroundColor {
    return [UITextField textFieldWithText:nil placeholder:placeholder font:font textColor:nil backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by placeholder + font + backgroundColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithPlaceholder:(NSString *)placeholder font:(id)font backgroundColor:(id)backgroundColor delegate:(id)delegate {
    return [UITextField textFieldWithText:nil placeholder:placeholder font:font textColor:nil backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textField by placeholder + font + backgroundColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithPlaceholder:(NSString *)placeholder font:(id)font backgroundColor:(id)backgroundColor delegate:(id)delegate {
    return [UITextField textFieldWithText:nil placeholder:placeholder font:font textColor:nil backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textField by text + font + backgroundColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithText:(NSString *)text font:(id)font backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment {
    return [UITextField textFieldWithText:text placeholder:nil font:font textColor:nil backgroundColor:backgroundColor textAlignment:textAlignment];
}

/**
 create textField by text + font + backgroundColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithText:(NSString *)text font:(id)font backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment {
    return [UITextField textFieldWithText:text placeholder:nil font:font textColor:nil backgroundColor:backgroundColor textAlignment:textAlignment];
}

/**
 create textField by placeholder + font + backgroundColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithPlaceholder:(NSString *)placeholder font:(id)font backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment {
    return [UITextField textFieldWithText:nil placeholder:placeholder font:font textColor:nil backgroundColor:backgroundColor textAlignment:textAlignment];
}

/**
 create textField by placeholder + font + backgroundColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithPlaceholder:(NSString *)placeholder font:(id)font backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment {
    return [UITextField textFieldWithText:nil placeholder:placeholder font:font textColor:nil backgroundColor:backgroundColor textAlignment:textAlignment];
}

/**
 create textField by text + placeholder + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithText:(NSString *)text placeholder:(NSString *)placeholder backgroundColor:(id)backgroundColor {
    return [UITextField textFieldWithText:text placeholder:placeholder font:nil textColor:nil backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by text + placeholder + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithText:(NSString *)text placeholder:(NSString *)placeholder backgroundColor:(id)backgroundColor {
    return [UITextField textFieldWithText:text placeholder:placeholder font:nil textColor:nil backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by text + placeholder + font + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithText:(NSString *)text placeholder:(NSString *)placeholder font:(id)font backgroundColor:(id)backgroundColor {
    return [UITextField textFieldWithText:text placeholder:placeholder font:font textColor:nil backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by text + placeholder + font + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithText:(NSString *)text placeholder:(NSString *)placeholder font:(id)font backgroundColor:(id)backgroundColor {
    return [UITextField textFieldWithText:text placeholder:placeholder font:font textColor:nil backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by text + placeholder + font + backgroundColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithText:(NSString *)text placeholder:(NSString *)placeholder font:(id)font backgroundColor:(id)backgroundColor delegate:(id)delegate {
    return [UITextField textFieldWithText:text placeholder:placeholder font:font textColor:nil backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textField by text + placeholder + font + backgroundColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithText:(NSString *)text placeholder:(NSString *)placeholder font:(id)font backgroundColor:(id)backgroundColor delegate:(id)delegate {
    return [UITextField textFieldWithText:text placeholder:placeholder font:font textColor:nil backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textField by text + placeholder + font + backgroundColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithText:(NSString *)text placeholder:(NSString *)placeholder font:(id)font backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment {
    return [UITextField textFieldWithText:text placeholder:placeholder font:font textColor:nil backgroundColor:backgroundColor textAlignment:textAlignment];
}

/**
 create textField by text + placeholder + font + backgroundColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithText:(NSString *)text placeholder:(NSString *)placeholder font:(id)font backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment {
    return [UITextField textFieldWithText:text placeholder:placeholder font:font textColor:nil backgroundColor:backgroundColor textAlignment:textAlignment];
}

/**
 create textField by text + textColor
 
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithText:(NSString *)text textColor:(id)textColor {
    return [UITextField textFieldWithText:text placeholder:nil font:nil textColor:textColor backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by text + textColor
 
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithText:(NSString *)text textColor:(id)textColor {
    return [UITextField textFieldWithText:text placeholder:nil font:nil textColor:textColor backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by placeholder + textColor
 
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithPlaceholder:(NSString *)placeholder textColor:(id)textColor {
    return [UITextField textFieldWithText:nil placeholder:placeholder font:nil textColor:textColor backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by placeholder + textColor
 
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithPlaceholder:(NSString *)placeholder textColor:(id)textColor {
    return [UITextField textFieldWithText:nil placeholder:placeholder font:nil textColor:textColor backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by text + font + textColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithText:(NSString *)text font:(id)font textColor:(id)textColor {
    return [UITextField textFieldWithText:text placeholder:nil font:font textColor:textColor backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by text + font + textColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithText:(NSString *)text font:(id)font textColor:(id)textColor {
    return [UITextField textFieldWithText:text placeholder:nil font:font textColor:textColor backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by text + font + textColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithText:(NSString *)text font:(id)font textColor:(id)textColor delegate:(id)delegate {
    return [UITextField textFieldWithText:text placeholder:nil font:font textColor:textColor backgroundColor:nil textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textField by text + font + textColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithText:(NSString *)text font:(id)font textColor:(id)textColor delegate:(id)delegate {
    return [UITextField textFieldWithText:text placeholder:nil font:font textColor:textColor backgroundColor:nil textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textField by placeholder + font + textColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithPlaceholder:(NSString *)placeholder font:(id)font textColor:(id)textColor {
    return [UITextField textFieldWithText:nil placeholder:placeholder font:font textColor:textColor backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by placeholder + font + textColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithPlaceholder:(NSString *)placeholder font:(id)font textColor:(id)textColor {
    return [UITextField textFieldWithText:nil placeholder:placeholder font:font textColor:textColor backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by placeholder + font + textColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithPlaceholder:(NSString *)placeholder font:(id)font textColor:(id)textColor delegate:(id)delegate {
    return [UITextField textFieldWithText:nil placeholder:placeholder font:font textColor:textColor backgroundColor:nil textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textField by placeholder + font + textColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithPlaceholder:(NSString *)placeholder font:(id)font textColor:(id)textColor delegate:(id)delegate {
    return [UITextField textFieldWithText:nil placeholder:placeholder font:font textColor:textColor backgroundColor:nil textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textField by text + font + textColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithText:(NSString *)text font:(id)font textColor:(id)textColor textAlignment:(NSTextAlignment)textAlignment {
    return [UITextField textFieldWithText:text placeholder:nil font:font textColor:textColor backgroundColor:nil textAlignment:textAlignment];
}

/**
 create textField by text + font + textColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithText:(NSString *)text font:(id)font textColor:(id)textColor textAlignment:(NSTextAlignment)textAlignment {
    return [UITextField textFieldWithText:text placeholder:nil font:font textColor:textColor backgroundColor:nil textAlignment:textAlignment];
}

/**
 create textField by placeholder + font + textColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithPlaceholder:(NSString *)placeholder font:(id)font textColor:(id)textColor textAlignment:(NSTextAlignment)textAlignment {
    return [UITextField textFieldWithText:nil placeholder:placeholder font:font textColor:textColor backgroundColor:nil textAlignment:textAlignment];
}

/**
 create textField by placeholder + font + textColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithPlaceholder:(NSString *)placeholder font:(id)font textColor:(id)textColor textAlignment:(NSTextAlignment)textAlignment {
    return [UITextField textFieldWithText:nil placeholder:placeholder font:font textColor:textColor backgroundColor:nil textAlignment:textAlignment];
}

/**
 create textField by text + textColor + backgroundColor
 
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithText:(NSString *)text textColor:(id)textColor backgroundColor:(id)backgroundColor {
    return [UITextField textFieldWithText:text placeholder:nil font:nil textColor:textColor backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by text + textColor + backgroundColor
 
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithText:(NSString *)text textColor:(id)textColor backgroundColor:(id)backgroundColor {
    return [UITextField textFieldWithText:text placeholder:nil font:nil textColor:textColor backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by text + font + textColor + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithText:(NSString *)text font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor {
    return [UITextField textFieldWithText:text placeholder:nil font:font textColor:textColor backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by text + font + textColor + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithText:(NSString *)text font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor {
    return [UITextField textFieldWithText:text placeholder:nil font:font textColor:textColor backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by text + font + textColor + backgroundColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithText:(NSString *)text font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor delegate:(id)delegate {
    return [UITextField textFieldWithText:text placeholder:nil font:font textColor:textColor backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textField by text + font + textColor + backgroundColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithText:(NSString *)text font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor delegate:(id)delegate {
    return [UITextField textFieldWithText:text placeholder:nil font:font textColor:textColor backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textField by text + font + textColor + backgroundColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithText:(NSString *)text font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment {
    return [UITextField textFieldWithText:text placeholder:nil font:font textColor:textColor backgroundColor:backgroundColor textAlignment:textAlignment];
}

/**
 create textField by text + font + textColor + backgroundColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithText:(NSString *)text font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment {
    return [UITextField textFieldWithText:text placeholder:nil font:font textColor:textColor backgroundColor:backgroundColor textAlignment:textAlignment];
}

/**
 create textField by placeholder + font + textColor + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithPlaceholder:(NSString *)placeholder font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor {
    return [UITextField textFieldWithText:nil placeholder:placeholder font:font textColor:textColor backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by placeholder + font + textColor + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithPlaceholder:(NSString *)placeholder font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor {
    return [UITextField textFieldWithText:nil placeholder:placeholder font:font textColor:textColor backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by placeholder + font + textColor + backgroundColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithPlaceholder:(NSString *)placeholder font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor delegate:(id)delegate {
    return [UITextField textFieldWithText:nil placeholder:placeholder font:font textColor:textColor backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textField by placeholder + font + textColor + backgroundColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithPlaceholder:(NSString *)placeholder font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor delegate:(id)delegate {
    return [UITextField textFieldWithText:nil placeholder:placeholder font:font textColor:textColor backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textField by placeholder + font + textColor + backgroundColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithPlaceholder:(NSString *)placeholder font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment {
    return [UITextField textFieldWithText:nil placeholder:placeholder font:font textColor:textColor backgroundColor:backgroundColor textAlignment:textAlignment];
}

/**
 create textField by placeholder + font + textColor + backgroundColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithPlaceholder:(NSString *)placeholder font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment {
    return [UITextField textFieldWithText:nil placeholder:placeholder font:font textColor:textColor backgroundColor:backgroundColor textAlignment:textAlignment];
}

/**
 create textField by text + placeholder + textColor
 
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithText:(NSString *)text placeholder:(NSString *)placeholder textColor:(id)textColor {
    return [UITextField textFieldWithText:text placeholder:placeholder font:nil textColor:textColor backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by text + placeholder + textColor
 
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithText:(NSString *)text placeholder:(NSString *)placeholder textColor:(id)textColor {
    return [UITextField textFieldWithText:text placeholder:placeholder font:nil textColor:textColor backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by text + placeholder + font + textColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithText:(NSString *)text placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor {
    return [UITextField textFieldWithText:text placeholder:placeholder font:font textColor:textColor backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by text + placeholder + font + textColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithText:(NSString *)text placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor {
    return [UITextField textFieldWithText:text placeholder:placeholder font:font textColor:textColor backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by text + placeholder + font + textColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithText:(NSString *)text placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor delegate:(id)delegate {
    return [UITextField textFieldWithText:text placeholder:placeholder font:font textColor:textColor backgroundColor:nil textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textField by text + placeholder + font + textColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithText:(NSString *)text placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor delegate:(id)delegate {
    return [UITextField textFieldWithText:text placeholder:placeholder font:font textColor:textColor backgroundColor:nil textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textField by text + placeholder  + textColor + backgroundColor
 
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithText:(NSString *)text placeholder:(NSString *)placeholder textColor:(id)textColor backgroundColor:(id)backgroundColor {
    return [UITextField textFieldWithText:text placeholder:placeholder font:nil textColor:textColor backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by text + placeholder  + textColor + backgroundColor
 
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithText:(NSString *)text placeholder:(NSString *)placeholder textColor:(id)textColor backgroundColor:(id)backgroundColor {
    return [UITextField textFieldWithText:text placeholder:placeholder font:nil textColor:textColor backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by text + placeholder + font + textColor + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithText:(NSString *)text placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor {
    return [UITextField textFieldWithText:text placeholder:placeholder font:font textColor:textColor backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by text + placeholder + font + textColor + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithText:(NSString *)text placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor {
    return [UITextField textFieldWithText:text placeholder:placeholder font:font textColor:textColor backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by text + placeholder + font + textColor + backgroundColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithText:(NSString *)text placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor delegate:(id)delegate {
    return [UITextField textFieldWithText:text placeholder:placeholder font:font textColor:textColor backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textField by text + placeholder + font + textColor + backgroundColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithText:(NSString *)text placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor delegate:(id)delegate {
    return [UITextField textFieldWithText:text placeholder:placeholder font:font textColor:textColor backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textField by text + placeholder + font + textColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithText:(NSString *)text placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor textAlignment:(NSTextAlignment)textAlignment {
    return [UITextField textFieldWithText:text placeholder:placeholder font:font textColor:textColor backgroundColor:nil textAlignment:textAlignment];
}

/**
 create textField by text + placeholder + font + textColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithText:(NSString *)text placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor textAlignment:(NSTextAlignment)textAlignment {
    return [UITextField textFieldWithText:text placeholder:placeholder font:font textColor:textColor backgroundColor:nil textAlignment:textAlignment];
}

/**
 create textField by text + placeholder + font + textColor + backgroundColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithText:(NSString *)text placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment {
    return [UITextField textFieldWithText:text placeholder:placeholder font:font textColor:textColor backgroundColor:backgroundColor textAlignment:textAlignment];
}

/**
 create textField by text + placeholder + font + textColor + backgroundColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithText:(nullable NSString *)text placeholder:(nullable NSString *)placeholder font:(nullable id)font textColor:(nullable id)textColor backgroundColor:(nullable id)backgroundColor textAlignment:(NSTextAlignment)textAlignment {
    UITextField   *textField = [[UITextField alloc] init];
    textField.text = [UIKitBridge safeString:text];
    textField.placeholder = [UIKitBridge safeString:placeholder];
    textField.font = [UIKitBridge safeFont:font baseFont:FRG_TextFieldBaseFontSize];
    textField.textColor = [UIKitBridge safeColor:textColor baseColor:FRG_TextFieldBaseColorHex];
    textField.backgroundColor = [UIKitBridge safeColor:backgroundColor baseColor:[UIColor whiteColor]];
    if (textAlignment >= NSTextAlignmentLeft && textAlignment <= NSTextAlignmentNatural) {
        textField.textAlignment = textAlignment;
    }else {
        textField.textAlignment = NSTextAlignmentLeft;
    }
    textField.clearButtonMode = UITextFieldViewModeWhileEditing;
    return textField;
}

/**
 create textField by text + placeholder + font + textColor + backgroundColor + textAlignment
 + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithText:(NSString *)text placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment delegate:(id)delegate {
    return [UITextField textFieldWithText:text placeholder:placeholder font:font textColor:textColor backgroundColor:backgroundColor textAlignment:textAlignment delegate:delegate];
}

/**
 create textField by text + placeholder + font + textColor + backgroundColor + textAlignment
 + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithText:(nullable NSString *)text placeholder:(nullable NSString *)placeholder font:(nullable id)font textColor:(nullable id)textColor backgroundColor:(nullable id)backgroundColor textAlignment:(NSTextAlignment)textAlignment  delegate:(id)delegate {
    UITextField   *textField = [UITextField textFieldWithText:text placeholder:placeholder font:font textColor:textColor backgroundColor:backgroundColor textAlignment:textAlignment];
    if (delegate) {
        textField.delegate = delegate;
    }
    return textField;
}

/**
 create textField by frame + text
 */
- (UITextField *)initWithFrame:(CGRect)frame text:(NSString *)text {
    return [UITextField textFieldWithFrame:frame text:text placeholder:nil font:nil textColor:nil backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by frame + text
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame text:(NSString *)text {
    return [UITextField textFieldWithFrame:frame text:text placeholder:nil font:nil textColor:nil backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by frame + text + font
 
 @param font UIFont或者NSString或者NSNumber格式
 */
- (UITextField *)initWithFrame:(CGRect)frame text:(NSString *)text font:(id)font {
    return [UITextField textFieldWithFrame:frame text:text placeholder:nil font:font textColor:nil backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by frame + text + font
 
 @param font UIFont或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame text:(NSString *)text font:(id)font {
    return [UITextField textFieldWithFrame:frame text:text placeholder:nil font:font textColor:nil backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by frame + text + font + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 */
- (UITextField *)initWithFrame:(CGRect)frame text:(NSString *)text font:(id)font delegate:(id)delegate {
    return [UITextField textFieldWithFrame:frame text:text placeholder:nil font:font textColor:nil backgroundColor:nil textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textField by frame + text + font + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame text:(NSString *)text font:(id)font delegate:(id)delegate {
    return [UITextField textFieldWithFrame:frame text:text placeholder:nil font:font textColor:nil backgroundColor:nil textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textField by frame + text + font + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 */
- (UITextField *)initWithFrame:(CGRect)frame text:(NSString *)text font:(id)font textAlignment:(NSTextAlignment)textAlignment {
    return [UITextField textFieldWithFrame:frame text:text placeholder:nil font:font textColor:nil backgroundColor:nil textAlignment:textAlignment];
}

/**
 create textField by frame + text + font + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame text:(NSString *)text font:(id)font textAlignment:(NSTextAlignment)textAlignment {
    return [UITextField textFieldWithFrame:frame text:text placeholder:nil font:font textColor:nil backgroundColor:nil textAlignment:textAlignment];
}

/**
 create textField by frame + placeholder
 */
- (UITextField *)initWithFrame:(CGRect)frame placeholder:(NSString *)placeholder {
    return [UITextField textFieldWithFrame:frame text:nil placeholder:placeholder font:nil textColor:nil backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by frame + placeholder
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame placeholder:(NSString *)placeholder {
    return [UITextField textFieldWithFrame:frame text:nil placeholder:placeholder font:nil textColor:nil backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by frame + placeholder  + font
 
 @param font UIFont或者NSString或者NSNumber格式
 */
- (UITextField *)initWithFrame:(CGRect)frame placeholder:(NSString *)placeholder font:(id)font {
    return [UITextField textFieldWithFrame:frame text:nil placeholder:placeholder font:font textColor:nil backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by frame + placeholder  + font
 
 @param font UIFont或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame placeholder:(NSString *)placeholder font:(id)font {
    return [UITextField textFieldWithFrame:frame text:nil placeholder:placeholder font:font textColor:nil backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by frame + placeholder  + font + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 */
- (UITextField *)initWithFrame:(CGRect)frame placeholder:(NSString *)placeholder font:(id)font delegate:(id)delegate {
    return [UITextField textFieldWithFrame:frame text:nil placeholder:placeholder font:font textColor:nil backgroundColor:nil textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textField by frame + placeholder  + font + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame placeholder:(NSString *)placeholder font:(id)font delegate:(id)delegate {
    return [UITextField textFieldWithFrame:frame text:nil placeholder:placeholder font:font textColor:nil backgroundColor:nil textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textField by frame + placeholder  + font + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 */
- (UITextField *)initWithFrame:(CGRect)frame placeholder:(NSString *)placeholder font:(id)font textAlignment:(NSTextAlignment)textAlignment {
    return [UITextField textFieldWithFrame:frame text:nil placeholder:placeholder font:font textColor:nil backgroundColor:nil textAlignment:textAlignment];
}

/**
 create textField by frame + placeholder  + font + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame placeholder:(NSString *)placeholder font:(id)font textAlignment:(NSTextAlignment)textAlignment {
    return [UITextField textFieldWithFrame:frame text:nil placeholder:placeholder font:font textColor:nil backgroundColor:nil textAlignment:textAlignment];
}

/**
 create textField by frame + text + placeholder
 */
- (UITextField *)initWithFrame:(CGRect)frame text:(NSString *)text placeholder:(NSString *)placeholder {
    return [UITextField textFieldWithFrame:frame text:text placeholder:placeholder font:nil textColor:nil backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by frame + text + placeholder
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame text:(NSString *)text placeholder:(NSString *)placeholder {
    return [UITextField textFieldWithFrame:frame text:text placeholder:placeholder font:nil textColor:nil backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by frame + text + placeholder + font
 
 @param font UIFont或者NSString或者NSNumber格式
 */
- (UITextField *)initWithFrame:(CGRect)frame text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font {
    return [UITextField textFieldWithFrame:frame text:text placeholder:placeholder font:font textColor:nil backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by frame + text + placeholder + font
 
 @param font UIFont或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font {
    return [UITextField textFieldWithFrame:frame text:text placeholder:placeholder font:font textColor:nil backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by frame + text + placeholder + font + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 */
- (UITextField *)initWithFrame:(CGRect)frame text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font delegate:(id)delegate {
    return [UITextField textFieldWithFrame:frame text:text placeholder:placeholder font:font textColor:nil backgroundColor:nil textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textField by frame + text + placeholder + font + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font delegate:(id)delegate {
    return [UITextField textFieldWithFrame:frame text:text placeholder:placeholder font:font textColor:nil backgroundColor:nil textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textField by frame + text + placeholder + font + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 */
- (UITextField *)initWithFrame:(CGRect)frame text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font textAlignment:(NSTextAlignment)textAlignment {
    return [UITextField textFieldWithFrame:frame text:text placeholder:placeholder font:font textColor:nil backgroundColor:nil textAlignment:textAlignment];
}

/**
 create textField by frame + text + placeholder + font + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font textAlignment:(NSTextAlignment)textAlignment {
    return [UITextField textFieldWithFrame:frame text:text placeholder:placeholder font:font textColor:nil backgroundColor:nil textAlignment:textAlignment];
}

/**
 create textField by frame + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithFrame:(CGRect)frame backgroundColor:(id)backgroundColor {
    return [UITextField textFieldWithFrame:frame text:nil placeholder:nil font:nil textColor:nil backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by frame + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame backgroundColor:(id)backgroundColor {
    return [UITextField textFieldWithFrame:frame text:nil placeholder:nil font:nil textColor:nil backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by frame + text + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithFrame:(CGRect)frame text:(NSString *)text backgroundColor:(id)backgroundColor {
    return [UITextField textFieldWithFrame:frame text:text placeholder:nil font:nil textColor:nil backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by frame + text + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame text:(NSString *)text backgroundColor:(id)backgroundColor {
    return [UITextField textFieldWithFrame:frame text:text placeholder:nil font:nil textColor:nil backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by frame + placeholder + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithFrame:(CGRect)frame placeholder:(NSString *)placeholder backgroundColor:(id)backgroundColor {
    return [UITextField textFieldWithFrame:frame text:nil placeholder:placeholder font:nil textColor:nil backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by frame + placeholder + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame placeholder:(NSString *)placeholder backgroundColor:(id)backgroundColor {
    return [UITextField textFieldWithFrame:frame text:nil placeholder:placeholder font:nil textColor:nil backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by frame + text + font + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithFrame:(CGRect)frame text:(NSString *)text font:(id)font backgroundColor:(id)backgroundColor {
    return [UITextField textFieldWithFrame:frame text:text placeholder:nil font:font textColor:nil backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by frame + text + font + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame text:(NSString *)text font:(id)font backgroundColor:(id)backgroundColor {
    return [UITextField textFieldWithFrame:frame text:text placeholder:nil font:font textColor:nil backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by frame + text + font + backgroundColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithFrame:(CGRect)frame text:(NSString *)text font:(id)font backgroundColor:(id)backgroundColor delegate:(id)delegate {
    return [UITextField textFieldWithFrame:frame text:text placeholder:nil font:font textColor:nil backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textField by frame + text + font + backgroundColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame text:(NSString *)text font:(id)font backgroundColor:(id)backgroundColor delegate:(id)delegate {
    return [UITextField textFieldWithFrame:frame text:text placeholder:nil font:font textColor:nil backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textField by frame + placeholder + font + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithFrame:(CGRect)frame placeholder:(NSString *)placeholder font:(id)font backgroundColor:(id)backgroundColor {
    return [UITextField textFieldWithFrame:frame text:nil placeholder:placeholder font:font textColor:nil backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by frame + placeholder + font + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame placeholder:(NSString *)placeholder font:(id)font backgroundColor:(id)backgroundColor {
    return [UITextField textFieldWithFrame:frame text:nil placeholder:placeholder font:font textColor:nil backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by frame + placeholder + font + backgroundColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithFrame:(CGRect)frame placeholder:(NSString *)placeholder font:(id)font backgroundColor:(id)backgroundColor delegate:(id)delegate {
    return [UITextField textFieldWithFrame:frame text:nil placeholder:placeholder font:font textColor:nil backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textField by frame + placeholder + font + backgroundColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame placeholder:(NSString *)placeholder font:(id)font backgroundColor:(id)backgroundColor delegate:(id)delegate {
    return [UITextField textFieldWithFrame:frame text:nil placeholder:placeholder font:font textColor:nil backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textField by frame + text + font + backgroundColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithFrame:(CGRect)frame text:(NSString *)text font:(id)font backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment {
    return [UITextField textFieldWithFrame:frame text:text placeholder:nil font:font textColor:nil backgroundColor:backgroundColor textAlignment:textAlignment];
}

/**
 create textField by frame + text + font + backgroundColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame text:(NSString *)text font:(id)font backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment {
    return [UITextField textFieldWithFrame:frame text:text placeholder:nil font:font textColor:nil backgroundColor:backgroundColor textAlignment:textAlignment];
}

/**
 create textField by frame + placeholder + font + backgroundColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithFrame:(CGRect)frame placeholder:(NSString *)placeholder font:(id)font backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment {
    return [UITextField textFieldWithFrame:frame text:nil placeholder:placeholder font:font textColor:nil backgroundColor:backgroundColor textAlignment:textAlignment];
}

/**
 create textField by frame + placeholder + font + backgroundColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame placeholder:(NSString *)placeholder font:(id)font backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment {
    return [UITextField textFieldWithFrame:frame text:nil placeholder:placeholder font:font textColor:nil backgroundColor:backgroundColor textAlignment:textAlignment];
}

/**
 create textField by frame + text + placeholder + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithFrame:(CGRect)frame text:(NSString *)text placeholder:(NSString *)placeholder backgroundColor:(id)backgroundColor {
    return [UITextField textFieldWithFrame:frame text:text placeholder:placeholder font:nil textColor:nil backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by frame + text + placeholder + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame text:(NSString *)text placeholder:(NSString *)placeholder backgroundColor:(id)backgroundColor {
    return [UITextField textFieldWithFrame:frame text:text placeholder:placeholder font:nil textColor:nil backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by frame + text + placeholder + font + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithFrame:(CGRect)frame text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font backgroundColor:(id)backgroundColor {
    return [UITextField textFieldWithFrame:frame text:text placeholder:placeholder font:font textColor:nil backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by frame + text + placeholder + font + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font backgroundColor:(id)backgroundColor {
    return [UITextField textFieldWithFrame:frame text:text placeholder:placeholder font:font textColor:nil backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by frame + text + placeholder + font + backgroundColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithFrame:(CGRect)frame text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font backgroundColor:(id)backgroundColor delegate:(id)delegate {
    return [UITextField textFieldWithFrame:frame text:text placeholder:placeholder font:font textColor:nil backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textField by frame + text + placeholder + font + backgroundColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font backgroundColor:(id)backgroundColor delegate:(id)delegate {
    return [UITextField textFieldWithFrame:frame text:text placeholder:placeholder font:font textColor:nil backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textField by frame + text + placeholder + font + backgroundColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithFrame:(CGRect)frame text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment {
    return [UITextField textFieldWithFrame:frame text:text placeholder:placeholder font:font textColor:nil backgroundColor:backgroundColor textAlignment:textAlignment];
}

/**
 create textField by frame + text + placeholder + font + backgroundColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment {
    return [UITextField textFieldWithFrame:frame text:text placeholder:placeholder font:font textColor:nil backgroundColor:backgroundColor textAlignment:textAlignment];
}

/**
 create textField by frame + text + textColor
 
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithFrame:(CGRect)frame text:(NSString *)text textColor:(id)textColor {
    return [UITextField textFieldWithFrame:frame text:text placeholder:nil font:nil textColor:textColor backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by frame + text + textColor
 
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame text:(NSString *)text textColor:(id)textColor {
    return [UITextField textFieldWithFrame:frame text:text placeholder:nil font:nil textColor:textColor backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by frame + placeholder + textColor
 
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithFrame:(CGRect)frame placeholder:(NSString *)placeholder textColor:(id)textColor {
    return [UITextField textFieldWithFrame:frame text:nil placeholder:placeholder font:nil textColor:textColor backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by frame + placeholder + textColor
 
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame placeholder:(NSString *)placeholder textColor:(id)textColor {
    return [UITextField textFieldWithFrame:frame text:nil placeholder:placeholder font:nil textColor:textColor backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by frame + text + font + textColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithFrame:(CGRect)frame text:(NSString *)text font:(id)font textColor:(id)textColor {
    return [UITextField textFieldWithFrame:frame text:text placeholder:nil font:font textColor:textColor backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by frame + text + font + textColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame text:(NSString *)text font:(id)font textColor:(id)textColor {
    return [UITextField textFieldWithFrame:frame text:text placeholder:nil font:font textColor:textColor backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by frame + text + font + textColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithFrame:(CGRect)frame text:(NSString *)text font:(id)font textColor:(id)textColor delegate:(id)delegate {
    return [UITextField textFieldWithFrame:frame text:text placeholder:nil font:font textColor:textColor backgroundColor:nil textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textField by frame + text + font + textColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame text:(NSString *)text font:(id)font textColor:(id)textColor delegate:(id)delegate {
    return [UITextField textFieldWithFrame:frame text:text placeholder:nil font:font textColor:textColor backgroundColor:nil textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textField by frame + placeholder + font + textColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithFrame:(CGRect)frame placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor {
    return [UITextField textFieldWithFrame:frame text:nil placeholder:placeholder font:font textColor:textColor backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by frame + placeholder + font + textColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor {
    return [UITextField textFieldWithFrame:frame text:nil placeholder:placeholder font:font textColor:textColor backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by frame + placeholder + font + textColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithFrame:(CGRect)frame placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor delegate:(id)delegate {
    return [UITextField textFieldWithFrame:frame text:nil placeholder:placeholder font:font textColor:textColor backgroundColor:nil textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textField by frame + placeholder + font + textColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor delegate:(id)delegate {
    return [UITextField textFieldWithFrame:frame text:nil placeholder:placeholder font:font textColor:textColor backgroundColor:nil textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textField by frame + text + font + textColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithFrame:(CGRect)frame text:(NSString *)text font:(id)font textColor:(id)textColor textAlignment:(NSTextAlignment)textAlignment {
    return [UITextField textFieldWithFrame:frame text:text placeholder:nil font:font textColor:textColor backgroundColor:nil textAlignment:textAlignment];
}

/**
 create textField by frame + text + font + textColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame text:(NSString *)text font:(id)font textColor:(id)textColor textAlignment:(NSTextAlignment)textAlignment {
    return [UITextField textFieldWithFrame:frame text:text placeholder:nil font:font textColor:textColor backgroundColor:nil textAlignment:textAlignment];
}

/**
 create textField by frame + placeholder + font + textColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithFrame:(CGRect)frame placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor textAlignment:(NSTextAlignment)textAlignment {
    return [UITextField textFieldWithFrame:frame text:nil placeholder:placeholder font:font textColor:textColor backgroundColor:nil textAlignment:textAlignment];
}

/**
 create textField by frame + placeholder + font + textColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor textAlignment:(NSTextAlignment)textAlignment {
    return [UITextField textFieldWithFrame:frame text:nil placeholder:placeholder font:font textColor:textColor backgroundColor:nil textAlignment:textAlignment];
}

/**
 create textField by frame + text + textColor + backgroundColor
 
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithFrame:(CGRect)frame text:(NSString *)text textColor:(id)textColor backgroundColor:(id)backgroundColor {
    return [UITextField textFieldWithFrame:frame text:text placeholder:nil font:nil textColor:textColor backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by frame + text + textColor + backgroundColor
 
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame text:(NSString *)text textColor:(id)textColor backgroundColor:(id)backgroundColor {
    return [UITextField textFieldWithFrame:frame text:text placeholder:nil font:nil textColor:textColor backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by frame + text + font + textColor + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithFrame:(CGRect)frame text:(NSString *)text font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor {
    return [UITextField textFieldWithFrame:frame text:text placeholder:nil font:font textColor:textColor backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by frame + text + font + textColor + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame text:(NSString *)text font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor {
    return [UITextField textFieldWithFrame:frame text:text placeholder:nil font:font textColor:textColor backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by frame + text + font + textColor + backgroundColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithFrame:(CGRect)frame text:(NSString *)text font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor delegate:(id)delegate {
    return [UITextField textFieldWithFrame:frame text:text placeholder:nil font:font textColor:textColor backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textField by frame + text + font + textColor + backgroundColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame text:(NSString *)text font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor delegate:(id)delegate {
    return [UITextField textFieldWithFrame:frame text:text placeholder:nil font:font textColor:textColor backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textField by frame + text + font + textColor + backgroundColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithFrame:(CGRect)frame text:(NSString *)text font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment {
    return [UITextField textFieldWithFrame:frame text:text placeholder:nil font:font textColor:textColor backgroundColor:backgroundColor textAlignment:textAlignment];
}

/**
 create textField by frame + text + font + textColor + backgroundColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame text:(NSString *)text font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment {
    return [UITextField textFieldWithFrame:frame text:text placeholder:nil font:font textColor:textColor backgroundColor:backgroundColor textAlignment:textAlignment];
}

/**
 create textField by frame + placeholder + font + textColor + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithFrame:(CGRect)frame placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor {
    return [UITextField textFieldWithFrame:frame text:nil placeholder:placeholder font:font textColor:textColor backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by frame + placeholder + font + textColor + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor {
    return [UITextField textFieldWithFrame:frame text:nil placeholder:placeholder font:font textColor:textColor backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by frame + placeholder + font + textColor + backgroundColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithFrame:(CGRect)frame placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor delegate:(id)delegate {
    return [UITextField textFieldWithFrame:frame text:nil placeholder:placeholder font:font textColor:textColor backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textField by frame + placeholder + font + textColor + backgroundColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor delegate:(id)delegate {
    return [UITextField textFieldWithFrame:frame text:nil placeholder:placeholder font:font textColor:textColor backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textField by frame + placeholder + font + textColor + backgroundColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithFrame:(CGRect)frame placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment {
    return [UITextField textFieldWithFrame:frame text:nil placeholder:placeholder font:font textColor:textColor backgroundColor:backgroundColor textAlignment:textAlignment];
}

/**
 create textField by frame + placeholder + font + textColor + backgroundColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment {
    return [UITextField textFieldWithFrame:frame text:nil placeholder:placeholder font:font textColor:textColor backgroundColor:backgroundColor textAlignment:textAlignment];
}

/**
 create textField by frame + text + placeholder + textColor
 
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithFrame:(CGRect)frame text:(NSString *)text placeholder:(NSString *)placeholder textColor:(id)textColor {
    return [UITextField textFieldWithFrame:frame text:text placeholder:placeholder font:nil textColor:textColor backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by frame + text + placeholder + textColor
 
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame text:(NSString *)text placeholder:(NSString *)placeholder textColor:(id)textColor {
    return [UITextField textFieldWithFrame:frame text:text placeholder:placeholder font:nil textColor:textColor backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by frame + text + placeholder + font + textColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithFrame:(CGRect)frame text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor {
    return [UITextField textFieldWithFrame:frame text:text placeholder:placeholder font:font textColor:textColor backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by frame + text + placeholder + font + textColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor {
    return [UITextField textFieldWithFrame:frame text:text placeholder:placeholder font:font textColor:textColor backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by frame + text + placeholder + font + textColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithFrame:(CGRect)frame text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor delegate:(id)delegate {
    return [UITextField textFieldWithFrame:frame text:text placeholder:placeholder font:font textColor:textColor backgroundColor:nil textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textField by frame + text + placeholder + font + textColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor delegate:(id)delegate {
    return [UITextField textFieldWithFrame:frame text:text placeholder:placeholder font:font textColor:textColor backgroundColor:nil textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textField by frame + text + placeholder + textColor + backgroundColor
 
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithFrame:(CGRect)frame text:(NSString *)text placeholder:(NSString *)placeholder textColor:(id)textColor backgroundColor:(id)backgroundColor {
    return [UITextField textFieldWithFrame:frame text:text placeholder:placeholder font:nil textColor:textColor backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by frame + text + placeholder + textColor + backgroundColor
 
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame text:(NSString *)text placeholder:(NSString *)placeholder textColor:(id)textColor backgroundColor:(id)backgroundColor {
    return [UITextField textFieldWithFrame:frame text:text placeholder:placeholder font:nil textColor:textColor backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by frame + text + placeholder + font + textColor + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithFrame:(CGRect)frame text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor {
    return [UITextField textFieldWithFrame:frame text:text placeholder:placeholder font:font textColor:textColor backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by frame + text + placeholder + font + textColor + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor {
    return [UITextField textFieldWithFrame:frame text:text placeholder:placeholder font:font textColor:textColor backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by frame + text + placeholder + font + textColor + backgroundColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithFrame:(CGRect)frame text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor delegate:(id)delegate {
    return [UITextField textFieldWithFrame:frame text:text placeholder:placeholder font:font textColor:textColor backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textField by frame + text + placeholder + font + textColor + backgroundColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor delegate:(id)delegate {
    return [UITextField textFieldWithFrame:frame text:text placeholder:placeholder font:font textColor:textColor backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textField by frame + text + placeholder + font + textColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithFrame:(CGRect)frame text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor textAlignment:(NSTextAlignment)textAlignment {
    return [UITextField textFieldWithFrame:frame text:text placeholder:placeholder font:font textColor:textColor backgroundColor:nil textAlignment:textAlignment];
}

/**
 create textField by frame + text + placeholder + font + textColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor textAlignment:(NSTextAlignment)textAlignment {
    return [UITextField textFieldWithFrame:frame text:text placeholder:placeholder font:font textColor:textColor backgroundColor:nil textAlignment:textAlignment];
}

/**
 create textField by frame + text + placeholder + font + textColor + backgroundColor +
 textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithFrame:(CGRect)frame text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment {
    return [UITextField textFieldWithFrame:frame text:text placeholder:placeholder font:font textColor:textColor backgroundColor:backgroundColor textAlignment:textAlignment];
}

/**
 create textField by frame + text + placeholder + font + textColor + backgroundColor +
 textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame text:(nullable NSString *)text placeholder:(nullable NSString *)placeholder font:(nullable id)font textColor:(nullable id)textColor backgroundColor:(nullable id)backgroundColor textAlignment:(NSTextAlignment)textAlignment {
    UITextField   *textField = [UITextField textFieldWithText:text placeholder:placeholder font:font textColor:textColor backgroundColor:backgroundColor textAlignment:textAlignment];
    textField.frame = frame;
    return textField;
}

/**
 create textField by frame + text + placeholder + font + textColor + backgroundColor
 + textAlignment + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithFrame:(CGRect)frame text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment delegate:(id)delegate {
    return [UITextField textFieldWithFrame:frame text:text placeholder:placeholder font:font textColor:textColor backgroundColor:backgroundColor textAlignment:textAlignment delegate:delegate];
}

/**
 create textField by frame + text + placeholder + font + textColor + backgroundColor
 + textAlignment + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame text:(nullable NSString *)text placeholder:(nullable NSString *)placeholder font:(nullable id)font textColor:(nullable id)textColor backgroundColor:(nullable id)backgroundColor textAlignment:(NSTextAlignment)textAlignment delegate:(id)delegate {
    UITextField   *textField = [UITextField textFieldWithFrame:frame text:text placeholder:placeholder font:font textColor:textColor backgroundColor:backgroundColor textAlignment:textAlignment];
    if (delegate) {
        textField.delegate = delegate;
    }
    return textField;
}

/**
 create textField by center and bounds
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds {
    return [UITextField textFieldWithCenter:center bounds:bounds text:nil placeholder:nil font:nil textColor:nil backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by center and bounds
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds {
    return [UITextField textFieldWithCenter:center bounds:bounds text:nil placeholder:nil font:nil textColor:nil backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by center and bounds + text
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text {
    return [UITextField textFieldWithCenter:center bounds:bounds text:text placeholder:nil font:nil textColor:nil backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by center and bounds + text
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text {
    return [UITextField textFieldWithCenter:center bounds:bounds text:text placeholder:nil font:nil textColor:nil backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by center and bounds + text + font
 
 @param font UIFont或者NSString或者NSNumber格式
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font {
    return [UITextField textFieldWithCenter:center bounds:bounds text:text placeholder:nil font:font textColor:nil backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by center and bounds + text + font
 
 @param font UIFont或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font {
    return [UITextField textFieldWithCenter:center bounds:bounds text:text placeholder:nil font:font textColor:nil backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by center and bounds + text + font + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font delegate:(id)delegate {
    return [UITextField textFieldWithCenter:center bounds:bounds text:text placeholder:nil font:font textColor:nil backgroundColor:nil textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textField by center and bounds + text + font + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font delegate:(id)delegate {
    return [UITextField textFieldWithCenter:center bounds:bounds text:text placeholder:nil font:font textColor:nil backgroundColor:nil textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textField by center and bounds + text + font + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font textAlignment:(NSTextAlignment)textAlignment {
    return [UITextField textFieldWithCenter:center bounds:bounds text:text placeholder:nil font:font textColor:nil backgroundColor:nil textAlignment:textAlignment];
}

/**
 create textField by center and bounds + text + font + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font textAlignment:(NSTextAlignment)textAlignment {
    return [UITextField textFieldWithCenter:center bounds:bounds text:text placeholder:nil font:font textColor:nil backgroundColor:nil textAlignment:textAlignment];
}

/**
 create textField by center and bounds + placeholder
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds placeholder:(NSString *)placeholder {
    return [UITextField textFieldWithCenter:center bounds:bounds text:nil placeholder:placeholder font:nil textColor:nil backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by center and bounds + placeholder
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds placeholder:(NSString *)placeholder {
    return [UITextField textFieldWithCenter:center bounds:bounds text:nil placeholder:placeholder font:nil textColor:nil backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by center and bounds + placeholder  + font
 
 @param font UIFont或者NSString或者NSNumber格式
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds placeholder:(NSString *)placeholder font:(id)font {
    return [UITextField textFieldWithCenter:center bounds:bounds text:nil placeholder:placeholder font:font textColor:nil backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by center and bounds + placeholder  + font
 
 @param font UIFont或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds placeholder:(NSString *)placeholder font:(id)font {
    return [UITextField textFieldWithCenter:center bounds:bounds text:nil placeholder:placeholder font:font textColor:nil backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by center and bounds + placeholder  + font + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds placeholder:(NSString *)placeholder font:(id)font delegate:(id)delegate {
    return [UITextField textFieldWithCenter:center bounds:bounds text:nil placeholder:placeholder font:font textColor:nil backgroundColor:nil textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textField by center and bounds + placeholder  + font + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds placeholder:(NSString *)placeholder font:(id)font delegate:(id)delegate {
    return [UITextField textFieldWithCenter:center bounds:bounds text:nil placeholder:placeholder font:font textColor:nil backgroundColor:nil textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textField by center and bounds + placeholder  + font + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds placeholder:(NSString *)placeholder font:(id)font textAlignment:(NSTextAlignment)textAlignment {
    return [UITextField textFieldWithCenter:center bounds:bounds text:nil placeholder:placeholder font:font textColor:nil backgroundColor:nil textAlignment:textAlignment];
}

/**
 create textField by center and bounds + placeholder  + font + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds placeholder:(NSString *)placeholder font:(id)font textAlignment:(NSTextAlignment)textAlignment {
    return [UITextField textFieldWithCenter:center bounds:bounds text:nil placeholder:placeholder font:font textColor:nil backgroundColor:nil textAlignment:textAlignment];
}

/**
 create textField by center and bounds + text + placeholder
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text placeholder:(NSString *)placeholder {
    return [UITextField textFieldWithCenter:center bounds:bounds text:text placeholder:placeholder font:nil textColor:nil backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by center and bounds + text + placeholder
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text placeholder:(NSString *)placeholder {
    return [UITextField textFieldWithCenter:center bounds:bounds text:text placeholder:placeholder font:nil textColor:nil backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by center and bounds + text + placeholder + font
 
 @param font UIFont或者NSString或者NSNumber格式
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font {
    return [UITextField textFieldWithCenter:center bounds:bounds text:text placeholder:placeholder font:font textColor:nil backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by center and bounds + text + placeholder + font
 
 @param font UIFont或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font {
    return [UITextField textFieldWithCenter:center bounds:bounds text:text placeholder:placeholder font:font textColor:nil backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by center and bounds + text + placeholder + font + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font delegate:(id)delegate {
    return [UITextField textFieldWithCenter:center bounds:bounds text:text placeholder:placeholder font:font textColor:nil backgroundColor:nil textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textField by center and bounds + text + placeholder + font + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font delegate:(id)delegate {
    return [UITextField textFieldWithCenter:center bounds:bounds text:text placeholder:placeholder font:font textColor:nil backgroundColor:nil textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textField by center and bounds + text + placeholder + font + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font textAlignment:(NSTextAlignment)textAlignment {
    return [UITextField textFieldWithCenter:center bounds:bounds text:text placeholder:placeholder font:font textColor:nil backgroundColor:nil textAlignment:textAlignment];
}

/**
 create textField by center and bounds + text + placeholder + font + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font textAlignment:(NSTextAlignment)textAlignment {
    return [UITextField textFieldWithCenter:center bounds:bounds text:text placeholder:placeholder font:font textColor:nil backgroundColor:nil textAlignment:textAlignment];
}

/**
 create textField by center and bounds + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds backgroundColor:(id)backgroundColor {
    return [UITextField textFieldWithCenter:center bounds:bounds text:nil placeholder:nil font:nil textColor:nil backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by center and bounds + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds backgroundColor:(id)backgroundColor {
    return [UITextField textFieldWithCenter:center bounds:bounds text:nil placeholder:nil font:nil textColor:nil backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by center and bounds + text + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text backgroundColor:(id)backgroundColor {
    return [UITextField textFieldWithCenter:center bounds:bounds text:text placeholder:nil font:nil textColor:nil backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by center and bounds + text + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text backgroundColor:(id)backgroundColor {
    return [UITextField textFieldWithCenter:center bounds:bounds text:text placeholder:nil font:nil textColor:nil backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by center and bounds + placeholder + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds placeholder:(NSString *)placeholder backgroundColor:(id)backgroundColor {
    return [UITextField textFieldWithCenter:center bounds:bounds text:nil placeholder:placeholder font:nil textColor:nil backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by center and bounds + placeholder + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds placeholder:(NSString *)placeholder backgroundColor:(id)backgroundColor {
    return [UITextField textFieldWithCenter:center bounds:bounds text:nil placeholder:placeholder font:nil textColor:nil backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by center and bounds + text + font + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font backgroundColor:(id)backgroundColor {
    return [UITextField textFieldWithCenter:center bounds:bounds text:text placeholder:nil font:font textColor:nil backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by center and bounds + text + font + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font backgroundColor:(id)backgroundColor {
    return [UITextField textFieldWithCenter:center bounds:bounds text:text placeholder:nil font:font textColor:nil backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by center and bounds + text + font + backgroundColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font backgroundColor:(id)backgroundColor delegate:(id)delegate {
    return [UITextField textFieldWithCenter:center bounds:bounds text:text placeholder:nil font:font textColor:nil backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textField by center and bounds + text + font + backgroundColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font backgroundColor:(id)backgroundColor delegate:(id)delegate {
    return [UITextField textFieldWithCenter:center bounds:bounds text:text placeholder:nil font:font textColor:nil backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textField by center and bounds + placeholder + font + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds placeholder:(NSString *)placeholder font:(id)font backgroundColor:(id)backgroundColor {
    return [UITextField textFieldWithCenter:center bounds:bounds text:nil placeholder:placeholder font:font textColor:nil backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by center and bounds + placeholder + font + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds placeholder:(NSString *)placeholder font:(id)font backgroundColor:(id)backgroundColor {
    return [UITextField textFieldWithCenter:center bounds:bounds text:nil placeholder:placeholder font:font textColor:nil backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by center and bounds + placeholder + font + backgroundColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds placeholder:(NSString *)placeholder font:(id)font backgroundColor:(id)backgroundColor delegate:(id)delegate {
    return [UITextField textFieldWithCenter:center bounds:bounds text:nil placeholder:placeholder font:font textColor:nil backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textField by center and bounds + placeholder + font + backgroundColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds placeholder:(NSString *)placeholder font:(id)font backgroundColor:(id)backgroundColor delegate:(id)delegate {
    return [UITextField textFieldWithCenter:center bounds:bounds text:nil placeholder:placeholder font:font textColor:nil backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textField by center and bounds + text + font + backgroundColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment {
    return [UITextField textFieldWithCenter:center bounds:bounds text:text placeholder:nil font:font textColor:nil backgroundColor:backgroundColor textAlignment:textAlignment];
}

/**
 create textField by center and bounds + text + font + backgroundColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment {
    return [UITextField textFieldWithCenter:center bounds:bounds text:text placeholder:nil font:font textColor:nil backgroundColor:backgroundColor textAlignment:textAlignment];
}

/**
 create textField by center and bounds + placeholder + font + backgroundColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds placeholder:(NSString *)placeholder font:(id)font backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment {
    return [UITextField textFieldWithCenter:center bounds:bounds text:nil placeholder:placeholder font:font textColor:nil backgroundColor:backgroundColor textAlignment:textAlignment];
}

/**
 create textField by center and bounds + placeholder + font + backgroundColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds placeholder:(NSString *)placeholder font:(id)font backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment {
    return [UITextField textFieldWithCenter:center bounds:bounds text:nil placeholder:placeholder font:font textColor:nil backgroundColor:backgroundColor textAlignment:textAlignment];
}

/**
 create textField by center and bounds + text + placeholder + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text placeholder:(NSString *)placeholder backgroundColor:(id)backgroundColor {
    return [UITextField textFieldWithCenter:center bounds:bounds text:text placeholder:placeholder font:nil textColor:nil backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by center and bounds + text + placeholder + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text placeholder:(NSString *)placeholder backgroundColor:(id)backgroundColor {
    return [UITextField textFieldWithCenter:center bounds:bounds text:text placeholder:placeholder font:nil textColor:nil backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by center and bounds + text + placeholder + font + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font backgroundColor:(id)backgroundColor {
    return [UITextField textFieldWithCenter:center bounds:bounds text:text placeholder:placeholder font:font textColor:nil backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by center and bounds + text + placeholder + font + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font backgroundColor:(id)backgroundColor {
    return [UITextField textFieldWithCenter:center bounds:bounds text:text placeholder:placeholder font:font textColor:nil backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}


/**
 create textField by center and bounds + text + placeholder + font + backgroundColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font backgroundColor:(id)backgroundColor delegate:(id)delegate {
    return [UITextField textFieldWithCenter:center bounds:bounds text:text placeholder:placeholder font:font textColor:nil backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textField by center and bounds + text + placeholder + font + backgroundColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font backgroundColor:(id)backgroundColor delegate:(id)delegate {
    return [UITextField textFieldWithCenter:center bounds:bounds text:text placeholder:placeholder font:font textColor:nil backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textField by center and bounds + text + placeholder + font + backgroundColor +
 textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment {
    return [UITextField textFieldWithCenter:center bounds:bounds text:text placeholder:placeholder font:font textColor:nil backgroundColor:backgroundColor textAlignment:textAlignment];
}

/**
 create textField by center and bounds + text + placeholder + font + backgroundColor +
 textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment {
    return [UITextField textFieldWithCenter:center bounds:bounds text:text placeholder:placeholder font:font textColor:nil backgroundColor:backgroundColor textAlignment:textAlignment];
}

/**
 create textField by center and bounds + text + textColor
 
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text textColor:(id)textColor {
    return [UITextField textFieldWithCenter:center bounds:bounds text:text placeholder:nil font:nil textColor:textColor backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by center and bounds + text + textColor
 
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text textColor:(id)textColor {
    return [UITextField textFieldWithCenter:center bounds:bounds text:text placeholder:nil font:nil textColor:textColor backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by center and bounds + placeholder + textColor
 
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds placeholder:(NSString *)placeholder textColor:(id)textColor {
    return [UITextField textFieldWithCenter:center bounds:bounds text:nil placeholder:placeholder font:nil textColor:textColor backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by center and bounds + placeholder + textColor
 
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds placeholder:(NSString *)placeholder textColor:(id)textColor {
    return [UITextField textFieldWithCenter:center bounds:bounds text:nil placeholder:placeholder font:nil textColor:textColor backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by center and bounds + text + font + textColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font textColor:(id)textColor {
    return [UITextField textFieldWithCenter:center bounds:bounds text:text placeholder:nil font:font textColor:textColor backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by center and bounds + text + font + textColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font textColor:(id)textColor {
    return [UITextField textFieldWithCenter:center bounds:bounds text:text placeholder:nil font:font textColor:textColor backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by center and bounds + text + font + textColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font textColor:(id)textColor delegate:(id)delegate {
    return [UITextField textFieldWithCenter:center bounds:bounds text:text placeholder:nil font:font textColor:textColor backgroundColor:nil textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textField by center and bounds + text + font + textColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font textColor:(id)textColor delegate:(id)delegate {
    return [UITextField textFieldWithCenter:center bounds:bounds text:text placeholder:nil font:font textColor:textColor backgroundColor:nil textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textField by center and bounds + placeholder + font + textColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor {
    return [UITextField textFieldWithCenter:center bounds:bounds text:nil placeholder:placeholder font:font textColor:textColor backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by center and bounds + placeholder + font + textColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor {
    return [UITextField textFieldWithCenter:center bounds:bounds text:nil placeholder:placeholder font:font textColor:textColor backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by center and bounds + placeholder + font + textColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor delegate:(id)delegate {
    return [UITextField textFieldWithCenter:center bounds:bounds text:nil placeholder:placeholder font:font textColor:textColor backgroundColor:nil textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textField by center and bounds + placeholder + font + textColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor delegate:(id)delegate {
    return [UITextField textFieldWithCenter:center bounds:bounds text:nil placeholder:placeholder font:font textColor:textColor backgroundColor:nil textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textField by center and bounds + text + font + textColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font textColor:(id)textColor textAlignment:(NSTextAlignment)textAlignment {
    return [UITextField textFieldWithCenter:center bounds:bounds text:text placeholder:nil font:font textColor:textColor backgroundColor:nil textAlignment:textAlignment];
}

/**
 create textField by center and bounds + text + font + textColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font textColor:(id)textColor textAlignment:(NSTextAlignment)textAlignment {
    return [UITextField textFieldWithCenter:center bounds:bounds text:text placeholder:nil font:font textColor:textColor backgroundColor:nil textAlignment:textAlignment];
}

/**
 create textField by center and bounds + placeholder + font + textColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor textAlignment:(NSTextAlignment)textAlignment {
    return [UITextField textFieldWithCenter:center bounds:bounds text:nil placeholder:placeholder font:font textColor:textColor backgroundColor:nil textAlignment:textAlignment];
}

/**
 create textField by center and bounds + placeholder + font + textColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor textAlignment:(NSTextAlignment)textAlignment {
    return [UITextField textFieldWithCenter:center bounds:bounds text:nil placeholder:placeholder font:font textColor:textColor backgroundColor:nil textAlignment:textAlignment];
}

/**
 create textField by center and bounds + text + textColor + backgroundColor
 
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text textColor:(id)textColor backgroundColor:(id)backgroundColor {
    return [UITextField textFieldWithCenter:center bounds:bounds text:text placeholder:nil font:nil textColor:textColor backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by center and bounds + text + textColor + backgroundColor
 
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text textColor:(id)textColor backgroundColor:(id)backgroundColor {
    return [UITextField textFieldWithCenter:center bounds:bounds text:text placeholder:nil font:nil textColor:textColor backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by center and bounds + text + font + textColor + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor {
    return [UITextField textFieldWithCenter:center bounds:bounds text:text placeholder:nil font:font textColor:textColor backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by center and bounds + text + font + textColor + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor {
    return [UITextField textFieldWithCenter:center bounds:bounds text:text placeholder:nil font:font textColor:textColor backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by center and bounds + text + font + textColor + backgroundColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor delegate:(id)delegate {
    return [UITextField textFieldWithCenter:center bounds:bounds text:text placeholder:nil font:font textColor:textColor backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textField by center and bounds + text + font + textColor + backgroundColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor delegate:(id)delegate {
    return [UITextField textFieldWithCenter:center bounds:bounds text:text placeholder:nil font:font textColor:textColor backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textField by center and bounds + text + font + textColor + backgroundColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment {
    return [UITextField textFieldWithCenter:center bounds:bounds text:text placeholder:nil font:font textColor:textColor backgroundColor:backgroundColor textAlignment:textAlignment];
}

/**
 create textField by center and bounds + text + font + textColor + backgroundColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment {
    return [UITextField textFieldWithCenter:center bounds:bounds text:text placeholder:nil font:font textColor:textColor backgroundColor:backgroundColor textAlignment:textAlignment];
}

/**
 create textField by center and bounds + placeholder + font + textColor + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor {
    return [UITextField textFieldWithCenter:center bounds:bounds text:nil placeholder:placeholder font:font textColor:textColor backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by center and bounds + placeholder + font + textColor + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor {
    return [UITextField textFieldWithCenter:center bounds:bounds text:nil placeholder:placeholder font:font textColor:textColor backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by center and bounds + placeholder + font + textColor + backgroundColor
 + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor delegate:(id)delegate {
    return [UITextField textFieldWithCenter:center bounds:bounds text:nil placeholder:placeholder font:font textColor:textColor backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textField by center and bounds + placeholder + font + textColor + backgroundColor
 + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor delegate:(id)delegate {
    return [UITextField textFieldWithCenter:center bounds:bounds text:nil placeholder:placeholder font:font textColor:textColor backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textField by center and bounds + placeholder + font + textColor + backgroundColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment {
    return [UITextField textFieldWithCenter:center bounds:bounds text:nil placeholder:placeholder font:font textColor:textColor backgroundColor:backgroundColor textAlignment:textAlignment];
}

/**
 create textField by center and bounds + placeholder + font + textColor + backgroundColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment {
    return [UITextField textFieldWithCenter:center bounds:bounds text:nil placeholder:placeholder font:font textColor:textColor backgroundColor:backgroundColor textAlignment:textAlignment];
}

/**
 create textField by center and bounds + text + placeholder + textColor
 
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text placeholder:(NSString *)placeholder textColor:(id)textColor {
    return [UITextField textFieldWithCenter:center bounds:bounds text:text placeholder:placeholder font:nil textColor:textColor backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by center and bounds + text + placeholder + textColor
 
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text placeholder:(NSString *)placeholder textColor:(id)textColor {
    return [UITextField textFieldWithCenter:center bounds:bounds text:text placeholder:placeholder font:nil textColor:textColor backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by center and bounds + text + placeholder + font + textColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor {
    return [UITextField textFieldWithCenter:center bounds:bounds text:text placeholder:placeholder font:font textColor:textColor backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by center and bounds + text + placeholder + font + textColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor {
    return [UITextField textFieldWithCenter:center bounds:bounds text:text placeholder:placeholder font:font textColor:textColor backgroundColor:nil textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by center and bounds + text + placeholder + font + textColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor delegate:(id)delegate {
    return [UITextField textFieldWithCenter:center bounds:bounds text:text placeholder:placeholder font:font textColor:textColor backgroundColor:nil textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textField by center and bounds + text + placeholder + font + textColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor delegate:(id)delegate {
    return [UITextField textFieldWithCenter:center bounds:bounds text:text placeholder:placeholder font:font textColor:textColor backgroundColor:nil textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textField by center and bounds + text + placeholder + textColor + backgroundColor
 
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text placeholder:(NSString *)placeholder textColor:(id)textColor backgroundColor:(id)backgroundColor {
    return [UITextField textFieldWithCenter:center bounds:bounds text:text placeholder:placeholder font:nil textColor:textColor backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by center and bounds + text + placeholder + textColor + backgroundColor
 
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text placeholder:(NSString *)placeholder textColor:(id)textColor backgroundColor:(id)backgroundColor {
    return [UITextField textFieldWithCenter:center bounds:bounds text:text placeholder:placeholder font:nil textColor:textColor backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by center and bounds + text + placeholder + font + textColor + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor {
    return [UITextField textFieldWithCenter:center bounds:bounds text:text placeholder:placeholder font:font textColor:textColor backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by center and bounds + text + placeholder + font + textColor + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor {
    return [UITextField textFieldWithCenter:center bounds:bounds text:text placeholder:placeholder font:font textColor:textColor backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft];
}

/**
 create textField by center and bounds + text + placeholder + font + textColor
 + backgroundColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor delegate:(id)delegate {
    return [UITextField textFieldWithCenter:center bounds:bounds text:text placeholder:placeholder font:font textColor:textColor backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textField by center and bounds + text + placeholder + font + textColor
 + backgroundColor + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor delegate:(id)delegate {
    return [UITextField textFieldWithCenter:center bounds:bounds text:text placeholder:placeholder font:font textColor:textColor backgroundColor:backgroundColor textAlignment:NSTextAlignmentLeft delegate:delegate];
}

/**
 create textField by center and bounds + text + placeholder + font + textColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor textAlignment:(NSTextAlignment)textAlignment {
    return [UITextField textFieldWithCenter:center bounds:bounds text:text placeholder:placeholder font:font textColor:textColor backgroundColor:nil textAlignment:textAlignment];
}

/**
 create textField by center and bounds + text + placeholder + font + textColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor textAlignment:(NSTextAlignment)textAlignment {
    return [UITextField textFieldWithCenter:center bounds:bounds text:text placeholder:placeholder font:font textColor:textColor backgroundColor:nil textAlignment:textAlignment];
}

/**
 create textField by center and bounds + text + placeholder + font + textColor + backgroundColor +
 textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment {
    return [UITextField textFieldWithCenter:center bounds:bounds text:text placeholder:placeholder font:font textColor:textColor backgroundColor:backgroundColor textAlignment:textAlignment];
}

/**
 create textField by center and bounds + text + placeholder + font + textColor + backgroundColor +
 textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(nullable NSString *)text placeholder:(nullable NSString *)placeholder font:(nullable id)font textColor:(nullable id)textColor backgroundColor:(nullable id)backgroundColor textAlignment:(NSTextAlignment)textAlignment {
    UITextField   *textField = [UITextField textFieldWithText:text placeholder:placeholder font:font textColor:textColor backgroundColor:backgroundColor textAlignment:textAlignment];
    textField.center = center;
    textField.bounds = bounds;
    return textField;
}

/**
 create textField by center and bounds + text + placeholder + font + textColor
 + backgroundColor + textAlignment + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITextField *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text placeholder:(NSString *)placeholder font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment delegate:(id)delegate {
    return [UITextField textFieldWithCenter:center bounds:bounds text:text placeholder:placeholder font:font textColor:textColor backgroundColor:backgroundColor textAlignment:textAlignment delegate:delegate];
}

/**
 create textField by center and bounds + text + placeholder + font + textColor
 + backgroundColor + textAlignment + delegate
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITextField *)textFieldWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(nullable NSString *)text placeholder:(nullable NSString *)placeholder font:(nullable id)font textColor:(nullable id)textColor backgroundColor:(nullable id)backgroundColor textAlignment:(NSTextAlignment)textAlignment delegate:(id)delegate {
    UITextField   *textField = [UITextField textFieldWithCenter:center bounds:bounds text:text placeholder:placeholder font:font textColor:textColor backgroundColor:backgroundColor textAlignment:textAlignment];
    if (delegate) {
        textField.delegate = delegate;
    }
    return textField;
}

/**
 设置placeholder颜色
 
 @param placeholderColor UIColor或者NSString或者NSNumber格式
 */
- (void)placeholderColor:(id)placeholderColor {
    [self placeholderColor:placeholderColor placeholderFont:nil];
}

/**
 设置placeholder字体
 
 @param placeholderFont UIFont或者NSString或者NSNumber格式
 */
- (void)placeholderFont:(id)placeholderFont {
    [self placeholderColor:nil placeholderFont:placeholderFont];
}

/**
 设置placeholder颜色和字体
 
 @param placeholderFont UIFont或者NSString或者NSNumber格式
 @param placeholderColor UIColor或者NSString或者NSNumber格式
 */
- (void)placeholderColor:(nullable id)placeholderColor placeholderFont:(nullable id)placeholderFont {
    NSMutableAttributedString   *attr = nil;
    if (self.attributedPlaceholder && self.attributedPlaceholder.length > 0) {
        attr = [[NSMutableAttributedString alloc] initWithAttributedString:self.attributedPlaceholder];
    }else {
        attr = [[NSMutableAttributedString alloc] initWithString:self.placeholder];
    }
    UIColor   *new_placeholderColor = [UIKitBridge safeColor:placeholderColor];
    if (new_placeholderColor) {
        [attr addAttribute:NSForegroundColorAttributeName value:new_placeholderColor range:NSMakeRange(0, self.placeholder.length)];
    }
    [attr addAttribute:NSFontAttributeName value:[UIKitBridge safeFont:placeholderFont baseFont:FRG_TextFieldBaseFontSize] range:NSMakeRange(0, self.placeholder.length)];
    self.attributedPlaceholder = attr;
}

/**
 设置行间距
 */
- (void)lineSpacing:(CGFloat)space {
    NSMutableAttributedString  *attributedString = nil;
    NSTextAlignment  alignment = self.textAlignment;
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
    self.textAlignment = alignment;
}

/**
 设置字间距
 */
- (void)wordSpacing:(CGFloat)space {
    NSMutableAttributedString  *attributedString = nil;
    NSTextAlignment  alignment = self.textAlignment;
    if (self.attributedText && self.attributedText.length > 0) {
        attributedString = [[NSMutableAttributedString alloc] initWithAttributedString:self.attributedText];
    }else {
        attributedString = [[NSMutableAttributedString alloc] initWithString:self.text];
    }
    [attributedString addAttribute:NSKernAttributeName value:@(space) range:NSMakeRange(0, attributedString.length)];
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    [attributedString addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:NSMakeRange(0, attributedString.length)];
    self.attributedText = attributedString;
    self.textAlignment = alignment;
}

/**
 设置行间距和字间距
 */
- (void)lineSpacing:(float)lineSpace wordSpacing:(float)wordSpace {
    NSMutableAttributedString  *attributedString = nil;
    NSTextAlignment  alignment = self.textAlignment;
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
    self.textAlignment = alignment;
}

/**
 使用说明
 在- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string 代理中使用，返回真实的字符串
 
 */
- (NSString *)frg_shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    return [self.text stringByReplacingCharactersInRange:range withString:string];
}

/**
 限制输入的字符串长度

 result:返回length长度内的字符串
 */
- (void)maxLength:(NSInteger)length textStringBlock:(void(^)(NSString *textString))result{
    FRG_WEAKSELF(self, weakSelf)
    self.frg_maxLengthBlock = ^{
        FRG_STRONGSELF(weakSelf, strongSelf)
        if (result) {
            result(strongSelf.text);
        }
    };
    [self addTarget:self action:@selector(frg_textFieldEditChange:) forControlEvents:UIControlEventEditingChanged];
    self.FRG_TextFieldMaxLength = length;
    
}

- (void)frg_textFieldEditChange:(id)sender {
    if (self.FRG_TextFieldMaxLength <= 0) {
        return;
    }
    UITextField  *textField = (UITextField *)sender;
    NSString  *toBeString = textField.text;
    NSString *lang = [[UIApplication sharedApplication]textInputMode].primaryLanguage; // 键盘输入模式
    if ([lang isEqualToString:@"zh-Hans"]) { // 简体中文输入，包括简体拼音，健体五笔，简体手写
        UITextRange *selectedRange = [textField markedTextRange];
        //获取高亮部分
        UITextPosition *position = [textField positionFromPosition:selectedRange.start offset:0];
        // 没有高亮选择的字，则对已输入的文字进行字数统计和限制
        if (!position) {
            if (toBeString.length > self.FRG_TextFieldMaxLength) {
                textField.text = [toBeString substringToIndex:self.FRG_TextFieldMaxLength];
            }
        }
        // 有高亮选择的字符串，则暂不对文字进行统计和限制
        else{
            
        }
    }
    // 中文输入法以外的直接对其统计限制即可，不考虑其他语种情况
    else{
        if (toBeString.length > self.FRG_TextFieldMaxLength) {
            textField.text = [toBeString substringToIndex:self.FRG_TextFieldMaxLength];
        }
    }
    if (self.frg_maxLengthBlock) {
        self.frg_maxLengthBlock();
    }
    
}

@end
