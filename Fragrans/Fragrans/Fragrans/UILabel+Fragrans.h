//
//  UILabel+Fragrans.h
//  Fragrans
//
//  Created by qmz on 2019/1/31.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

static NSString   *const FRG_LabelBaseFontSize = @"17";
static NSString   *const FRG_LabelBaseColorHex = @"3";

@interface UILabel (Fragrans)

/**
 create label by tap(点击事件)
 */
- (UILabel *)initWithTap:(void(^)(id sender))tapBlock;

/**
 create view by tap(点击事件)
 */
+ (UILabel *)labelWithTap:(void(^)(id sender))tapBlock;

/**
 create label by text
 */
- (UILabel *)initWithText:(NSString *)text;

/**
 create label by text
 */
+ (UILabel *)labelWithText:(NSString *)text;

/**
 create label by text + tap(点击事件)
 */
- (UILabel *)initWithText:(NSString *)text tap:(void(^)(id sender))tapBlock;

/**
 create label by text + tap(点击事件)
 */
+ (UILabel *)labelWithText:(NSString *)text tap:(void(^)(id sender))tapBlock;

/**
 create label by backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UILabel *)initWithBackgroundColor:(id)backgroundColor;

/**
 create label by backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UILabel *)labelWithBackgroundColor:(id)backgroundColor;

/**
 create label by backgroundColor + tap(点击事件)
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UILabel *)initWithBackgroundColor:(id)backgroundColor tap:(void(^)(id sender))tapBlock;

/**
 create label by backgroundColor + tap(点击事件)
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UILabel *)labelWithBackgroundColor:(id)backgroundColor tap:(void(^)(id sender))tapBlock;

/**
 create label by text + font
 
 @param font UIFont或者NSString或者NSNumber格式
 */
- (UILabel *)initWithText:(NSString *)text font:(id)font;

/**
 create label by text + font
 
 @param font UIFont或者NSString或者NSNumber格式
 */
+ (UILabel *)labelWithText:(NSString *)text font:(id)font;

/**
 create label by text + font + tap(点击事件)
 
 @param font UIFont或者NSString或者NSNumber格式
 */
- (UILabel *)initWithText:(NSString *)text font:(id)font tap:(void(^)(id sender))tapBlock;

/**
 create label by text + font + tap(点击事件)
 
 @param font UIFont或者NSString或者NSNumber格式
 */
+ (UILabel *)labelWithText:(NSString *)text font:(id)font tap:(void(^)(id sender))tapBlock;

/**
 create label by text + textAlignment
 */
- (UILabel *)initWithText:(NSString *)text textAlignment:(NSTextAlignment)textAlignment;

/**
 create label by text + textAlignment
 */
+ (UILabel *)labelWithText:(NSString *)text textAlignment:(NSTextAlignment)textAlignment;

/**
 create label by text + textAlignment + tap(点击事件)
 */
- (UILabel *)initWithText:(NSString *)text textAlignment:(NSTextAlignment)textAlignment tap:(void(^)(id sender))tapBlock;

/**
 create label by text + textAlignment + tap(点击事件)
 */
+ (UILabel *)labelWithText:(NSString *)text textAlignment:(NSTextAlignment)textAlignment tap:(void(^)(id sender))tapBlock;

/**
 create label by text + font + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 */
- (UILabel *)initWithText:(NSString *)text font:(id)font textAlignment:(NSTextAlignment)textAlignment;

/**
 create label by text + font + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 */
+ (UILabel *)labelWithText:(NSString *)text font:(id)font textAlignment:(NSTextAlignment)textAlignment;

/**
 create label by text + font + textAlignment + tap(点击事件)
 
 @param font UIFont或者NSString或者NSNumber格式
 */
- (UILabel *)initWithText:(NSString *)text font:(id)font textAlignment:(NSTextAlignment)textAlignment tap:(void(^)(id sender))tapBlock;

/**
 create label by text + font + textAlignment + tap(点击事件)
 
 @param font UIFont或者NSString或者NSNumber格式
 */
+ (UILabel *)labelWithText:(NSString *)text font:(id)font textAlignment:(NSTextAlignment)textAlignment tap:(void(^)(id sender))tapBlock;

