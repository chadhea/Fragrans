//
//  FRGAlertView.h
//  Fragrans
//
//  Created by qmz on 2019/4/9.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface FRGAlertView : UIView

/**
 系统弹框
 
 handler标题默认确定 style:UIAlertActionStyleDefault
 */
+ (void)alertWithTitle:(NSString *)title message:(NSString *)message handler:(void(^)(UIAlertAction *action))handler;

/**
 系统弹框
 
 cancelHandler标题默认取消 style:UIAlertActionStyleCancel
 sureHandler标题默认确定 style:UIAlertActionStyleDefault
 */
+ (void)alertWithTitle:(NSString *)title message:(NSString *)message cancelHandler:(void(^)(UIAlertAction *action))cancelHandler sureHandler:(void(^)(UIAlertAction *action))sureHandler;

/**
 系统弹框（一个按钮）
 */
+ (void)alertWithTitle:(NSString *)title message:(NSString *)message preferredStyle:(UIAlertControllerStyle)preferredStyle action:(NSString *)actionTitle style:(UIAlertActionStyle)actionStyle handler:(void(^)(UIAlertAction *action))handler;

/**
 系统弹框（两个按钮）
 */
+ (void)alertWithTitle:(NSString *)title message:(NSString *)message preferredStyle:(UIAlertControllerStyle)preferredStyle firstAction:(NSString *)firstTitle style:(UIAlertActionStyle)firstStyle handler:(void(^)(UIAlertAction *action))firstHandler secondAction:(NSString *)secondTitle style:(UIAlertActionStyle)secondStyle handler:(void(^)(UIAlertAction *action))secondHandler;

/**
 系统弹框（三个按钮）
 */
+ (void)alertWithTitle:(NSString *)title message:(NSString *)message preferredStyle:(UIAlertControllerStyle)preferredStyle firstAction:(NSString *)firstTitle style:(UIAlertActionStyle)firstStyle handler:(void(^)(UIAlertAction *action))firstHandler secondAction:(NSString *)secondTitle style:(UIAlertActionStyle)secondStyle handler:(void(^)(UIAlertAction *action))secondHandler thirdAction:(NSString *)thirdTitle style:(UIAlertActionStyle)thirdStyle handler:(void(^)(UIAlertAction *action))thirdHandler;

/**
 系统弹框（多个按钮）
 
 @param title 弹框的title
 @param message 弹框的message
 @param preferredStyle 弹框的样式
 @param actionTitles 弹框的按钮title的集合
 @param styles 弹框的按钮样式的集合(NSNumber的是范围@0~@2)
 @param handler 点击事件的block
 */
+ (void)alertWithTitle:(NSString *)title message:(NSString *)message preferredStyle:(UIAlertControllerStyle)preferredStyle actionTitles:(NSArray <NSString *>*)actionTitles styles:(NSArray <NSNumber *>*)styles handler:(void(^)(UIAlertAction *action,NSInteger index))handler;





@end

NS_ASSUME_NONNULL_END
