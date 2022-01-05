//
//  NSDictionary+Fragrans.m
//  Fragrans
//
//  Created by qmz on 2019/1/30.
//

#import "NSDictionary+Fragrans.h"
#import "NSObject+Fragrans.h"
#import <objc/runtime.h>
@implementation NSDictionary (Fragrans)

/**
 是否为空字典
 */
- (BOOL)isEmpty {
    return [NSObject isEmpty:self];
}

/**
 创建字典
 
 @param object 初始化Value
 @param key 初始化Key
 @return 返回字典
 */
+ (id)safeDictionaryWithObject:(id)object forKey:(id <NSCopying>)key {
    if (object == nil || key == nil) {
        return [self dictionary];
    }else {
        return [self dictionaryWithObject:object forKey:key];
    }
}

/**
 从 Dictionary 取元素
 
 @param key key
 @return 返回值
 */
- (id)safeObjectForKey:(id<NSCopying>)key {
    if (key != nil) {
        return [self objectForKey:key];
    }else {
        return nil;
    }
}

/**
 返回字典升序排列Key
 
 @return 返回一个包含字典Key的数组
 */
- (NSArray *)allKeysSorted {
    return [[self allKeys]sortedArrayUsingSelector:@selector(caseInsensitiveCompare:)];
}

/**
 返回字典升序排列的Value
 
 @return 返回一个包含字典Value的数组
 */
- (NSArray *)allValuesSortedByKeys {
    NSArray  *sortedKeys = [self allKeysSorted];
    NSMutableArray   *valueSortedArray = [[NSMutableArray alloc] init];
    for (id key in sortedKeys) {
        [valueSortedArray addObject:self[key]];
    }
    return [valueSortedArray copy];
}

/**
 字典转换JSON
 
 @return 返回一个string，如果出错返回nil
 */
- (NSString *)jsonStringEncoded {
    if ([NSJSONSerialization isValidJSONObject:self]) {
        NSError   *error;
        NSData    *jsonData = [NSJSONSerialization dataWithJSONObject:self options:(0) error:&error];
        NSString  *jsonStr = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
        if (!error) {
            return jsonStr;
        }
    }
    return nil;
}

/**
 字典转json字符串
 */
- (NSString *)toJsonString {
    if ([self isEmpty]) {
        return @"";
    }
    NSError *parseError = nil;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:self options:NSJSONWritingPrettyPrinted error:&parseError];
    return [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
}

@end