/**
 create label by text + textColor
 
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UILabel *)initWithText:(NSString *)text textColor:(id)textColor;

/**
 create label by text + textColor
 
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UILabel *)labelWithText:(NSString *)text textColor:(id)textColor;

/**
 create label by text + textColor + tap(点击事件)
 
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UILabel *)initWithText:(NSString *)text textColor:(id)textColor tap:(void(^)(id sender))tapBlock;

/**
 create label by text + textColor + tap(点击事件)
 
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UILabel *)labelWithText:(NSString *)text textColor:(id)textColor tap:(void(^)(id sender))tapBlock;

/**
 create label by text + textColor + textAlignment
 
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UILabel *)initWithText:(NSString *)text textColor:(id)textColor textAlignment:(NSTextAlignment)textAlignment;

/**
 create label by text + textColor + textAlignment
 
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UILabel *)labelWithText:(NSString *)text textColor:(id)textColor textAlignment:(NSTextAlignment)textAlignment;

/**
 create label by text + textColor + textAlignment + tap(点击事件)
 
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UILabel *)initWithText:(NSString *)text textColor:(id)textColor textAlignment:(NSTextAlignment)textAlignment tap:(void(^)(id sender))tapBlock;

/**
 create label by text + textColor + textAlignment + tap(点击事件)
 
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UILabel *)labelWithText:(NSString *)text textColor:(id)textColor textAlignment:(NSTextAlignment)textAlignment tap:(void(^)(id sender))tapBlock;

/**
 create label by text + font + textColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UILabel *)initWithText:(NSString *)text font:(id)font textColor:(id)textColor;

/**
 create label by text + font + textColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UILabel *)labelWithText:(NSString *)text font:(id)font textColor:(id)textColor;

/**
 create label by text + font + textColor + tap(点击事件)
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UILabel *)initWithText:(NSString *)text font:(id)font textColor:(id)textColor tap:(void(^)(id sender))tapBlock;

/**
 create label by text + font + textColor + tap(点击事件)
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UILabel *)labelWithText:(NSString *)text font:(id)font textColor:(id)textColor tap:(void(^)(id sender))tapBlock;

/**
 create label by text + font + textColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UILabel *)initWithText:(NSString *)text font:(id)font textColor:(id)textColor textAlignment:(NSTextAlignment)textAlignment;

/**
 create label by text + font + textColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UILabel *)initWithText:(NSString *)text font:(id)font textColor:(id)textColor textAlignment:(NSTextAlignment)textAlignment;

/**
 create label by text + font + textColor + textAlignment + tap(点击事件)
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UILabel *)initWithText:(NSString *)text font:(id)font textColor:(id)textColor textAlignment:(NSTextAlignment)textAlignment tap:(void(^)(id sender))tapBlock;

/**
 create label by text + font + textColor + textAlignment + tap(点击事件)
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UILabel *)initWithText:(NSString *)text font:(id)font textColor:(id)textColor textAlignment:(NSTextAlignment)textAlignment tap:(void(^)(id sender))tapBlock;

/**
 create label by text + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UILabel *)initWithText:(NSString *)text backgroundColor:(id)backgroundColor;

/**
 create label by text + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UILabel *)labelWithText:(NSString *)text backgroundColor:(id)backgroundColor;

/**
 create label by text + backgroundColor + tap(点击事件)
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UILabel *)initWithText:(NSString *)text backgroundColor:(id)backgroundColor tap:(void(^)(id sender))tapBlock;

/**
 create label by text + backgroundColor + tap(点击事件)
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UILabel *)labelWithText:(NSString *)text backgroundColor:(id)backgroundColor tap:(void(^)(id sender))tapBlock;

/**
 create label by text + textColor + backgroundColor
 
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UILabel *)initWithText:(NSString *)text textColor:(id)textColor backgroundColor:(id)backgroundColor;

/**
 create label by text + textColor + backgroundColor
 
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UILabel *)labelWithText:(NSString *)text textColor:(id)textColor backgroundColor:(id)backgroundColor;

/**
 create label by text + textColor + backgroundColor + tap(点击事件)
 
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UILabel *)initWithText:(NSString *)text textColor:(id)textColor backgroundColor:(id)backgroundColor tap:(void(^)(id sender))tapBlock;

/**
 create label by text + textColor + backgroundColor + tap(点击事件)
 
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UILabel *)labelWithText:(NSString *)text textColor:(id)textColor backgroundColor:(id)backgroundColor tap:(void(^)(id sender))tapBlock;

/**
 create label by text + textColor + backgroundColor + textAlignment
 
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UILabel *)initWithText:(NSString *)text textColor:(id)textColor backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment;

/**
 create label by text + textColor + backgroundColor + textAlignment
 
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UILabel *)labelWithText:(NSString *)text textColor:(id)textColor backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment;

/**
 create label by text + textColor + backgroundColor + textAlignment + tap(点击事件)
 
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UILabel *)initWithText:(NSString *)text textColor:(id)textColor backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment tap:(void(^)(id sender))tapBlock;

/**
 create label by text + textColor + backgroundColor + textAlignment + tap(点击事件)
 
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UILabel *)labelWithText:(NSString *)text textColor:(id)textColor backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment tap:(void(^)(id sender))tapBlock;

/**
 create label by text + font + textColor + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UILabel *)initWithText:(NSString *)text font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor;

/**
 create label by text + font + textColor + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UILabel *)labelWithText:(NSString *)text font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor;

/**
 create label by text + font + textColor + backgroundColor + tap(点击事件)
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UILabel *)initWithText:(NSString *)text font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor tap:(void(^)(id sender))tapBlock;

/**
 create label by text + font + textColor + backgroundColor + tap(点击事件)
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UILabel *)labelWithText:(NSString *)text font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor tap:(void(^)(id sender))tapBlock;

/**
 create label by text + font + textColor + backgroundColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UILabel *)initWithText:(NSString *)text font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment;

/**
 create label by text + font + textColor + backgroundColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UILabel *)labelWithText:(nullable NSString *)text font:(nullable id)font textColor:(nullable id)textColor backgroundColor:(nullable id)backgroundColor textAlignment:(NSTextAlignment)textAlignment;

/**
 create label by text + font + textColor + backgroundColor + textAlignment + tap(点击事件)
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 @param tapBlock 返回点击事件的block
 */
