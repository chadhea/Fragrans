//
//  NSMutableArray+Fragrans.m
//  Fragrans
//
//  Created by qmz on 2019/2/27.
//

#import "NSMutableArray+Fragrans.h"
#import "NSObject+Fragrans.h"
#import <objc/runtime.h>
@implementation NSMutableArray (Fragrans)
+(void)load{
    [super load];
    //保证方法只交换一次
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        //交换NSMutableArray中的objectAtIndex方法
        [objc_getClass("__NSArrayM") exchangeInstanceMethod:@selector(objectAtIndex:) targetMethod:@selector(frg_objectAtIndex:) error:nil];
        //交换NSMutableArray中的objectAtIndexedSubscript方法
        [objc_getClass("__NSArrayM") exchangeInstanceMethod:@selector(objectAtIndexedSubscript:) targetMethod:@selector(frg_objectAtIndexedSubscript:) error:nil];
    });
}

- (id)frg_objectAtIndex:(NSInteger)index{
    if (index < self.count) {
        return [self frg_objectAtIndex:index];
    }else{
        NSLog(@"已处理NSMutableArray的越界情况.objectAtIndex = %ld.withArray:%@,count = %ld", index,self,self.count);
        return nil;
    }
}

- (id)frg_objectAtIndexedSubscript:(NSInteger)index{
    if (index < self.count) {
        return [self frg_objectAtIndexedSubscript:index];
    }else{
        NSLog(@"已处理NSMutableArray的越界情况.objectAtIndex = %ld.withArray:%@,count = %ld", index,self,self.count);
        return nil;
    }
}

@end
