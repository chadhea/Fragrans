//
//  UIRefreshControl+Fragrans.m
//  Fragrans
//
//  Created by qmz on 2019/4/10.
//

#import "UIRefreshControl+Fragrans.h"
#import <objc/runtime.h>
#import "UIKitBridge.h"

static const void  *frg_refreshControl_UtilityKey = &frg_refreshControl_UtilityKey;

@implementation UIRefreshControl (Fragrans)

- (frg_refreshChangedBlock)refreshChangedBlock {
    return objc_getAssociatedObject(self, frg_refreshControl_UtilityKey);
}
- (void)setRefreshChangedBlock:(frg_refreshChangedBlock)refreshChangedBlock {
    objc_setAssociatedObject(self, frg_refreshControl_UtilityKey, refreshChangedBlock, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

/**
 UIRefreshControl
 
 @param tintColor UIColor或者NSString或者NSNumber格式
 @param startRefreshBlock 开始刷新的block回调
 */
- (UIRefreshControl *)initWithTintColor:(id)tintColor attributedTitle:(NSAttributedString *)attributedString startRefresh:(void(^)(void))startRefreshBlock {
    UIRefreshControl   *refreshControl = [[UIRefreshControl alloc]init];
    refreshControl.refreshChangedBlock = ^{
        if (startRefreshBlock) {
            startRefreshBlock();
        }
    };
    refreshControl.tintColor = tintColor;
    refreshControl.attributedTitle = attributedString;
    [refreshControl addTarget:self action:@selector(refreshChangedEvent) forControlEvents:UIControlEventValueChanged];
    
    return refreshControl;
}
- (void)refreshChangedEvent {
    if (self.refreshChangedBlock) {
        self.refreshChangedBlock();
    }
}
@end