- (UILabel *)initWithText:(NSString *)text font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment tap:(void(^)(id sender))tapBlock;

/**
 create label by text + font + textColor + backgroundColor + textAlignment + tap(点击事件)
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 @param tapBlock 返回点击事件的block
 */
+ (UILabel *)labelWithText:(nullable NSString *)text font:(nullable id)font textColor:(nullable id)textColor backgroundColor:(nullable id)backgroundColor textAlignment:(NSTextAlignment)textAlignment tap:(nullable void(^)(id sender))tapBlock;

/**
 create label by frame + tap(点击事件)
 */
- (UILabel *)initWithFrame:(CGRect)frame tap:(void(^)(id sender))tapBlock;

/**
 create label by frame + tap(点击事件)
 */
+ (UILabel *)labelWithFrame:(CGRect)frame tap:(void(^)(id sender))tapBlock;

/**
 create label by frame + text
 */
- (UILabel *)initWithFrame:(CGRect)frame text:(NSString *)text;

/**
 create label by frame + text
 */
+ (UILabel *)labelWithFrame:(CGRect)frame text:(NSString *)text;

/**
 create label by frame + text + tap(点击事件)
 */
- (UILabel *)initWithFrame:(CGRect)frame text:(NSString *)text tap:(void(^)(id sender))tapBlock;

/**
 create label by frame + text + tap(点击事件)
 */
+ (UILabel *)labelWithFrame:(CGRect)frame text:(NSString *)text tap:(void(^)(id sender))tapBlock;

/**
 create label by frame + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UILabel *)initWithFrame:(CGRect)frame backgroundColor:(id)backgroundColor;

/**
 create label by frame + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UILabel *)labelWithFrame:(CGRect)frame backgroundColor:(id)backgroundColor;

/**
 create label by frame + backgroundColor + tap(点击事件)
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UILabel *)initWithFrame:(CGRect)frame backgroundColor:(id)backgroundColor tap:(void(^)(id sender))tapBlock;

/**
 create label by frame + backgroundColor + tap(点击事件)
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UILabel *)labelWithFrame:(CGRect)frame backgroundColor:(id)backgroundColor tap:(void(^)(id sender))tapBlock;

/**
 create label by frame + text + textAlignment
 */
- (UILabel *)initWithFrame:(CGRect)frame text:(NSString *)text textAlignment:(NSTextAlignment)textAlignment;

/**
 create label by frame + text + textAlignment
 */
+ (UILabel *)labelWithFrame:(CGRect)frame text:(NSString *)text textAlignment:(NSTextAlignment)textAlignment;

