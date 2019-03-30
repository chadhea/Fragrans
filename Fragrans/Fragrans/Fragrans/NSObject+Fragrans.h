//
//  NSObject+Fragrans.h
//  Fragrans
//
//  Created by qmz on 2019/1/30.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (Fragrans)
/**
 判断对象是否是空
 
 @param object 输入对象
 @return 返回判断结果
 */
+ (BOOL)isEmpty:(NSObject *)object;

/**
 注册通知观察者
 
 @param name 通知名称
 */
- (void)addObserveNotification:(NSString *)name selector:(SEL)selector;

/**
 移除通知观察者
 
 @param name 通知名字
 */
- (void)removeObserveNotification:(NSString *)name;

/**
 移除所有通知观察者
 */
- (void)removeObserveAllNotifications;

/**
 发送通知
 
 @param name 通知名字
 */
- (void)postNotification:(NSString *)name;

/**
 发送通知
 
 @param name 通知名称
 @param object 参数对象
 */
- (void)postNotification:(NSString *)name withObject:(NSObject *)object;

/**
 类方法交换
 
 @param originMethod 原方法
 @param targetMethod 目标方法
 @param error 替换过程中出现的错误消息
 @return 是否替换成功
 */
+ (BOOL)exchangeClassMethod:(SEL)originMethod targetMethod:(SEL)targetMethod error:(nullable NSError *)error;

/**
 实例方法交换
 
 @param originMethod 原方法
 @param targetMethod 目标方法
 @param error 替换过程中出现的错误消息
 @return 是否替换成功
 */
+ (BOOL)exchangeInstanceMethod:(SEL)originMethod targetMethod:(SEL)targetMethod error:(nullable NSError *)error;



@end

NS_ASSUME_NONNULL_END
