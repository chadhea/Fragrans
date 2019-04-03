//
//  UIBarButtonItem+Fragrans.h
//  Fragrans
//
//  Created by qmz on 2019/3/28.
//


#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN

@interface UIBarButtonItem (Fragrans)

/**
 返回一个仅带文字的UIBarButtonItem
 
 @param normalImage UIImage或者NSString格式
 @param highImageName UIImage或者NSString格式
 */
+ (UIBarButtonItem *)itemWithNormalImageName:(id)normalImage highImageName:(NSString *)highImageName target:(id)target action:(SEL)action;

/**
 返回一个仅带文字的UIBarButtonItem
 
 @param font UIFont或者NSString或者NSNumber格式
 @param titleColor UIColor或者NSString格式
 */
+ (UIBarButtonItem *)itemWithTitle:(NSString *)title font:(id)font titleColor:(id)titleColor target:(id)target action:(SEL)action;

/**
 返回一个带有attribute的UIBarButtonItem
 */
+ (UIBarButtonItem *)itemWithAttributeTitle:(NSAttributedString *)attributeTitle;


@end

NS_ASSUME_NONNULL_END
