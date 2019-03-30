//
//  UIBarButtonItem+Fragrans.m
//  Fragrans
//
//  Created by qmz on 2019/3/28.
//

#import "UIBarButtonItem+Fragrans.h"
#import "UIButton+Fragrans.h"
#import "UIView+Fragrans.h"
@implementation UIBarButtonItem (Fragrans)

/**
 返回一个仅带文字的UIBarButtonItem
 
 @param normalImage UIImage或者NSString格式
 @param highImageName UIImage或者NSString格式
 */
+ (UIBarButtonItem *)itemWithNormalImageName:(id)normalImage highImageName:(NSString *)highImageName target:(id)target action:(SEL)action {
    UIButton  *btn = [[UIButton alloc]initWithNormalImage:normalImage highlightedImage:highImageName target:target action:action];
    btn.size = btn.currentBackgroundImage.size;
    return [[UIBarButtonItem alloc]initWithCustomView:btn];
}

/**
 返回一个仅带文字的UIBarButtonItem
 
 @param font UIFont或者NSString或者NSNumber格式
 @param titleColor UIColor或者NSString格式
 */
+ (UIBarButtonItem *)itemWithTitle:(NSString *)title font:(id)font titleColor:(id)titleColor target:(id)target action:(SEL)action {
    UIButton *button = [UIButton buttonWithTitle:title font:font titleColor:titleColor target:target action:action];
    CGSize buttonSize = [title sizeWithAttributes:@{NSFontAttributeName:font}];
    button.frame = CGRectMake(0, 0, button.currentImage.size.width + buttonSize.width, button.currentImage.size.height);
    return [[UIBarButtonItem alloc] initWithCustomView:button];
}

/**
 返回一个带有attribute的UIBarButtonItem
 */
+ (UIBarButtonItem *)itemWithAttributeTitle:(NSAttributedString *)attributeTitle {
    UILabel *label = [[UILabel alloc]init];
    label.attributedText = attributeTitle;
    CGSize maxSize = CGSizeMake(MAXFLOAT, MAXFLOAT);
    CGSize labelSize = [attributeTitle boundingRectWithSize:maxSize options:NSStringDrawingUsesLineFragmentOrigin context:nil].size;
    label.frame = CGRectMake(0, 0, labelSize.width, labelSize.height);
    return [[UIBarButtonItem alloc] initWithCustomView:label];
}


@end
