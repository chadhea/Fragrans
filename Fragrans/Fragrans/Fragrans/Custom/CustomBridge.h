//
//  CustomBridge.h
//  Fragrans
//
//  Created by qmz on 2019/4/9.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN

@interface CustomBridge : NSObject
+ (BOOL)isEmpty:(NSObject *)object;
+ (NSString *)safeString:(NSString *)string;
+ (UIViewController *)getCurrentVC;
@end

NS_ASSUME_NONNULL_END
