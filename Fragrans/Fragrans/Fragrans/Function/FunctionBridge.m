//
//  FunctionBridge.m
//  Fragrans
//
//  Created by qmz on 2019/4/8.
//

#import "FunctionBridge.h"

@implementation FunctionBridge
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
+ (NSString *)stringToUrlStringEncoding:(NSString *)string {
    NSString *encodedString = (NSString *)CFBridgingRelease(CFURLCreateStringByAddingPercentEscapes(kCFAllocatorDefault,(CFStringRef)string,(CFStringRef)@"!$&'()*+,-./:;=?@_~%#[]", NULL,kCFStringEncodingUTF8));
    return encodedString;
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
@end
