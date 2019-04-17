//
//  UIKitBridge.h
//  Fragrans
//
//  Created by qmz on 2019/4/8.
//



#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN

@interface UIKitBridge : NSObject
+ (NSString *)safeString:(NSString *)string;
+ (BOOL)isBlankString:(NSString *)string;
+ (BOOL)isEmpty:(NSObject *)object;
+ (UIColor *)safeColor:(id)color;
+ (UIColor *)safeColor:(id)color baseColor:(id)baseColor;
+ (UIColor *)colorWithHexString:(NSString *)hexString;
+ (UIFont *)safeFont:(id)font;
+ (UIFont *)safeFont:(id)font baseFont:(id)baseFont;
+ (CGSize)boundingRectWithString:(NSString *)string font:(id)font size:(CGSize)size mode:(NSLineBreakMode)lineBreakModel lineSpacing:(CGFloat)spacing;
+ (CGFloat)boundingWidthWithString:(NSString *)string font:(id)font;
+ (CGFloat)boundingHeightWithString:(NSString *)string font:(id)font;
+ (BOOL)exchangeClassMethod:(SEL)originMethod targetMethod:(SEL)targetMethod error:(nullable NSError *)error;
+ (BOOL)exchangeInstanceMethod:(SEL)originMethod targetMethod:(SEL)targetMethod error:(nullable NSError *)error;
@end

NS_ASSUME_NONNULL_END