/**
 create label by frame + text + textAlignment + tap(点击事件)
 */
- (UILabel *)initWithFrame:(CGRect)frame text:(NSString *)text textAlignment:(NSTextAlignment)textAlignment tap:(void(^)(id sender))tapBlock;

/**
 create label by frame + text + textAlignment + tap(点击事件)
 */
+ (UILabel *)labelWithFrame:(CGRect)frame text:(NSString *)text textAlignment:(NSTextAlignment)textAlignment tap:(void(^)(id sender))tapBlock;

/**
 create label by frame + text + font
 
 @param font UIFont或者NSString或者NSNumber格式
 */
- (UILabel *)initWithFrame:(CGRect)frame text:(NSString *)text font:(id)font;

/**
 create label by frame + text + font
 
 @param font UIFont或者NSString或者NSNumber格式
 */
+ (UILabel *)labelWithFrame:(CGRect)frame text:(NSString *)text font:(id)font;

/**
 create label by frame + text + font + tap(点击事件)
 
 @param font UIFont或者NSString或者NSNumber格式
 */
- (UILabel *)initWithFrame:(CGRect)frame text:(NSString *)text font:(id)font tap:(void(^)(id sender))tapBlock;

/**
 create label by frame + text + font + tap(点击事件)
 
 @param font UIFont或者NSString或者NSNumber格式
 */
+ (UILabel *)labelWithFrame:(CGRect)frame text:(NSString *)text font:(id)font tap:(void(^)(id sender))tapBlock;

/**
 create label by frame + text + font + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 */
- (UILabel *)initWithFrame:(CGRect)frame text:(NSString *)text font:(id)font textAlignment:(NSTextAlignment)textAlignment;

/**
 create label by frame + text + font + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 */
+ (UILabel *)labelWithFrame:(CGRect)frame text:(NSString *)text font:(id)font textAlignment:(NSTextAlignment)textAlignment;

/**
 create label by frame + text + font + textAlignment + tap(点击事件)
 
 @param font UIFont或者NSString或者NSNumber格式
 */
- (UILabel *)initWithFrame:(CGRect)frame text:(NSString *)text font:(id)font textAlignment:(NSTextAlignment)textAlignment tap:(void(^)(id sender))tapBlock;

/**
 create label by frame + text + font + textAlignment + tap(点击事件)
 
 @param font UIFont或者NSString或者NSNumber格式
 */
+ (UILabel *)labelWithFrame:(CGRect)frame text:(NSString *)text font:(id)font textAlignment:(NSTextAlignment)textAlignment tap:(void(^)(id sender))tapBlock;

