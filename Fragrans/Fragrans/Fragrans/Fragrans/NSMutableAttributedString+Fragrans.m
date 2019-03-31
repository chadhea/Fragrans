//
//  NSMutableAttributedString+Fragrans.m
//  Fragrans
//
//  Created by qmz on 2019/3/27.
//

#import "NSMutableAttributedString+Fragrans.h"
#import "NSString+Fragrans.h"
#import "UIColor+Fragrans.h"
#import "UIFont+Fragrans.h"
@implementation NSMutableAttributedString (Fragrans)

/**
 文字的多样性
 
 @param string 要修改的文字
 @param color 颜色 UIColor或者NSString格式
 @param font 字体 UIFont或者NSString或者NSNumber格式
 range默认字符串长度范围
 @return attributeString
 */
+ (NSMutableAttributedString *)attributedString:(NSString *)string color:(id)color font:(id)font {
    return  [NSMutableAttributedString attributedString:string colors:@[color] fonts:@[font] ranges:@[[NSValue valueWithRange:NSMakeRange(0, [NSString safeString:string].length)]]];
}

/**
 文字的多样性
 
 @param string 要修改的文字
 @param color 颜色 UIColor或者NSString格式
 @param font 字体 UIFont或者NSString或者NSNumber格式
 @param range 范围
 @return attributeString
 */
+ (NSMutableAttributedString *)attributedString:(NSString *)string color:(id)color font:(id)font range:(NSRange)range {
    return  [NSMutableAttributedString attributedString:string colors:@[color] fonts:@[font] ranges:@[[NSValue valueWithRange:range]]];
}

/**
 文字的多样性
 
 @param string 要修改的文字
 @param colors 颜色数组 UIColor或者NSString格式的集合
 @param font 字体 UIFont或者NSString或者NSNumber格式
 @param ranges 范围数组，已NSValue格式存储
 @return attributeString
 */
+ (NSMutableAttributedString *)attributedString:(NSString *)string colors:(NSArray <id>*)colors font:(id)font ranges:(NSArray <NSValue *>*)ranges {
    return  [NSMutableAttributedString attributedString:string colors:colors fonts:@[font] ranges:ranges];
}

/**
 文字的多样性
 
 @param string 要修改的文字
 @param color 颜色 UIColor或者NSString格式
 @param fonts 字体数组 UIFont或者NSString或者NSNumber格式的集合
 @param ranges 范围数组，已NSValue格式存储
 @return attributeString
 */
+ (NSMutableAttributedString *)attributedString:(NSString *)string color:(id)color fonts:(NSArray <id> *)fonts ranges:(NSArray <NSValue *>*)ranges {
    return  [NSMutableAttributedString attributedString:string colors:@[color] fonts:fonts ranges:ranges];
}

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
+ (NSMutableAttributedString *)attributedString:(NSString *)string colors:(NSArray <id>*)colors fonts:(NSArray <id> *)fonts ranges:(NSArray <id>*)ranges {
    NSString   *safeStr = [NSString safeString:string];
    if (safeStr.length == 0 || (!colors && !fonts && !ranges) || (colors.count == 0 && fonts.count == 0 && ranges.count == 0)) {
        return [[NSMutableAttributedString alloc] initWithString:safeStr];
    }
    NSInteger  minLength = 0;
    NSMutableArray   *mutColors;
    if ([colors isKindOfClass:[NSArray class]]) {
        mutColors = [NSMutableArray arrayWithArray:colors];
    }else {
        mutColors = [NSMutableArray array];
    }
    NSMutableArray   *mutFonts;
    if ([fonts isKindOfClass:[NSArray class]]) {
        mutFonts = [NSMutableArray arrayWithArray:fonts];
    }else {
        mutFonts = [NSMutableArray array];
    }
    NSMutableArray   *mutRanges;
    if ([ranges isKindOfClass:[NSArray class]]) {
        mutRanges = [NSMutableArray arrayWithArray:ranges];
    }else {
        mutRanges = [NSMutableArray array];
    }
    if (mutColors.count == 0) {
        [mutColors addObject:[UIColor colorWithHexString:@"3"]];
    }
    if (mutFonts.count == 0) {
        [mutFonts addObject:[UIFont systemFontOfSize:17]];
    }
    if (mutRanges.count == 0) {
        [mutRanges addObject:[NSValue valueWithRange:NSMakeRange(0, string.length)]];
    }
    
    minLength = mutColors.count;
    if (minLength > mutRanges.count) {
        minLength = mutRanges.count;
    }
    
    NSMutableAttributedString   *attrStr = [[NSMutableAttributedString alloc] initWithString:safeStr];
    for (int i = 0; i < minLength; i ++) {
        
        UIColor   *color = [UIColor safeColor:mutColors[i] baseColor:@"3"];
        UIFont    *font = nil;
        if (fonts.count > i) {
            font = [UIFont safeFont:mutFonts[i] baseFont:@17];
        }else {
            font = [UIFont systemFontOfSize:17];
        }
        NSRange   range;
        if([mutRanges[i] isKindOfClass:[NSArray class]]){
            NSArray  *array = mutRanges[i];
            if (array.count <= 0) {
                continue;
            }else if (array.count == 1) {
                if ([array[0] isKindOfClass:[NSNumber class]]) {
                    NSNumber   *num = [array firstObject];
                    range = NSMakeRange([num integerValue],1);
                }else {
                    continue;
                }
            }else {
                NSInteger  firint = -1;
                NSInteger  lastint = -1;
                NSMutableArray   *mutarr = [NSMutableArray arrayWithArray:array];
                for (int i = 0; i < mutarr.count; i ++) {
                    if ([mutarr[i] isKindOfClass:[NSNumber class]] | [mutarr[i] isKindOfClass:[NSString class]]) {
                        firint = [array[i] integerValue];
                        [mutarr removeObjectAtIndex:i];
                        break;
                    }
                }
                
                for (int i = 0; i < mutarr.count; i ++) {
                    if ([mutarr[i] isKindOfClass:[NSNumber class]] | [mutarr[i] isKindOfClass:[NSString class]]) {
                        lastint = [array[i] integerValue];
                        break;
                    }
                }
                
                if (firint != -1 && lastint == -1) {
                    range = NSMakeRange(firint, 1);
                }else if (firint != -1 && lastint != -1) {
                    range = NSMakeRange(firint, lastint);
                }else {
                    continue;
                }
                
            }
            
        }else if ([mutRanges[i] isKindOfClass:[NSNumber class]] | [mutRanges[i] isKindOfClass:[NSString class]]) {
            range = NSMakeRange([mutRanges[i] integerValue], 1);
            NSLog(@"-----range-->>>%@",NSStringFromRange(range));
        }else if ([mutRanges[i] isKindOfClass:[NSValue class]]) {
            NSValue   *rangeVal = mutRanges[i];
            NSRange r = [rangeVal rangeValue];
            range = r;
        }else {
            continue;
        }
        
        if (range.location < 0 || range.location + range.length > safeStr.length) {
            continue;
        }
        
        [attrStr addAttribute:NSForegroundColorAttributeName value:color range:range];
        [attrStr addAttribute:NSFontAttributeName value:font range:range];
    }
    
    return attrStr;
    
}

@end
