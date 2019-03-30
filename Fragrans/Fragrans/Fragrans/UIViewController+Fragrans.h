//
//  UIViewController+Fragrans.h
//  Fragrans
//
//  Created by qmz on 2019/1/30.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIViewController (Fragrans)
/**
 获取当前ViewController
 
 @return 返回当前界面ViewController
 */
+ (UIViewController *)getCurrentVC;

/**
 添加视图
 
 */
- (void)addSubview:(UIView *)view;

@end

NS_ASSUME_NONNULL_END
