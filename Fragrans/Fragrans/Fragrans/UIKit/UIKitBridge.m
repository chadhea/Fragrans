//
//  UIKitBridge.m
//  Fragrans
//
//  Created by qmz on 2019/4/8.
//

#import "UIKitBridge.h"
#import <objc/runtime.h>
@implementation UIKitBridge
+ (NSString *)safeString:(NSString *)string {
    if ([string isKindOfClass:[NSNumber class]]) {
        NSNumber   *numStr = (NSNumber *)string;
        return [numStr stringValue];
    }else if ([self isBlankString:string]) {
        return @"";
    }
    return [NSString stringWithFormat:@"%@",string];
}
+ (BOOL)isBlankString:(NSString *)string {
    if (string == NULL ||
        [string isEqual:nil] ||
        [string isEqual:Nil]) {
        return YES;
    }else if ([string isEqual:[NSNull null]]) {
        return YES;
    }else if ([string length] == 0 ||
              [[string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]]length] == 0) {
        return YES;
    }else if ([string isEqualToString:@"null"] ||
              [string isEqualToString:@"<null>"] ||
              [string isEqualToString:@"(null)"]) {
        return YES;
    }
    return NO;
}
+ (BOOL)isEmpty:(NSObject *)object {
    if (object == nil) {
        return YES;
    }
    if (object == NULL) {
        return YES;
    }
    if ([object isKindOfClass:[NSNull class]]) {
        return YES;
    }
    if ([object isKindOfClass:[NSString class]]) {
        return [self isBlankString:(NSString *)object];
    }
    if ([object isKindOfClass:[NSData class]]) {
        return [((NSData *)object) length] <= 0;
    }
    if ([object isKindOfClass:[NSDictionary class]]) {
        return [((NSDictionary *)object) count] <= 0;
    }
    if ([object isKindOfClass:[NSArray class]]) {
        return [((NSArray *)object) count] <= 0;
    }
    if ([object isKindOfClass:[NSSet class]]) {
        return [((NSSet *)object) count] <= 0;
    }
    return NO;
}
+ (UIColor *)safeColor:(id)color {
    UIColor   *new_color = nil;
    if ([color isKindOfClass:[UIColor class]]) {
        new_color = color;
    }else if ([color isKindOfClass:[NSString class]] | [color isKindOfClass:[NSNumber class]]) {
        new_color = [self colorWithHexString:color];
    }
    return new_color;
}
+ (UIColor *)safeColor:(id)color baseColor:(id)baseColor {
    UIColor   *new_color = [self safeColor:color];
    if (!new_color) {
        new_color = [self safeColor:baseColor];
    }
    return new_color;
}

