//
//  NSDictionary+Fragrans.h
//  Fragrans
//
//  Created by qmz on 2019/1/30.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSDictionary (Fragrans)
/**
 是否为空字典
 */
- (BOOL)isEmpty;

/**
 创建字典
 
 @param object 初始化Value
 @param key 初始化Key
 @return 返回字典
 */
+ (id)safeDictionaryWithObject:(id)object forKey:(id <NSCopying>)key;

/**
 从 Dictionary 取元素
 
 @param key key
 @return 返回值
 */
- (id)safeObjectForKey:(id<NSCopying>)key;

/**
 返回字典升序排列Key
 
 @return 返回一个包含字典Key的数组
 */
- (NSArray *)allKeysSorted;

/**
 返回字典升序排列的Value
 
 @return 返回一个包含字典Value的数组
 */
- (NSArray *)allValuesSortedByKeys;

/**
 字典转换JSON
 
 @return 返回一个string，如果出错返回nil
 */
- (NSString *)jsonStringEncoded;

/**
 字典转json字符串
 */
- (NSString *)toJsonString;

@end

NS_ASSUME_NONNULL_END
