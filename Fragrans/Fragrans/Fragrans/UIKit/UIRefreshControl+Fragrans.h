//
//  UIRefreshControl+Fragrans.h
//  Fragrans
//
//  Created by qmz on 2019/4/10.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef  void(^frg_refreshChangedBlock)(void);

@interface UIRefreshControl (Fragrans)

@property (nonatomic,copy) frg_refreshChangedBlock refreshChangedBlock;

/**
 UIRefreshControl
 
 @param tintColor UIColor或者NSString或者NSNumber格式
 @param startRefreshBlock 开始刷新的block回调
 */
- (UIRefreshControl *)initWithTintColor:(id)tintColor attributedTitle:(NSAttributedString *)attributedString startRefresh:(void(^)(void))startRefreshBlock;

/**
 UIRefreshControl
 
 @param tintColor UIColor或者NSString或者NSNumber格式
 @param startRefreshBlock 开始刷新的block回调
 */
+ (UIRefreshControl *)refreshControlWithTintColor:(id)tintColor attributedTitle:(NSAttributedString *)attributedString startRefresh:(void(^)(void))startRefreshBlock;
@end

NS_ASSUME_NONNULL_END
