//
//  NSMutableAttributedString+Fragrans.h
//  Fragrans
//
//  Created by qmz on 2019/3/27.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSMutableAttributedString (Fragrans)

/**
 文字的多样性
 
 @param string 要修改的文字
 @param color 颜色 UIColor或者NSString格式
 @param font 字体 UIFont或者NSString或者NSNumber格式
 range默认字符串长度范围
 @return attributeString
 */
+ (NSMutableAttributedString *)attributedString:(NSString *)string color:(id)color font:(id)font;

/**
 文字的多样性
 
 @param string 要修改的文字
 @param color 颜色 UIColor或者NSString格式
 @param font 字体 UIFont或者NSString或者NSNumber格式
 @param range 范围
 @return attributeString
 */
+ (NSMutableAttributedString *)attributedString:(NSString *)string color:(id)color font:(id)font range:(NSRange)range;

/**
 文字的多样性
 
 @param string 要修改的文字
 @param colors 颜色数组 UIColor或者NSString格式的集合
 @param font 字体 UIFont或者NSString或者NSNumber格式
 @param ranges 范围数组，已NSValue格式存储
 @return attributeString
 */
+ (NSMutableAttributedString *)attributedString:(NSString *)string colors:(NSArray <id>*)colors font:(id)font ranges:(NSArray <id>*)ranges;

/**
 文字的多样性
 
 @param string 要修改的文字
 @param color 颜色 UIColor或者NSString格式
 @param fonts 字体数组 UIFont或者NSString或者NSNumber格式的集合
 @param ranges 范围数组，已NSValue格式存储
 @return attributeString
 */
+ (NSMutableAttributedString *)attributedString:(NSString *)string color:(id)color fonts:(NSArray <id> *)fonts ranges:(NSArray <id>*)ranges;

/**
 文字的多样性
 
 @param string 要修改的文字
 @param colors 颜色数组 UIColor或者NSString格式的集合
 @param fonts 字体数组 UIFont或者NSString或者NSNumber格式的集合
 @param ranges 范围数组，已NSValue格式存储.
               也可以传NSNumber或NSString存储的数组格式等的集合。如@[@[@1,@1],@[@"2",@3]]等
               也可以传NSNumber或NSString格式的集合，如@[@1,@""3]等,但默认长度为1
 @return attributeString
 */
+ (NSMutableAttributedString *)attributedString:(NSString *)string colors:(NSArray <id>*)colors fonts:(NSArray <id> *)fonts ranges:(NSArray <id>*)ranges;

@end

NS_ASSUME_NONNULL_END
