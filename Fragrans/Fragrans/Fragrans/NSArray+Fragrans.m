//
//  NSArray+Fragrans.m
//  Fragrans
//
//  Created by qmz on 2019/1/30.
//

#import "NSArray+Fragrans.h"
#import "NSObject+Fragrans.h"
#import <objc/runtime.h>
@implementation NSArray (Fragrans)

+(void)load {
    [super load];
    //保证方法只交换一次
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        //交换NSArray中的objectAtIndex方法
        [objc_getClass("__NSArrayI") exchangeInstanceMethod:@selector(objectAtIndex:) targetMethod:@selector(frg_objectAtIndex:) error:nil];
        //交换NSArray中的objectAtIndexedSubscript方法
        [objc_getClass("__NSArrayI") exchangeInstanceMethod:@selector(objectAtIndexedSubscript:) targetMethod:@selector(frg_objectAtIndexedSubscript:) error:nil];
        
    });
}

- (id)frg_objectAtIndexedSubscript:(NSUInteger)index {
    if (index < self.count) {
        return [self frg_objectAtIndexedSubscript:index];
    }else{
        NSLog(@"已处理NSArray的越界情况.objectAtIndex = %ld.withArray:%@,count = %ld", index,self,self.count);
        
        return nil;
    }
}

- (id)frg_objectAtIndex:(NSUInteger)index {
    if (index < self.count) {
        return [self frg_objectAtIndex:index];
    }else {
        NSLog(@"已处理NSArray的越界情况.objectAtIndex = %ld.withArray:%@,count = %ld", index,self,self.count);
        return nil;
    }
}

/**
 是否为空数组
 */
- (BOOL)isEmpty {
    return [NSObject isEmpty:self];
}

/**
 取值NSArray，避免越界
 
 @param index 索引
 @return 索引对应的值
 */
- (id)safeObjectAtIndex:(NSUInteger)index {
    if ([self isEmpty] || index >= self.count) {
        return nil;
    }else {
        return [self objectAtIndex:index];
    }
}

/**
 NSArray 类方法初始化传入object为nil的处理
 
 @param object 传入Object
 @return 返回数组
 */
+ (instancetype)safeArrayWithObject:(id)object {
    if (object == nil) {
        return [self array];
    }else {
        return [self arrayWithObject:object];
    }
}

/**
 随机出数组中的一个数据
 */
- (id)randomObject {
    if ([self isEmpty] || ![self isKindOfClass:[NSArray class]] || self.count == 0) {
        return nil;
    }
    int i = arc4random()%self.count;
    return [self safeObjectAtIndex:i];
}


@end
