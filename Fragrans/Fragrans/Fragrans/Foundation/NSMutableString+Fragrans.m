//
//  NSMutableString+Fragrans.m
//  Fragrans
//
//  Created by qmz on 2019/2/27.
//

#import "NSMutableString+Fragrans.h"
#import "NSObject+Fragrans.h"
#import <objc/runtime.h>
@implementation NSMutableString (Fragrans)
+(void)load {
    [super load];
    //保证方法只交换一次
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        //交换NSMutableString中的replaceCharactersInRange:withString:方法
        [objc_getClass("__NSCFString") exchangeInstanceMethod:@selector(replaceCharactersInRange:withString:) targetMethod:@selector(frg_replaceCharactersInRange:withString:) error:nil];
        //交换NSMutableString中的insertString:atIndex:方法
        [objc_getClass("__NSCFString") exchangeInstanceMethod:@selector(insertString:atIndex:) targetMethod:@selector(frg_insertString:atIndex:) error:nil];
        //交换NSMutableString中的deleteCharactersInRange:方法
        [objc_getClass("__NSCFString") exchangeInstanceMethod:@selector(deleteCharactersInRange:) targetMethod:@selector(frg_deleteCharactersInRange:) error:nil];
    });
}

- (void)frg_replaceCharactersInRange:(NSRange)range withString:(NSString *)string {
    if (range.location+range.length > self.length) {
        NSString *errorInfo = [NSString stringWithFormat:@"*** -[__NSCFString replaceCharactersInRange:withString:]: range out of bounds"];
        NSLog(@"%@",errorInfo);
        if (range.location < self.length) {
            [self frg_replaceCharactersInRange:NSMakeRange(range.location, self.length-range.location) withString:string];
        }else {
            [self frg_replaceCharactersInRange:NSMakeRange(self.length>0?self.length - 1:0, self.length>0?1:0) withString:string];
        }
    }else {
        [self frg_replaceCharactersInRange:range withString:string];
    }
}

- (void)frg_insertString:(NSString *)string atIndex:(NSUInteger)index {
    if (index > self.length) {
        NSString *errorInfo = [NSString stringWithFormat:@"*** -[__NSCFString insertString:atIndex:]: index out of bounds"];
        NSLog(@"%@",errorInfo);
    }else {
        [self frg_insertString:string atIndex:index];
    }
}

- (void)frg_deleteCharactersInRange:(NSRange)range {
    if (range.location+range.length > self.length) {
        NSString *errorInfo = [NSString stringWithFormat:@"*** -[__NSCFString deleteCharactersInRange:]: range out of bounds"];
        NSLog(@"%@",errorInfo);
        if (range.location < self.length) {
            [self frg_deleteCharactersInRange:NSMakeRange(range.location, self.length-range.location)];
        }
    }else{
        [self frg_deleteCharactersInRange:range];
    }
}

@end