+ (UIColor *)colorWithHexString:(NSString *)hexString {
    hexString = [self safeString:hexString];
    NSString   *newHexString = [[hexString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];
    if ([newHexString containsString:@"0X"]) {
        newHexString = [newHexString stringByReplacingOccurrencesOfString:@"0X" withString:@""];
    }
    if ([newHexString containsString:@"#"]) {
        newHexString = [newHexString stringByReplacingOccurrencesOfString:@"#" withString:@""];
    }
    if (newHexString.length <= 0) {
        return [UIColor clearColor];
    }
    if (newHexString.length == 1) {
        newHexString = [NSString stringWithFormat:@"%@%@%@%@%@%@",
                        newHexString,
                        newHexString,
                        newHexString,
                        newHexString,
                        newHexString,
                        newHexString];
    }else if (newHexString.length == 2) {
        newHexString = [NSString stringWithFormat:@"%@%@%@%@%@%@",
                        [newHexString substringWithRange:NSMakeRange(0, 1)],
                        [newHexString substringWithRange:NSMakeRange(0, 1)],
                        [newHexString substringWithRange:NSMakeRange(0, 1)],
                        [newHexString substringWithRange:NSMakeRange(1, 1)],
                        [newHexString substringWithRange:NSMakeRange(1, 1)],
                        [newHexString substringWithRange:NSMakeRange(1, 1)]
                        ];
    }else if (newHexString.length == 3) {
        newHexString = [NSString stringWithFormat:@"%@%@%@%@%@%@",
                        [newHexString substringWithRange:NSMakeRange(0, 1)],
                        [newHexString substringWithRange:NSMakeRange(0, 1)],
                        [newHexString substringWithRange:NSMakeRange(1, 1)],
                        [newHexString substringWithRange:NSMakeRange(1, 1)],
                        [newHexString substringWithRange:NSMakeRange(2, 1)],
                        [newHexString substringWithRange:NSMakeRange(2, 1)]
                        ];
    }else if (newHexString.length == 4) {
        newHexString = [NSString stringWithFormat:@"%@%@%@%@%@%@",
                        [newHexString substringWithRange:NSMakeRange(0, 1)],
                        [newHexString substringWithRange:NSMakeRange(1, 1)],
                        [newHexString substringWithRange:NSMakeRange(2, 1)],
                        [newHexString substringWithRange:NSMakeRange(3, 1)],
                        [newHexString substringWithRange:NSMakeRange(3, 1)],
                        [newHexString substringWithRange:NSMakeRange(3, 1)]
                        ];
    }else if (newHexString.length == 5) {
        newHexString = [NSString stringWithFormat:@"%@%@%@%@%@%@",
                        [newHexString substringWithRange:NSMakeRange(0, 1)],
                        [newHexString substringWithRange:NSMakeRange(1, 1)],
                        [newHexString substringWithRange:NSMakeRange(2, 1)],
                        [newHexString substringWithRange:NSMakeRange(3, 1)],
                        [newHexString substringWithRange:NSMakeRange(4, 1)],
                        [newHexString substringWithRange:NSMakeRange(4, 1)]
                        ];
    }else if (newHexString.length > 6) {
        newHexString = [newHexString substringToIndex:6];
    }
    if (newHexString.length != 6) {
        return [UIColor clearColor];
    }
    
    NSRange   range;
    range.location = 0;
    range.length = 2;
    //r
    NSString   *rString = [newHexString substringWithRange:range];
    //g
    range.location = 2;
    NSString   *gString = [newHexString substringWithRange:range];
    //b
    NSString   *bString = [newHexString substringWithRange:range];
    
    unsigned int r,g,b;
    [[NSScanner scannerWithString:rString] scanHexInt:&r];
    [[NSScanner scannerWithString:gString] scanHexInt:&g];
    [[NSScanner scannerWithString:bString] scanHexInt:&b];
    return [UIColor colorWithRed:((float)r / 255.0f) green:((float)g / 255.0f) blue:((float)b / 255.0f) alpha:1.0f];
}
+ (UIFont *)safeFont:(id)font {
    UIFont   *new_font = nil;
    if ([font isKindOfClass:[UIFont class]]) {
        new_font = font;
    }else if ([font isKindOfClass:[NSString class]]) {
        font = [self safeString:font];
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
+ (UIFont *)safeFont:(id)font baseFont:(id)baseFont {
    UIFont   *new_font = [self safeFont:font];
    if (!new_font) {
        new_font = [self safeFont:baseFont];
    }
    return new_font;
    
}
+ (CGSize)boundingRectWithString:(NSString *)string font:(id)font size:(CGSize)size mode:(NSLineBreakMode)lineBreakModel lineSpacing:(CGFloat)spacing {
    NSMutableDictionary   *mutableDic = [NSMutableDictionary dictionary];
    mutableDic[NSFontAttributeName] = [self safeFont:font baseFont:@17];
    if (lineBreakModel != NSLineBreakByWordWrapping) {
        NSMutableParagraphStyle   *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
        paragraphStyle.lineSpacing = spacing;
        paragraphStyle.lineBreakMode = lineBreakModel;
        mutableDic[NSParagraphStyleAttributeName] = paragraphStyle;
    }
    CGRect   rect = [string boundingRectWithSize:size
                                       options:NSStringDrawingUsesLineFragmentOrigin |
                     NSStringDrawingUsesFontLeading
                                    attributes:mutableDic
                                       context:nil];
    return rect.size;
    
}
+ (CGFloat)boundingWidthWithString:(NSString *)string font:(id)font {
    CGSize  size = [self boundingRectWithString:string font:font size:CGSizeMake(MAXFLOAT, MAXFLOAT) mode:NSLineBreakByWordWrapping lineSpacing:0];
    return size.width;
}
+ (CGFloat)boundingHeightWithString:(NSString *)string font:(id)font {
    CGSize  size = [self boundingRectWithString:string font:font size:CGSizeMake(MAXFLOAT, MAXFLOAT) mode:NSLineBreakByWordWrapping lineSpacing:0];
    return size.height;
}
+ (BOOL)exchangeClassMethod:(SEL)originMethod targetMethod:(SEL)targetMethod error:(nullable NSError *)error {
    Method   originalMethod = class_getClassMethod([self class], originMethod);
    Method   switchMethod = class_getClassMethod([self class], targetMethod);
    if (!originalMethod) {
        return [[self class] unrecognizedMethod:originMethod error:error];
    }
    if (!switchMethod) {
        return [[self class] unrecognizedMethod:targetMethod error:error];
    }
    Class metaClass = object_getClass([self class]);
    BOOL didAddMethod = class_addMethod(metaClass,
                                        originMethod,
                                        method_getImplementation(switchMethod),
                                        method_getTypeEncoding(switchMethod));
    if (didAddMethod) {
        class_replaceMethod(metaClass,
                            targetMethod,
                            method_getImplementation(originalMethod),
                            method_getTypeEncoding(originalMethod));
    }else {
        method_exchangeImplementations(originalMethod, switchMethod);
    }
    return YES;
}
+ (BOOL)exchangeInstanceMethod:(SEL)originMethod targetMethod:(SEL)targetMethod error:(nullable NSError *)error{
    Method   originalMethod = class_getInstanceMethod([self class], originMethod);
    Method   switchMethod = class_getInstanceMethod([self class], targetMethod);
    if (!originalMethod) {
        return [[self class] unrecognizedMethod:originMethod error:error];
    }
    if (!switchMethod) {
        return [[self class] unrecognizedMethod:targetMethod error:error];
    }
    BOOL  didAddMethod = class_addMethod([self class],
                                         originMethod,
                                         method_getImplementation(switchMethod),
                                         method_getTypeEncoding(switchMethod));
    if (didAddMethod) {
        class_replaceMethod([self class],
                            targetMethod,
                            method_getImplementation(originalMethod),
                            method_getTypeEncoding(originalMethod));
    }else {
        method_exchangeImplementations(originalMethod, switchMethod);
    }
    return YES;
}

+ (BOOL)unrecognizedMethod:(SEL)method error:(NSError *)error{
    
    NSString *errorString = [NSString stringWithFormat:@"%@类没有找到%@", NSStringFromClass([self class]), NSStringFromSelector(method)];
    
    error = [NSError errorWithDomain:@"NSCocoaErrorDomain" code:-1 userInfo:@{NSLocalizedDescriptionKey:errorString}];
    
    return NO;
}
@end
