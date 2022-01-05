//
//  NSArray+Fragrans.h
//  Fragrans
//
//  Created by qmz on 2019/1/30.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSArray (Fragrans)
/**
 是否为空数组
 */
- (BOOL)isEmpty;

/**
 取值NSArray，避免越界
 
 @param index 索引
 @return 索引对应的值
 */
- (id)safeObjectAtIndex:(NSUInteger)index;

/**
 NSArray 类方法初始化传入object为nil的处理
 
 @param object 传入Object
 @return 返回数组
 */
+ (instancetype)safeArrayWithObject:(id)object;

/**
 随机出数组中的一个数据
 */
- (id)randomObject;

@end

NS_ASSUME_NONNULL_END
