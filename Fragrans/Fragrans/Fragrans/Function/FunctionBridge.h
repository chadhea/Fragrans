//
//  FunctionBridge.h
//  Fragrans
//
//  Created by 祁明振 on 2019/4/8.
//

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

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface FunctionBridge : NSObject
+ (NSString *)safeString:(NSString *)string;
+ (BOOL)isBlankString:(NSString *)string;
+ (NSString *)stringToUrlStringEncoding:(NSString *)string;
+ (BOOL)isEmpty:(NSObject *)object;

@end

NS_ASSUME_NONNULL_END
