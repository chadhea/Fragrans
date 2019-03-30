//
//  NSObject+Fragrans.m
//  Fragrans
//
//  Created by qmz on 2019/1/30.
//

#import "NSObject+Fragrans.h"
#import <objc/runtime.h>
#import "NSString+Fragrans.h"
@implementation NSObject (Fragrans)
/**
 判断对象是否是空
 
 @param object 输入对象
 @return 返回判断结果
 */
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
        return [NSString isBlankString:(NSString *)object];
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

/**
 注册通知观察者
 
 @param name 通知名称
 */
- (void)addObserveNotification:(NSString *)name selector:(SEL)selector {
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:selector
                                             name:name
                                             object:nil];
}

/**
 移除通知观察者
 
 @param name 通知名字
 */
- (void)removeObserveNotification:(NSString *)name {
    [[NSNotificationCenter defaultCenter] removeObserver:self
                                                name:name
                                                object:nil];
}

/**
 移除所有通知观察者
 */
- (void)removeObserveAllNotifications {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

/**
 发送通知
 
 @param name 通知名字
 */
- (void)postNotification:(NSString *)name {
    [[NSNotificationCenter defaultCenter] postNotificationName:name
                                                          object:nil];
}

/**
 发送通知
 
 @param name 通知名称
 @param object 参数对象
 */
- (void)postNotification:(NSString *)name withObject:(NSObject *)object {
    [[NSNotificationCenter defaultCenter] postNotificationName:name
                                                          object:object];
}

/**
 类方法交换
 
 @param originMethod 原方法
 @param targetMethod 目标方法
 @param error 替换过程中出现的错误消息
 @return 是否替换成功
 */
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

/**
 实例方法交换
 
 @param originMethod 原方法
 @param targetMethod 目标方法
 @param error 替换过程中出现的错误消息
 @return 是否替换成功
 */
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
