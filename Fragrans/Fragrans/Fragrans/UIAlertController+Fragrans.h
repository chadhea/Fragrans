//
//  UIAlertController+Fragrans.h
//  Fragrans
//
//  Created by qmz on 2019/1/30.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIAlertController (Fragrans)

/**
 UIAlertController
 自动present
 preferredStyle默认UIAlertControllerStyleAlert

 */
+ (UIAlertController *)alertControllerWithTitle:(NSString *)title message:(NSString *)message cancelButtonTitle:(NSString *)cancelButtonTitle;

/**
 UIAlertController
 自动present
 preferredStyle默认UIAlertControllerStyleAlert
 
 */
+ (UIAlertController *)alertControllerWithTitle:(NSString *)title message:(NSString *)message cancelButtonTitle:(NSString *)cancelButtonTitle cancelHandler:(void (^ __nullable)(UIAlertAction *action))cancelHandler;

/**
 UIAlertController
 自动present
 @param preferredStyle UIAlertControllerStyle
 
 */
+ (UIAlertController *)alertControllerWithStyle:(UIAlertControllerStyle)preferredStyle title:(NSString *)title message:(NSString *)message cancelButtonTitle:(NSString *)cancelButtonTitle;

/**
 UIAlertController
 自动present
 @param preferredStyle UIAlertControllerStyle
 
 */
+ (UIAlertController *)alertControllerWithStyle:(UIAlertControllerStyle)preferredStyle title:(NSString *)title message:(NSString *)message cancelButtonTitle:(NSString *)cancelButtonTitle cancelHandler:(void (^ __nullable)(UIAlertAction *action))cancelHandler;

/**
 UIAlertController
 自动present
 preferredStyle默认UIAlertControllerStyleAlert
 
 */
+ (UIAlertController *)alertControllerWithTitle:(NSString *)title message:(NSString *)message cancelBtnTitle:(NSString *)cancelButtonTitle otherButtonTitles:(nullable NSArray <NSString *>*)otherButtons cancelHandler:(void (^ __nullable)(UIAlertAction *action))cancelHandler otherHandlers:(void (^ __nullable)(UIAlertAction *action,NSString *title))otherHandlers;

/**
 UIAlertController
 自动present
 @param preferredStyle UIAlertControllerStyle
 
 */
+ (UIAlertController *)alertControllerWithStyle:(UIAlertControllerStyle)preferredStyle title:(NSString *)title message:(NSString *)message cancelBtnTitle:(NSString *)cancelButtonTitle otherButtonTitles:(nullable NSArray <NSString *>*)otherButtons cancelHandler:(void (^ __nullable)(UIAlertAction *action))cancelHandler otherHandlers:(void (^ __nullable)(UIAlertAction *action,NSString *title))otherHandlers;

@end

NS_ASSUME_NONNULL_END
