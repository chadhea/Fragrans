//
//  NSMutableDictionary+Fragrans.h
//  Fragrans
//
//  Created by qmz on 2019/1/30.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSMutableDictionary (Fragrans)
/**
 给 Dictionary 添加元素
 
 @param object 值
 @param key 键
 */
- (void)safeSetObject:(id)object forKey:(id<NSCopying>)key;

@end

NS_ASSUME_NONNULL_END
