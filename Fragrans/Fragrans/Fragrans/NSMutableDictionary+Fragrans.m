//
//  NSMutableDictionary+Fragrans.m
//  Fragrans
//
//  Created by qmz on 2019/1/30.
//

#import "NSMutableDictionary+Fragrans.h"
#import "NSObject+Fragrans.h"
#import <objc/runtime.h>

@implementation NSMutableDictionary (Fragrans)

+ (void)load {
    [super load];
    //保证方法只交换一次
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        //交换NSMutableDictionary中的setObjectForKey方法
        [objc_getClass("__NSDictionaryM") exchangeInstanceMethod:@selector(setObject:forKey:) targetMethod:@selector(frg_setObject:forKey:) error:nil];
        //交换NSMutableDictionary中的setValueForKey方法
        [objc_getClass("__NSDictionaryM") exchangeInstanceMethod:@selector(setValue:forKey:) targetMethod:@selector(frg_setValue:forKey:) error:nil];
        //交换NSMutableDictionary中的removeObjectForKey方法
        [objc_getClass("__NSDictionaryM") exchangeInstanceMethod:@selector(removeObjectForKey:) targetMethod:@selector(frg_removeObjectForKey:) error:nil];
    });
}

- (void)frg_setObject:(id)anObject forKey:(id<NSCopying>)aKey {
    if (anObject && aKey) {
        [self frg_setObject:anObject forKey:aKey];
    }else {
        if (anObject == nil) {
            NSLog(@"*** -[__NSDictionaryM setObject:forKey:]: object cantnot be nil");
        }
        if (aKey == nil) {
            NSLog(@"*** -[__NSDictionaryM setObject:forKey:]: key cantnot be nil");
        }
    }
}

- (void)frg_setValue:(id)value forKey:(NSString *)key {
    if (value && key) {
        [self frg_setValue:value forKey:key];
    }else {
        if (value == nil) {
            NSLog(@"*** -[__NSDictionaryM setValue:forKey:]: value cantnot be nil");
        }
        if (key == nil) {
            NSLog(@"*** -[__NSDictionaryM setValue:forKey:]: key cantnot be nil");
        }
    }
}

- (void)frg_removeObjectForKey:(id)aKey {
    if (aKey) {
        [self frg_removeObjectForKey:aKey];
    }else {
        NSLog(@"*** -[__NSDictionaryM removeObjectForKey:]: key cantnot be nil");
    }
}

/**
 给 Dictionary 添加元素
 
 @param object 值
 @param key 键
 */
- (void)safeSetObject:(id)object forKey:(id<NSCopying>)key {
    if (object && ![object isKindOfClass:[NSNull class]] && key) {
        [self setObject:object forKey:key];
    }else {
        return;
    }
}

@end