/**
 create label by frame + text + textColor
 
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UILabel *)initWithFrame:(CGRect)frame text:(NSString *)text textColor:(id)textColor;

/**
 create label by frame + text + textColor
 
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UILabel *)labelWithFrame:(CGRect)frame text:(NSString *)text textColor:(id)textColor;

/**
 create label by frame + text + textColor + tap(点击事件)
 
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UILabel *)initWithFrame:(CGRect)frame text:(NSString *)text textColor:(id)textColor tap:(void(^)(id sender))tapBlock;

/**
 create label by frame + text + textColor + tap(点击事件)
 
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UILabel *)labelWithFrame:(CGRect)frame text:(NSString *)text textColor:(id)textColor tap:(void(^)(id sender))tapBlock;

/**
 create label by frame + text + textColor + textAlignment
 
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UILabel *)initWithFrame:(CGRect)frame text:(NSString *)text textColor:(id)textColor textAlignment:(NSTextAlignment)textAlignment;

/**
 create label by frame + text + textColor + textAlignment
 
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UILabel *)labelWithFrame:(CGRect)frame text:(NSString *)text textColor:(id)textColor textAlignment:(NSTextAlignment)textAlignment;

/**
 create label by frame + text + textColor + textAlignment + tap(点击事件)
 
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UILabel *)initWithFrame:(CGRect)frame text:(NSString *)text textColor:(id)textColor textAlignment:(NSTextAlignment)textAlignment tap:(void(^)(id sender))tapBlock;

/**
 create label by frame + text + textColor + textAlignment + tap(点击事件)
 
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UILabel *)labelWithFrame:(CGRect)frame text:(NSString *)text textColor:(id)textColor textAlignment:(NSTextAlignment)textAlignment tap:(void(^)(id sender))tapBlock;

/**
 create label by frame + text + font + textColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UILabel *)initWithFrame:(CGRect)frame text:(NSString *)text font:(id)font textColor:(id)textColor;

/**
 create label by frame + text + font + textColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UILabel *)labelWithFrame:(CGRect)frame text:(NSString *)text font:(id)font textColor:(id)textColor;

/**
 create label by frame + text + font + textColor + tap(点击事件)
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UILabel *)initWithFrame:(CGRect)frame text:(NSString *)text font:(id)font textColor:(id)textColor tap:(void(^)(id sender))tapBlock;

/**
 create label by frame + text + font + textColor + tap(点击事件)
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UILabel *)labelWithFrame:(CGRect)frame text:(NSString *)text font:(id)font textColor:(id)textColor tap:(void(^)(id sender))tapBlock;

/**
 create label by frame + text + font + textColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UILabel *)initWithFrame:(CGRect)frame text:(NSString *)text font:(id)font textColor:(id)textColor textAlignment:(NSTextAlignment)textAlignment;

/**
 create label by frame + text + font + textColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UILabel *)labelWithFrame:(CGRect)frame text:(NSString *)text font:(id)font textColor:(id)textColor textAlignment:(NSTextAlignment)textAlignment;

/**
 create label by frame + text + font + textColor + textAlignment + tap(点击事件)
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UILabel *)initWithFrame:(CGRect)frame text:(NSString *)text font:(id)font textColor:(id)textColor textAlignment:(NSTextAlignment)textAlignment tap:(void(^)(id sender))tapBlock;

/**
 create label by frame + text + font + textColor + textAlignment + tap(点击事件)
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UILabel *)labelWithFrame:(CGRect)frame text:(NSString *)text font:(id)font textColor:(id)textColor textAlignment:(NSTextAlignment)textAlignment tap:(void(^)(id sender))tapBlock;

/**
 create label by frame + text + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UILabel *)initWithFrame:(CGRect)frame text:(NSString *)text backgroundColor:(id)backgroundColor;

/**
 create label by frame + text + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UILabel *)labelWithFrame:(CGRect)frame text:(NSString *)text backgroundColor:(id)backgroundColor;

/**
 create label by frame + text + backgroundColor + tap(点击事件)
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UILabel *)initWithFrame:(CGRect)frame text:(NSString *)text backgroundColor:(id)backgroundColor tap:(void(^)(id sender))tapBlock;

/**
 create label by frame + text + backgroundColor + tap(点击事件)
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UILabel *)labelWithFrame:(CGRect)frame text:(NSString *)text backgroundColor:(id)backgroundColor tap:(void(^)(id sender))tapBlock;

/**
 create label by frame + text + textColor + backgroundColor
 
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UILabel *)initWithFrame:(CGRect)frame text:(NSString *)text textColor:(id)textColor backgroundColor:(id)backgroundColor;

/**
 create label by frame + text + textColor + backgroundColor
 
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UILabel *)labelWithFrame:(CGRect)frame text:(NSString *)text textColor:(id)textColor backgroundColor:(id)backgroundColor;

/**
 create label by frame + text + textColor + backgroundColor + tap(点击事件)
 
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UILabel *)initWithFrame:(CGRect)frame text:(NSString *)text textColor:(id)textColor backgroundColor:(id)backgroundColor tap:(void(^)(id sender))tapBlock;

/**
 create label by frame + text + textColor + backgroundColor + tap(点击事件)
 
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UILabel *)labelWithFrame:(CGRect)frame text:(NSString *)text textColor:(id)textColor backgroundColor:(id)backgroundColor tap:(void(^)(id sender))tapBlock;

/**
 create label by frame + text + textColor + backgroundColor + textAlignment
 
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UILabel *)initWithFrame:(CGRect)frame text:(NSString *)text textColor:(id)textColor backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment;

/**
 create label by frame + text + textColor + backgroundColor + textAlignment
 
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UILabel *)labelWithFrame:(CGRect)frame text:(NSString *)text textColor:(id)textColor backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment;

/**
 create label by frame + text + textColor + backgroundColor + textAlignment + tap(点击事件)
 
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UILabel *)initWithFrame:(CGRect)frame text:(NSString *)text textColor:(id)textColor backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment tap:(void(^)(id sender))tapBlock;

/**
 create label by frame + text + textColor + backgroundColor + textAlignment + tap(点击事件)
 
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UILabel *)labelWithFrame:(CGRect)frame text:(NSString *)text textColor:(id)textColor backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment tap:(void(^)(id sender))tapBlock;

/**
 create label by frame + text + font + textColor + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UILabel *)initWithFrame:(CGRect)frame text:(NSString *)text font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor;

/**
 create label by frame + text + font + textColor + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UILabel *)labelWithFrame:(CGRect)frame text:(NSString *)text font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor;

/**
 create label by frame + text + font + textColor + backgroundColor + tap(点击事件)
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UILabel *)initWithFrame:(CGRect)frame text:(NSString *)text font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor tap:(void(^)(id sender))tapBlock;

/**
 create label by frame + text + font + textColor + backgroundColor + tap(点击事件)
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UILabel *)labelWithFrame:(CGRect)frame text:(NSString *)text font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor tap:(void(^)(id sender))tapBlock;

/**
 create label by frame + text + font + textColor + backgroundColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UILabel *)initWithFrame:(CGRect)frame text:(NSString *)text font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment;

/**
 create label by frame + text + font + textColor + backgroundColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UILabel *)labelWithFrame:(CGRect)frame text:(nullable NSString *)text font:(nullable id)font textColor:(nullable id)textColor backgroundColor:(nullable id)backgroundColor textAlignment:(NSTextAlignment)textAlignment;

/**
 create label by frame + text + font + textColor + backgroundColor + textAlignment + tap(点击事件)
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 @param tapBlock 返回点击事件的block
 */
