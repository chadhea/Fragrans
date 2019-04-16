//
//  FRGAlertView.m
//  Fragrans
//
//  Created by qmz on 2019/4/9.
//

#import "FRGAlertView.h"
#import "CustomBridge.h"

@implementation FRGAlertView

/**
 系统弹框
 
 handler标题默认确定 style:UIAlertActionStyleDefault
 */
+ (void)alertWithTitle:(NSString *)title message:(NSString *)message handler:(void(^)(UIAlertAction *action))handler {
    [self alertWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert action:@"确定" style:UIAlertActionStyleDefault handler:handler];
}

/**
 系统弹框
 
 cancelHandler标题默认取消 style:UIAlertActionStyleCancel
 sureHandler标题默认确定 style:UIAlertActionStyleDefault
 */
+ (void)alertWithTitle:(NSString *)title message:(NSString *)message cancelHandler:(void(^)(UIAlertAction *action))cancelHandler sureHandler:(void(^)(UIAlertAction *action))sureHandler {
    [self alertWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert firstAction:@"取消" style:UIAlertActionStyleCancel handler:cancelHandler secondAction:@"确定" style:UIAlertActionStyleDefault handler:sureHandler];
}

/**
 系统弹框（一个按钮）
 */
+ (void)alertWithTitle:(NSString *)title message:(NSString *)message preferredStyle:(UIAlertControllerStyle)preferredStyle action:(NSString *)actionTitle style:(UIAlertActionStyle)actionStyle handler:(void(^)(UIAlertAction *action))handler {
    UIAlertController   *alertController = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:preferredStyle];
    UIAlertAction       *action = [UIAlertAction actionWithTitle:actionTitle style:actionStyle handler:handler];
    [alertController addAction:action];
    [[CustomBridge getCurrentVC] presentViewController:alertController animated:YES completion:nil];
}

/**
 系统弹框（两个按钮）
 */
+ (void)alertWithTitle:(NSString *)title message:(NSString *)message preferredStyle:(UIAlertControllerStyle)preferredStyle firstAction:(NSString *)firstTitle style:(UIAlertActionStyle)firstStyle handler:(void(^)(UIAlertAction *action))firstHandler secondAction:(NSString *)secondTitle style:(UIAlertActionStyle)secondStyle handler:(void(^)(UIAlertAction *action))secondHandler {
    UIAlertController   *alertController = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:preferredStyle];
    UIAlertAction   *firstAction = [UIAlertAction actionWithTitle:firstTitle style:firstStyle handler:firstHandler];
    UIAlertAction   *secondAction = [UIAlertAction actionWithTitle:secondTitle style:secondStyle handler:secondHandler];
    [alertController addAction:firstAction];
    [alertController addAction:secondAction];
    [[CustomBridge getCurrentVC] presentViewController:alertController animated:YES completion:nil];
}

/**
 系统弹框（三个按钮）
 */
+ (void)alertWithTitle:(NSString *)title message:(NSString *)message preferredStyle:(UIAlertControllerStyle)preferredStyle firstAction:(NSString *)firstTitle style:(UIAlertActionStyle)firstStyle handler:(void(^)(UIAlertAction *action))firstHandler secondAction:(NSString *)secondTitle style:(UIAlertActionStyle)secondStyle handler:(void(^)(UIAlertAction *action))secondHandler thirdAction:(NSString *)thirdTitle style:(UIAlertActionStyle)thirdStyle handler:(void(^)(UIAlertAction *action))thirdHandler {
    UIAlertController   *alertController = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:preferredStyle];
    UIAlertAction   *firstAction = [UIAlertAction actionWithTitle:firstTitle style:firstStyle handler:firstHandler];
    UIAlertAction   *secondAction = [UIAlertAction actionWithTitle:secondTitle style:secondStyle handler:secondHandler];
    UIAlertAction   *thirdAction = [UIAlertAction actionWithTitle:thirdTitle style:thirdStyle handler:thirdHandler];
    [alertController addAction:firstAction];
    [alertController addAction:secondAction];
    [alertController addAction:thirdAction];
    [[CustomBridge getCurrentVC] presentViewController:alertController animated:YES completion:nil];
}

/**
 系统弹框（多个按钮）
 
 @param title 弹框的title
 @param message 弹框的message
 @param preferredStyle 弹框的样式
 @param actionTitles 弹框的按钮title的集合
 @param styles 弹框的按钮样式的集合(NSNumber的是范围@0~@2)
 @param handler 点击事件的block
 */
+ (void)alertWithTitle:(NSString *)title message:(NSString *)message preferredStyle:(UIAlertControllerStyle)preferredStyle actionTitles:(NSArray <NSString *>*)actionTitles styles:(NSArray <NSNumber *>*)styles handler:(void(^)(UIAlertAction *action,NSInteger index))handler {
    if ([CustomBridge isEmpty:actionTitles]) {
        return;
    }
    UIAlertController   *alertController = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:preferredStyle];
    for (int i = 0; i < actionTitles.count; i ++) {
        NSString   *actionTitle = [CustomBridge safeString:actionTitles[i]];
        UIAlertActionStyle   actionStyle = UIAlertActionStyleDefault;
        if (![CustomBridge isEmpty:styles] && styles.count > i) {
            if ([styles[i] integerValue] >= UIAlertActionStyleDefault && [styles[i] integerValue] <= UIAlertActionStyleDestructive) {
                actionStyle = [styles[i] integerValue];
            }
        }
        UIAlertAction       *action = [UIAlertAction actionWithTitle:actionTitle style:actionStyle handler:^(UIAlertAction * _Nonnull action) {
            if (handler) {
                handler(action,i);
            }
        }];
        [alertController addAction:action];
    }
    
    [[CustomBridge getCurrentVC] presentViewController:alertController animated:YES completion:nil];
    
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
