//
//  FragransDefine.h
//  Fragrans

#define FRGLog(fmt, ...) NSLog((@"[%s %s %d行] " fmt), [[NSString stringWithFormat:@"%s", __FILE__].lastPathComponent UTF8String], __FUNCTION__, __LINE__, ##__VA_ARGS__);
#define frg_statusBarHeight [[UIApplication sharedApplication] statusBarFrame].size.height;
#define frg_kUSER_DEFAULT [NSUserDefaults standardUserDefaults]
#define frg_kValueWithPoint(POINT_X,POINT_Y) [NSValue valueWithCGPoint:CGPointMake(POINT_X, POINT_Y)]
#define FRG_INVALIDATE_TIMER(__TIMER) { [__TIMER invalidate]; __TIMER = nil; }
#define FRG_REMOVE_VIEW(__VIEW) { [__VIEW removeFromSuperview]; __VIEW = nil; }

/**
 强引用弱引用
 */
#define FRG_WEAKSELF_WITH(OBJC,NAME) typeof(OBJC) __weak NAME = OBJC;
#define FRG_STRONGSELF_WITH(OBJC,NAME) typeof(OBJC) __strong NAME = OBJC;
#define FRG_WEAKSELF typeof(self) __weak weakSelf = self;
#define FRG_STRONGSELF typeof(weakSelf) __strong strongSelf = weakSelf;

/**
 线程安全
 */
#ifndef dispatch_frg_queue_async_safe
#define dispatch_frg_queue_async_safe(queue, block)\
if (dispatch_queue_get_label(DISPATCH_CURRENT_QUEUE_LABEL) == dispatch_queue_get_label(queue)) {\
block();\
} else {\
dispatch_async(queue, block);\
}
#endif

#ifndef dispatch_frg_main_async_safe
#define dispatch_frg_main_async_safe(block) dispatch_frg_queue_async_safe(dispatch_get_main_queue(), block)
#endif

#ifndef dispatch_frg_global_async_safe
#define dispatch_frg_global_async_safe(block)  dispatch_frg_queue_async_safe(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), block)
#endif

#pragma mark --- 线程组
#ifndef dispatch_frg_group
/**
 线程组
 
 @param FIRST_TASK 首先进行的任务block。
        可加入dispatch_frg_group_enter和dispatch_frg_group_leave。
 @param FIRST_TASK_IS_MAIN 首先进行的任务是否在主线程
 @param THEN_TASK 之后进行的任务block
 @param THEN_TASK_IS_MAIN 之后进行的任务是否在主线程
 */
#define dispatch_frg_group(FIRST_TASK,FIRST_TASK_IS_MAIN,THEN_TASK,THEN_TASK_IS_MAIN) dispatch_group_t  frg_group = dispatch_group_create();\
dispatch_group_async(frg_group,FIRST_TASK_IS_MAIN ? dispatch_get_main_queue() : dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0),FIRST_TASK);\
dispatch_group_notify(frg_group,THEN_TASK_IS_MAIN ? dispatch_get_main_queue() : dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), THEN_TASK);
#endif

#ifndef dispatch_frg_group_enter
#define dispatch_frg_group_enter dispatch_group_enter(frg_group);
#endif

#ifndef dispatch_frg_group_leave
#define dispatch_frg_group_leave dispatch_group_leave(frg_group);
#endif

/**
 信号量
 */
#ifndef dispatch_frg_semaphore
#define dispatch_frg_semaphore dispatch_semaphore_t  frg_semap = dispatch_semaphore_create(0);
#endif

#ifndef dispatch_frg_semaphore_signal
#define dispatch_frg_semaphore_signal dispatch_semaphore_signal(frg_semap);
#endif

#ifndef dispatch_frg_semaphore_wait
#define dispatch_frg_semaphore_wait dispatch_semaphore_wait(frg_semap, DISPATCH_TIME_FOREVER);
#endif