- (UILabel *)initWithFrame:(CGRect)frame text:(NSString *)text font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment tap:(void(^)(id sender))tapBlock;

/**
 create label by frame + text + font + textColor + backgroundColor + textAlignment + tap(点击事件)
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 @param tapBlock 返回点击事件的block
 */
+ (UILabel *)labelWithFrame:(CGRect)frame text:(nullable NSString *)text font:(nullable id)font textColor:(nullable id)textColor backgroundColor:(nullable id)backgroundColor textAlignment:(NSTextAlignment)textAlignment tap:(nullable void(^)(id sender))tapBlock;

/**
 create label by center and bounds
 */
- (UILabel *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds;

/**
 create label by center and bounds
 */
+ (UILabel *)labelWithCenter:(CGPoint)center bounds:(CGRect)bounds;

/**
 create label by center and bounds + tap(点击事件)
 */
- (UILabel *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds tap:(void(^)(id sender))tapBlock;

/**
 create label by center and bounds + tap(点击事件)
 */
+ (UILabel *)labelWithCenter:(CGPoint)center bounds:(CGRect)bounds tap:(void(^)(id sender))tapBlock;

/**
 create label by center and bounds + text
 */
- (UILabel *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text;

/**
 create label by center and bounds + text
 */
+ (UILabel *)labelWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text;

/**
 create label by center and bounds + text + tap(点击事件)
 */
- (UILabel *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text tap:(void(^)(id sender))tapBlock;

/**
 create label by center and bounds + text + tap(点击事件)
 */
+ (UILabel *)labelWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text tap:(void(^)(id sender))tapBlock;

/**
 create label by center and bounds + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UILabel *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds backgroundColor:(id)backgroundColor;

/**
 create label by center and bounds + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UILabel *)labelWithCenter:(CGPoint)center bounds:(CGRect)bounds backgroundColor:(id)backgroundColor;

/**
 create label by center and bounds + backgroundColor + tap(点击事件)
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UILabel *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds backgroundColor:(id)backgroundColor tap:(void(^)(id sender))tapBlock;

/**
 create label by center and bounds + backgroundColor + tap(点击事件)
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UILabel *)labelWithCenter:(CGPoint)center bounds:(CGRect)bounds backgroundColor:(id)backgroundColor tap:(void(^)(id sender))tapBlock;

/**
 create label by center and bounds + text + textAlignment
 */
- (UILabel *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text textAlignment:(NSTextAlignment)textAlignment;

/**
 create label by center and bounds + text + textAlignment
 */
+ (UILabel *)labelWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text textAlignment:(NSTextAlignment)textAlignment;

/**
 create label by center and bounds + text + textAlignment + tap(点击事件)
 */
- (UILabel *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text textAlignment:(NSTextAlignment)textAlignment tap:(void(^)(id sender))tapBlock;

/**
 create label by center and bounds + text + textAlignment + tap(点击事件)
 */
+ (UILabel *)labelWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text textAlignment:(NSTextAlignment)textAlignment tap:(void(^)(id sender))tapBlock;

/**
 create label by center and bounds + text + font
 
 @param font UIFont或者NSString或者NSNumber格式
 */
- (UILabel *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font;

/**
 create label by center and bounds + text + font
 
 @param font UIFont或者NSString或者NSNumber格式
 */
+ (UILabel *)labelWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font;

/**
 create label by center and bounds + text + font + tap(点击事件)
 
 @param font UIFont或者NSString或者NSNumber格式
 */
- (UILabel *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font tap:(void(^)(id sender))tapBlock;

/**
 create label by center and bounds + text + font + tap(点击事件)
 
 @param font UIFont或者NSString或者NSNumber格式
 */
+ (UILabel *)labelWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font tap:(void(^)(id sender))tapBlock;

/**
 create label by center and bounds + text + font + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 */
- (UILabel *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font textAlignment:(NSTextAlignment)textAlignment;

/**
 create label by center and bounds + text + font + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 */
+ (UILabel *)labelWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font textAlignment:(NSTextAlignment)textAlignment;

/**
 create label by center and bounds + text + font + textAlignment + tap(点击事件)
 
 @param font UIFont或者NSString或者NSNumber格式
 */
- (UILabel *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font textAlignment:(NSTextAlignment)textAlignment tap:(void(^)(id sender))tapBlock;

/**
 create label by center and bounds + text + font + textAlignment + tap(点击事件)
 
 @param font UIFont或者NSString或者NSNumber格式
 */
+ (UILabel *)labelWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font textAlignment:(NSTextAlignment)textAlignment tap:(void(^)(id sender))tapBlock;

/**
 create label by center and bounds + text + textColor
 
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UILabel *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text textColor:(id)textColor;

/**
 create label by center and bounds + text + textColor
 
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UILabel *)labelWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text textColor:(id)textColor;

/**
 create label by center and bounds + text + textColor + tap(点击事件)
 
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UILabel *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text textColor:(id)textColor tap:(void(^)(id sender))tapBlock;

/**
 create label by center and bounds + text + textColor + tap(点击事件)
 
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UILabel *)labelWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text textColor:(id)textColor tap:(void(^)(id sender))tapBlock;

/**
 create label by center and bounds + text + textColor + textAlignment
 
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UILabel *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text textColor:(id)textColor textAlignment:(NSTextAlignment)textAlignment;

/**
 create label by center and bounds + text + textColor + textAlignment
 
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UILabel *)labelWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text textColor:(id)textColor textAlignment:(NSTextAlignment)textAlignment;

/**
 create label by center and bounds + text + textColor + textAlignment + tap(点击事件)
 
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UILabel *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text textColor:(id)textColor textAlignment:(NSTextAlignment)textAlignment tap:(void(^)(id sender))tapBlock;

/**
 create label by center and bounds + text + textColor + textAlignment + tap(点击事件)
 
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UILabel *)labelWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text textColor:(id)textColor textAlignment:(NSTextAlignment)textAlignment tap:(void(^)(id sender))tapBlock;

/**
 create label by center and bounds + text + font + textColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UILabel *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font textColor:(id)textColor;

/**
 create label by center and bounds + text + font + textColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UILabel *)labelWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font textColor:(id)textColor;

/**
 create label by center and bounds + text + font + textColor + tap(点击事件)
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UILabel *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font textColor:(id)textColor tap:(void(^)(id sender))tapBlock;

/**
 create label by center and bounds + text + font + textColor + tap(点击事件)
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UILabel *)labelWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font textColor:(id)textColor tap:(void(^)(id sender))tapBlock;

/**
 create label by center and bounds + text + font + textColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UILabel *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font textColor:(id)textColor textAlignment:(NSTextAlignment)textAlignment;

/**
 create label by center and bounds + text + font + textColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UILabel *)labelWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font textColor:(id)textColor textAlignment:(NSTextAlignment)textAlignment;

/**
 create label by center and bounds + text + font + textColor + textAlignment
 + tap(点击事件)
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
- (UILabel *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font textColor:(id)textColor textAlignment:(NSTextAlignment)textAlignment tap:(void(^)(id sender))tapBlock;

/**
 create label by center and bounds + text + font + textColor + textAlignment
 + tap(点击事件)
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 */
+ (UILabel *)labelWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font textColor:(id)textColor textAlignment:(NSTextAlignment)textAlignment tap:(void(^)(id sender))tapBlock;

/**
 create label by center and bounds + text + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UILabel *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text backgroundColor:(id)backgroundColor;

/**
 create label by center and bounds + text + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UILabel *)labelWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text backgroundColor:(id)backgroundColor;

/**
 create label by center and bounds + text + backgroundColor + tap(点击事件)
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UILabel *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text backgroundColor:(id)backgroundColor tap:(void(^)(id sender))tapBlock;

/**
 create label by center and bounds + text + backgroundColor + tap(点击事件)
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UILabel *)labelWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text backgroundColor:(id)backgroundColor tap:(void(^)(id sender))tapBlock;

/**
 create label by center and bounds + text + textColor + backgroundColor
 
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UILabel *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text textColor:(id)textColor backgroundColor:(id)backgroundColor;

/**
 create label by center and bounds + text + textColor + backgroundColor
 
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UILabel *)labelWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text textColor:(id)textColor backgroundColor:(id)backgroundColor;

/**
 create label by center and bounds + text + textColor + backgroundColor + tap(点击事件)
 
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UILabel *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text textColor:(id)textColor backgroundColor:(id)backgroundColor tap:(void(^)(id sender))tapBlock;

/**
 create label by center and bounds + text + textColor + backgroundColor + tap(点击事件)
 
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UILabel *)labelWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text textColor:(id)textColor backgroundColor:(id)backgroundColor tap:(void(^)(id sender))tapBlock;

/**
 create label by center and bounds + text + textColor + backgroundColor + textAlignment
 
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UILabel *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text textColor:(id)textColor backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment;

/**
 create label by center and bounds + text + textColor + backgroundColor + textAlignment
 
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UILabel *)labelWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text textColor:(id)textColor backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment;

/**
 create label by center and bounds + text + textColor + backgroundColor + textAlignment
 + tap(点击事件)
 
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UILabel *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text textColor:(id)textColor backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment tap:(void(^)(id sender))tapBlock;

/**
 create label by center and bounds + text + textColor + backgroundColor + textAlignment
 + tap(点击事件)
 
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UILabel *)labelWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text textColor:(id)textColor backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment tap:(void(^)(id sender))tapBlock;

/**
 create label by center and bounds + text + font + textColor + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UILabel *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor;

/**
 create label by center and bounds + text + font + textColor + backgroundColor
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UILabel *)labelWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor;

/**
 create label by center and bounds + text + font + textColor + backgroundColor
 + tap(点击事件)
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UILabel *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor tap:(void(^)(id sender))tapBlock;

/**
 create label by center and bounds + text + font + textColor + backgroundColor
 + tap(点击事件)
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UILabel *)labelWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor tap:(void(^)(id sender))tapBlock;

/**
 create label by center and bounds + text + font + textColor + backgroundColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UILabel *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment;

/**
 create label by center and bounds + text + font + textColor + backgroundColor + textAlignment
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UILabel *)labelWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(nullable NSString *)text font:(nullable id)font textColor:(nullable id)textColor backgroundColor:(nullable id)backgroundColor textAlignment:(NSTextAlignment)textAlignment;

/**
 create label by center and bounds + text + font + textColor + backgroundColor + textAlignment
 + tap(点击事件)
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 @param tapBlock 返回点击事件的block
 */
- (UILabel *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(NSString *)text font:(id)font textColor:(id)textColor backgroundColor:(id)backgroundColor textAlignment:(NSTextAlignment)textAlignment tap:(void(^)(id sender))tapBlock;

/**
 create label by center and bounds + text + font + textColor + backgroundColor + textAlignment
 + tap(点击事件)
 
 @param font UIFont或者NSString或者NSNumber格式
 @param textColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 @param tapBlock 返回点击事件的block
 */
+ (UILabel *)labelWithCenter:(CGPoint)center bounds:(CGRect)bounds text:(nullable NSString *)text font:(nullable id)font textColor:(nullable id)textColor backgroundColor:(nullable id)backgroundColor textAlignment:(NSTextAlignment)textAlignment tap:(nullable void(^)(id sender))tapBlock;

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
 */
- (void)lineSpacing:(float)lineSpace wordSpacing:(float)wordSpace;



@end

NS_ASSUME_NONNULL_END
