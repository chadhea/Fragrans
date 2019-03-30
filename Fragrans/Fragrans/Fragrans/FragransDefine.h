//
//  FragransDefine.h
//  Fragrans


#define FRG_WEAKSELF(OBJC,NAME) typeof(OBJC) __weak NAME = OBJC;
#define FRG_STRONGSELF(OBJC,NAME) typeof(OBJC) __strong NAME = OBJC;

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
