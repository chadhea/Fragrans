//
//  UIAlertController+Fragrans.m
//  Fragrans
//
//  Created by qmz on 2019/1/30.
//

#import "UIAlertController+Fragrans.h"
#import "UIViewController+Fragrans.h"
@implementation UIAlertController (Fragrans)

/**
 UIAlertController
 自动present
 preferredStyle默认UIAlertControllerStyleAlert
 
 */
+ (UIAlertController *)alertControllerWithTitle:(NSString *)title message:(NSString *)message cancelButtonTitle:(NSString *)cancelButtonTitle {
    return [self alertControllerWithStyle:UIAlertControllerStyleAlert title:title message:message cancelBtnTitle:cancelButtonTitle otherButtonTitles:nil cancelHandler:nil otherHandlers:nil];
}

/**
 UIAlertController
 自动present
 preferredStyle默认UIAlertControllerStyleAlert
 
 */
+ (UIAlertController *)alertControllerWithTitle:(NSString *)title message:(NSString *)message cancelButtonTitle:(NSString *)cancelButtonTitle cancelHandler:(void (^ __nullable)(UIAlertAction *action))cancelHandler {
    return [self alertControllerWithStyle:UIAlertControllerStyleAlert title:title message:message cancelBtnTitle:cancelButtonTitle otherButtonTitles:nil cancelHandler:cancelHandler otherHandlers:nil];
}

/**
 UIAlertController
 自动present
 @param preferredStyle UIAlertControllerStyle
 
 */
+ (UIAlertController *)alertControllerWithStyle:(UIAlertControllerStyle)preferredStyle title:(NSString *)title message:(NSString *)message cancelButtonTitle:(NSString *)cancelButtonTitle {
    return [self alertControllerWithStyle:preferredStyle title:title message:message cancelBtnTitle:cancelButtonTitle otherButtonTitles:nil cancelHandler:nil otherHandlers:nil];
}
/**
 UIAlertController
 自动present
 @param preferredStyle UIAlertControllerStyle
 
 */
+ (UIAlertController *)alertControllerWithStyle:(UIAlertControllerStyle)preferredStyle title:(NSString *)title message:(NSString *)message cancelButtonTitle:(NSString *)cancelButtonTitle cancelHandler:(void (^ __nullable)(UIAlertAction *action))cancelHandler {
    return [self alertControllerWithStyle:preferredStyle title:title message:message cancelBtnTitle:cancelButtonTitle otherButtonTitles:nil cancelHandler:cancelHandler otherHandlers:nil];
}

/**
 UIAlertController
 自动present
 preferredStyle默认UIAlertControllerStyleAlert
 
 */
+ (UIAlertController *)alertControllerWithTitle:(NSString *)title message:(NSString *)message cancelBtnTitle:(NSString *)cancelButtonTitle otherButtonTitles:(nullable NSArray <NSString *>*)otherButtons cancelHandler:(void (^ __nullable)(UIAlertAction *action))cancelHandler otherHandlers:(void (^ __nullable)(UIAlertAction *action,NSString *title))otherHandlers {
    return [self alertControllerWithStyle:UIAlertControllerStyleAlert title:title message:message cancelBtnTitle:cancelButtonTitle otherButtonTitles:otherButtons cancelHandler:cancelHandler otherHandlers:otherHandlers];
}

/**
 UIAlertController
 自动present
 @param preferredStyle UIAlertControllerStyle
 
 */
+ (UIAlertController *)alertControllerWithStyle:(UIAlertControllerStyle)preferredStyle title:(NSString *)title message:(NSString *)message cancelBtnTitle:(NSString *)cancelButtonTitle otherButtonTitles:(nullable NSArray <NSString *>*)otherButtons cancelHandler:(void (^ __nullable)(UIAlertAction *action))cancelHandler otherHandlers:(void (^ __nullable)(UIAlertAction *action,NSString *title))otherHandlers {
    UIAlertController   *alert = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:preferredStyle];
    UIAlertAction   *cancelAction = [UIAlertAction actionWithTitle:cancelButtonTitle style:UIAlertActionStyleCancel handler:cancelHandler];
    [alert addAction:cancelAction];
    for (NSString  *btnTitle in otherButtons) {
        [alert addAction:[UIAlertAction actionWithTitle:btnTitle style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            if (otherHandlers) {
                otherHandlers(action,btnTitle);
            }
        }]];
    }
    [[UIViewController getCurrentVC] presentViewController:alert animated:YES completion:nil];
    return alert;
}

@end
