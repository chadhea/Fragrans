//
//  UIFont+Fragrans.h
//  Fragrans
//
//  Created by qmz on 2019/3/27.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIFont (Fragrans)

/**
 安全样式
 
 @param font UIFont或者NSString或者NSNumber格式
 */
+ (UIFont *)safeFont:(id)font;

/**
 安全样式
 
 @param font UIFont或者NSString或者NSNumber格式
 @param baseFont UIFont或者NSString或者NSNumber格式
 @return 当font为UIFont或者NSString或者NSNumber格式时返回font，不是时返回baseFont;
 */
+ (UIFont *)safeFont:(id)font baseFont:(id)baseFont;

@end

NS_ASSUME_NONNULL_END
