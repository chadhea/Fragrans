//
//  UIFont+Fragrans.m
//  Fragrans
//
//  Created by qmz on 2019/3/27.
//

#import "UIFont+Fragrans.h"
#import "NSString+Fragrans.h"
@implementation UIFont (Fragrans)

/**
 安全样式
 
 @param font UIFont或者NSString或者NSNumber格式
 */
+ (UIFont *)safeFont:(id)font {
    UIFont   *new_font = nil;
    if ([font isKindOfClass:[UIFont class]]) {
        new_font = font;
    }else if ([font isKindOfClass:[NSString class]]) {
        font = [NSString safeString:font];
        CGFloat  fontSize = [font floatValue];
        if (fontSize > 0) {
            new_font = [UIFont systemFontOfSize:fontSize];
        }
    }else if ([font isKindOfClass:[NSNumber class]]) {
        CGFloat  fontSize = [font floatValue];
        if (fontSize > 0) {
            new_font = [UIFont systemFontOfSize:fontSize];
        }
    }
    return new_font;
}

/**
 安全样式
 
 @param font UIFont或者NSString或者NSNumber格式
 @param baseFont UIFont或者NSString或者NSNumber格式
 @return 当font为UIFont或者NSString或者NSNumber格式时返回font，不是时返回baseFont;
 */
+ (UIFont *)safeFont:(id)font baseFont:(id)baseFont {
    UIFont   *new_font = [UIFont safeFont:font];
    if (!new_font) {
        new_font = [UIFont safeFont:baseFont];
    }
    return new_font;
    
}

@end
