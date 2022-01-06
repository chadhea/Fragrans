//
//  UISegmentedControl+Fragrans.m
//  Fragrans
//
//  Created by qmz on 2019/4/9.
//

#import "UISegmentedControl+Fragrans.h"
#import "UIFont+Fragrans.h"
#import "UIColor+Fragrans.h"
#import "NSObject+Fragrans.h"

@implementation UISegmentedControl (Fragrans)

/**
 create segmentedControl by items + selectedSegmentIndex
 
 */
- (UISegmentedControl *)initWithItems:(NSArray <NSString *>*)items selectedSegmentIndex:(NSUInteger)selectedSegmentIndex {
    return [UISegmentedControl segmentedControlWithItems:items selectedSegmentIndex:selectedSegmentIndex normalTitleFont:nil normalTitleColor:nil selectTitleFont:nil selectTitleColor:nil tintColor:nil backgroundColor:nil target:nil action:nil];
}

/**
 create segmentedControl by items + selectedSegmentIndex
 
 */
+ (UISegmentedControl *)segmentedControlWithItems:(NSArray <NSString *>*)items selectedSegmentIndex:(NSUInteger)selectedSegmentIndex {
    return [UISegmentedControl segmentedControlWithItems:items selectedSegmentIndex:selectedSegmentIndex normalTitleFont:nil normalTitleColor:nil selectTitleFont:nil selectTitleColor:nil tintColor:nil backgroundColor:nil target:nil action:nil];
}

/**
 create segmentedControl by items + target + action
 
 */
- (UISegmentedControl *)initWithItems:(NSArray <NSString *>*)items target:(id)target action:(SEL)action {
    return [UISegmentedControl segmentedControlWithItems:items selectedSegmentIndex:0 normalTitleFont:nil normalTitleColor:nil selectTitleFont:nil selectTitleColor:nil tintColor:nil backgroundColor:nil target:target action:action];
}

/**
 create segmentedControl by items + target + action
 
 */
+ (UISegmentedControl *)segmentedControlWithItems:(NSArray <NSString *>*)items target:(id)target action:(SEL)action {
    return [UISegmentedControl segmentedControlWithItems:items selectedSegmentIndex:0 normalTitleFont:nil normalTitleColor:nil selectTitleFont:nil selectTitleColor:nil tintColor:nil backgroundColor:nil target:target action:action];
}

/**
 create segmentedControl by items + selectedSegmentIndex + target + action
 
 */
- (UISegmentedControl *)initWithItems:(NSArray <NSString *>*)items selectedSegmentIndex:(NSUInteger)selectedSegmentIndex target:(id)target action:(SEL)action {
    return [UISegmentedControl segmentedControlWithItems:items selectedSegmentIndex:selectedSegmentIndex normalTitleFont:nil normalTitleColor:nil selectTitleFont:nil selectTitleColor:nil tintColor:nil backgroundColor:nil target:target action:action];
}

/**
 create segmentedControl by items + selectedSegmentIndex + target + action
 
 */
+ (UISegmentedControl *)segmentedControlWithItems:(NSArray <NSString *>*)items selectedSegmentIndex:(NSUInteger)selectedSegmentIndex target:(id)target action:(SEL)action {
    return [UISegmentedControl segmentedControlWithItems:items selectedSegmentIndex:selectedSegmentIndex normalTitleFont:nil normalTitleColor:nil selectTitleFont:nil selectTitleColor:nil tintColor:nil backgroundColor:nil target:target action:action];
}

/**
 create segmentedControl by items + selectedSegmentIndex
 + tintColor + backgroundColor + target + action
 
 @param tintColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UISegmentedControl *)initWithItems:(NSArray <NSString *>*)items selectedSegmentIndex:(NSUInteger)selectedSegmentIndex tintColor:(id)tintColor backgroundColor:(id)backgroundColor target:(id)target action:(SEL)action {
    return [UISegmentedControl segmentedControlWithItems:items selectedSegmentIndex:selectedSegmentIndex normalTitleFont:nil normalTitleColor:nil selectTitleFont:nil selectTitleColor:nil tintColor:tintColor backgroundColor:backgroundColor target:target action:action];
}

/**
 create segmentedControl by items + selectedSegmentIndex
 + tintColor + backgroundColor + target + action
 
 @param tintColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UISegmentedControl *)segmentedControlWithItems:(NSArray <NSString *>*)items selectedSegmentIndex:(NSUInteger)selectedSegmentIndex tintColor:(id)tintColor backgroundColor:(id)backgroundColor target:(id)target action:(SEL)action {
    return [UISegmentedControl segmentedControlWithItems:items selectedSegmentIndex:selectedSegmentIndex normalTitleFont:nil normalTitleColor:nil selectTitleFont:nil selectTitleColor:nil tintColor:tintColor backgroundColor:backgroundColor target:target action:action];
}

/**
 create segmentedControl by items + selectedSegmentIndex
 + normalTitleFont + normalTitleColor
 + selectTitleFont + selectTitleColor
 + target + action
 
 @param normalTitleFont  未选中选项的字体大小 UIFont或者NSString或者NSNumber格式
 @param normalTitleColor 未选中选项的字体颜色 UIColor或者NSString或者NSNumber格式
 @param selectTitleFont 选中选项的字体大小 UIFont或者NSString或者NSNumber格式
 @param selectTitleColor 选中选项的字体颜色 UIColor或者NSString或者NSNumber格式
 */
- (UISegmentedControl *)initWithItems:(NSArray <NSString *>*)items selectedSegmentIndex:(NSUInteger)selectedSegmentIndex normalTitleFont:(id)normalTitleFont normalTitleColor:(id)normalTitleColor selectTitleFont:(id)selectTitleFont selectTitleColor:(id)selectTitleColor target:(id)target action:(SEL)action {
    return [UISegmentedControl segmentedControlWithItems:items selectedSegmentIndex:selectedSegmentIndex normalTitleFont:normalTitleFont normalTitleColor:normalTitleColor selectTitleFont:selectTitleFont selectTitleColor:selectTitleColor tintColor:nil backgroundColor:nil target:target action:action];
}

/**
 create segmentedControl by items + selectedSegmentIndex
 + normalTitleFont + normalTitleColor
 + selectTitleFont + selectTitleColor
 + target + action
 
 @param normalTitleFont  未选中选项的字体大小 UIFont或者NSString或者NSNumber格式
 @param normalTitleColor 未选中选项的字体颜色 UIColor或者NSString或者NSNumber格式
 @param selectTitleFont 选中选项的字体大小 UIFont或者NSString或者NSNumber格式
 @param selectTitleColor 选中选项的字体颜色 UIColor或者NSString或者NSNumber格式
 */
+ (UISegmentedControl *)segmentedControlWithItems:(NSArray <NSString *>*)items selectedSegmentIndex:(NSUInteger)selectedSegmentIndex normalTitleFont:(id)normalTitleFont normalTitleColor:(id)normalTitleColor selectTitleFont:(id)selectTitleFont selectTitleColor:(id)selectTitleColor target:(id)target action:(SEL)action {
    return [UISegmentedControl segmentedControlWithItems:items selectedSegmentIndex:selectedSegmentIndex normalTitleFont:normalTitleFont normalTitleColor:normalTitleColor selectTitleFont:selectTitleFont selectTitleColor:selectTitleColor tintColor:nil backgroundColor:nil target:target action:action];
}

/**
 create segmentedControl by items + selectedSegmentIndex
 + normalTitleFont + normalTitleColor
 + selectTitleFont + selectTitleColor
 + tintColor + backgroundColor
 + target + action
 
 @param normalTitleFont  未选中选项的字体大小 UIFont或者NSString或者NSNumber格式
 @param normalTitleColor 未选中选项的字体颜色 UIColor或者NSString或者NSNumber格式
 @param selectTitleFont 选中选项的字体大小 UIFont或者NSString或者NSNumber格式
 @param selectTitleColor 选中选项的字体颜色 UIColor或者NSString或者NSNumber格式
 @param tintColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UISegmentedControl *)initWithItems:(NSArray <NSString *>*)items selectedSegmentIndex:(NSUInteger)selectedSegmentIndex normalTitleFont:(id)normalTitleFont normalTitleColor:(id)normalTitleColor selectTitleFont:(id)selectTitleFont selectTitleColor:(id)selectTitleColor tintColor:(id)tintColor backgroundColor:(id)backgroundColor target:(id)target action:(SEL)action {
    return [UISegmentedControl segmentedControlWithItems:items selectedSegmentIndex:selectedSegmentIndex normalTitleFont:normalTitleFont normalTitleColor:normalTitleColor selectTitleFont:selectTitleFont selectTitleColor:selectTitleColor tintColor:tintColor backgroundColor:backgroundColor target:target action:action];
}

/**
 create segmentedControl by items + selectedSegmentIndex
 + normalTitleFont + normalTitleColor
 + selectTitleFont + selectTitleColor
 + tintColor + backgroundColor
 + target + action
 
 @param normalTitleFont  未选中选项的字体大小 UIFont或者NSString或者NSNumber格式
 @param normalTitleColor 未选中选项的字体颜色 UIColor或者NSString或者NSNumber格式
 @param selectTitleFont 选中选项的字体大小 UIFont或者NSString或者NSNumber格式
 @param selectTitleColor 选中选项的字体颜色 UIColor或者NSString或者NSNumber格式
 @param tintColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UISegmentedControl *)segmentedControlWithItems:(NSArray <NSString *>*)items selectedSegmentIndex:(NSUInteger)selectedSegmentIndex normalTitleFont:(nullable id)normalTitleFont normalTitleColor:(nullable id)normalTitleColor selectTitleFont:(nullable id)selectTitleFont selectTitleColor:(nullable id)selectTitleColor tintColor:(nullable id)tintColor backgroundColor:(nullable id)backgroundColor target:(nullable id)target action:(nullable SEL)action {
    if ([NSObject isEmpty:items]) {
        return [[UISegmentedControl alloc] init];
    }
    UISegmentedControl   *segment = [[UISegmentedControl alloc] initWithItems:items];
    segment.selectedSegmentIndex = selectedSegmentIndex;
    if (normalTitleFont) {
        [segment setTitleTextAttributes:@{NSFontAttributeName:[UIFont safeFont:normalTitleFont]} forState:UIControlStateNormal];
    }
    if (normalTitleColor) {
        [segment setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor safeColor:normalTitleColor]} forState:UIControlStateNormal];
    }
    if (selectTitleFont) {
        [segment setTitleTextAttributes:@{NSFontAttributeName:[UIFont safeFont:selectTitleFont]} forState:UIControlStateSelected];
    }
    if (selectTitleColor) {
        [segment setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor safeColor:selectTitleColor]} forState:UIControlStateSelected];
    }
    if (tintColor) {
        segment.tintColor = [UIColor safeColor:tintColor];
    }
    if (backgroundColor) {
        segment.backgroundColor = [UIColor safeColor:backgroundColor];
    }
    if (target && action) {
        [segment addTarget:target action:action forControlEvents:UIControlEventValueChanged];
    }
    return segment;
}

/**
 create segmentedControl by frame + items
 
 */
- (UISegmentedControl *)initWithFrame:(CGRect)frame items:(NSArray <NSString *>*)items {
    return [UISegmentedControl segmentedControlWithFrame:frame items:items selectedSegmentIndex:0 normalTitleFont:nil normalTitleColor:nil selectTitleFont:nil selectTitleColor:nil tintColor:nil backgroundColor:nil target:nil action:nil];
}

/**
 create segmentedControl by frame + items
 
 */
+ (UISegmentedControl *)segmentedControlWithFrame:(CGRect)frame items:(NSArray <NSString *>*)items {
    return [UISegmentedControl segmentedControlWithFrame:frame items:items selectedSegmentIndex:0 normalTitleFont:nil normalTitleColor:nil selectTitleFont:nil selectTitleColor:nil tintColor:nil backgroundColor:nil target:nil action:nil];
}

/**
 create segmentedControl by frame + items + selectedSegmentIndex
 
 */
- (UISegmentedControl *)initWithFrame:(CGRect)frame items:(NSArray <NSString *>*)items selectedSegmentIndex:(NSUInteger)selectedSegmentIndex {
    return [UISegmentedControl segmentedControlWithFrame:frame items:items selectedSegmentIndex:selectedSegmentIndex normalTitleFont:nil normalTitleColor:nil selectTitleFont:nil selectTitleColor:nil tintColor:nil backgroundColor:nil target:nil action:nil];
}

/**
 create segmentedControl by frame + items + selectedSegmentIndex
 
 */
+ (UISegmentedControl *)segmentedControlWithFrame:(CGRect)frame items:(NSArray <NSString *>*)items selectedSegmentIndex:(NSUInteger)selectedSegmentIndex {
    return [UISegmentedControl segmentedControlWithFrame:frame items:items selectedSegmentIndex:selectedSegmentIndex normalTitleFont:nil normalTitleColor:nil selectTitleFont:nil selectTitleColor:nil tintColor:nil backgroundColor:nil target:nil action:nil];
}

/**
 create segmentedControl by frame + items + target + action
 
 */
- (UISegmentedControl *)initWithFrame:(CGRect)frame items:(NSArray <NSString *>*)items target:(id)target action:(SEL)action {
    return [UISegmentedControl segmentedControlWithFrame:frame items:items selectedSegmentIndex:0 normalTitleFont:nil normalTitleColor:nil selectTitleFont:nil selectTitleColor:nil tintColor:nil backgroundColor:nil target:target action:action];
}

/**
 create segmentedControl by frame + items + target + action
 
 */
+ (UISegmentedControl *)segmentedControlWithFrame:(CGRect)frame items:(NSArray <NSString *>*)items target:(id)target action:(SEL)action {
    return [UISegmentedControl segmentedControlWithFrame:frame items:items selectedSegmentIndex:0 normalTitleFont:nil normalTitleColor:nil selectTitleFont:nil selectTitleColor:nil tintColor:nil backgroundColor:nil target:target action:action];
}

/**
 create segmentedControl by frame + items + selectedSegmentIndex + target + action
 
 */
- (UISegmentedControl *)initWithFrame:(CGRect)frame items:(NSArray <NSString *>*)items selectedSegmentIndex:(NSUInteger)selectedSegmentIndex target:(id)target action:(SEL)action {
    return [UISegmentedControl segmentedControlWithFrame:frame items:items selectedSegmentIndex:selectedSegmentIndex normalTitleFont:nil normalTitleColor:nil selectTitleFont:nil selectTitleColor:nil tintColor:nil backgroundColor:nil target:target action:action];
}

/**
 create segmentedControl by frame + items + selectedSegmentIndex + target + action
 
 */
+ (UISegmentedControl *)segmentedControlWithFrame:(CGRect)frame items:(NSArray <NSString *>*)items selectedSegmentIndex:(NSUInteger)selectedSegmentIndex target:(id)target action:(SEL)action {
    return [UISegmentedControl segmentedControlWithFrame:frame items:items selectedSegmentIndex:selectedSegmentIndex normalTitleFont:nil normalTitleColor:nil selectTitleFont:nil selectTitleColor:nil tintColor:nil backgroundColor:nil target:target action:action];
}

/**
 create segmentedControl by frame + items + selectedSegmentIndex
 + tintColor + backgroundColor + target + action
 
 @param tintColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UISegmentedControl *)initWithFrame:(CGRect)frame items:(NSArray <NSString *>*)items selectedSegmentIndex:(NSUInteger)selectedSegmentIndex tintColor:(id)tintColor backgroundColor:(id)backgroundColor target:(id)target action:(SEL)action {
    return [UISegmentedControl segmentedControlWithFrame:frame items:items selectedSegmentIndex:selectedSegmentIndex normalTitleFont:nil normalTitleColor:nil selectTitleFont:nil selectTitleColor:nil tintColor:tintColor backgroundColor:backgroundColor target:target action:action];
}

/**
 create segmentedControl by frame + items + selectedSegmentIndex
 + tintColor + backgroundColor + target + action
 
 @param tintColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UISegmentedControl *)segmentedControlWithFrame:(CGRect)frame items:(NSArray <NSString *>*)items selectedSegmentIndex:(NSUInteger)selectedSegmentIndex tintColor:(id)tintColor backgroundColor:(id)backgroundColor target:(id)target action:(SEL)action {
    return [UISegmentedControl segmentedControlWithFrame:frame items:items selectedSegmentIndex:selectedSegmentIndex normalTitleFont:nil normalTitleColor:nil selectTitleFont:nil selectTitleColor:nil tintColor:tintColor backgroundColor:backgroundColor target:target action:action];
}

/**
 create segmentedControl by frame + items + selectedSegmentIndex
 + normalTitleFont + normalTitleColor
 + selectTitleFont + selectTitleColor
 + target + action
 
 @param normalTitleFont  未选中选项的字体大小 UIFont或者NSString或者NSNumber格式
 @param normalTitleColor 未选中选项的字体颜色 UIColor或者NSString或者NSNumber格式
 @param selectTitleFont 选中选项的字体大小 UIFont或者NSString或者NSNumber格式
 @param selectTitleColor 选中选项的字体颜色 UIColor或者NSString或者NSNumber格式
 */
- (UISegmentedControl *)initWithFrame:(CGRect)frame items:(NSArray <NSString *>*)items selectedSegmentIndex:(NSUInteger)selectedSegmentIndex normalTitleFont:(id)normalTitleFont normalTitleColor:(id)normalTitleColor selectTitleFont:(id)selectTitleFont selectTitleColor:(id)selectTitleColor target:(id)target action:(SEL)action {
    return [UISegmentedControl segmentedControlWithFrame:frame items:items selectedSegmentIndex:selectedSegmentIndex normalTitleFont:normalTitleFont normalTitleColor:normalTitleColor selectTitleFont:selectTitleFont selectTitleColor:selectTitleColor tintColor:nil backgroundColor:nil target:target action:action];
}

/**
 create segmentedControl by frame + items + selectedSegmentIndex
 + normalTitleFont + normalTitleColor
 + selectTitleFont + selectTitleColor
 + target + action
 
 @param normalTitleFont  未选中选项的字体大小 UIFont或者NSString或者NSNumber格式
 @param normalTitleColor 未选中选项的字体颜色 UIColor或者NSString或者NSNumber格式
 @param selectTitleFont 选中选项的字体大小 UIFont或者NSString或者NSNumber格式
 @param selectTitleColor 选中选项的字体颜色 UIColor或者NSString或者NSNumber格式
 */
+ (UISegmentedControl *)segmentedControlWithFrame:(CGRect)frame items:(NSArray <NSString *>*)items selectedSegmentIndex:(NSUInteger)selectedSegmentIndex normalTitleFont:(id)normalTitleFont normalTitleColor:(id)normalTitleColor selectTitleFont:(id)selectTitleFont selectTitleColor:(id)selectTitleColor target:(id)target action:(SEL)action {
    return [UISegmentedControl segmentedControlWithFrame:frame items:items selectedSegmentIndex:selectedSegmentIndex normalTitleFont:normalTitleFont normalTitleColor:normalTitleColor selectTitleFont:selectTitleFont selectTitleColor:selectTitleColor tintColor:nil backgroundColor:nil target:target action:action];
}

/**
 create segmentedControl by frame + items + selectedSegmentIndex
 + normalTitleFont + normalTitleColor
 + selectTitleFont + selectTitleColor
 + tintColor + backgroundColor
 + target + action
 
 @param normalTitleFont  未选中选项的字体大小 UIFont或者NSString或者NSNumber格式
 @param normalTitleColor 未选中选项的字体颜色 UIColor或者NSString或者NSNumber格式
 @param selectTitleFont 选中选项的字体大小 UIFont或者NSString或者NSNumber格式
 @param selectTitleColor 选中选项的字体颜色 UIColor或者NSString或者NSNumber格式
 @param tintColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UISegmentedControl *)initWithFrame:(CGRect)frame items:(NSArray <NSString *>*)items selectedSegmentIndex:(NSUInteger)selectedSegmentIndex normalTitleFont:(id)normalTitleFont normalTitleColor:(id)normalTitleColor selectTitleFont:(id)selectTitleFont selectTitleColor:(id)selectTitleColor tintColor:(id)tintColor backgroundColor:(id)backgroundColor target:(id)target action:(SEL)action {
    return [UISegmentedControl segmentedControlWithFrame:frame items:items selectedSegmentIndex:selectedSegmentIndex normalTitleFont:normalTitleFont normalTitleColor:normalTitleColor selectTitleFont:selectTitleFont selectTitleColor:selectTitleColor tintColor:tintColor backgroundColor:backgroundColor target:target action:action];
}

/**
 create segmentedControl by frame + items + selectedSegmentIndex
 + normalTitleFont + normalTitleColor
 + selectTitleFont + selectTitleColor
 + tintColor + backgroundColor
 + target + action
 
 @param normalTitleFont  未选中选项的字体大小 UIFont或者NSString或者NSNumber格式
 @param normalTitleColor 未选中选项的字体颜色 UIColor或者NSString或者NSNumber格式
 @param selectTitleFont 选中选项的字体大小 UIFont或者NSString或者NSNumber格式
 @param selectTitleColor 选中选项的字体颜色 UIColor或者NSString或者NSNumber格式
 @param tintColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UISegmentedControl *)segmentedControlWithFrame:(CGRect)frame items:(NSArray <NSString *>*)items selectedSegmentIndex:(NSUInteger)selectedSegmentIndex normalTitleFont:(nullable id)normalTitleFont normalTitleColor:(nullable id)normalTitleColor selectTitleFont:(nullable id)selectTitleFont selectTitleColor:(nullable id)selectTitleColor tintColor:(nullable id)tintColor backgroundColor:(nullable id)backgroundColor target:(nullable id)target action:(nullable SEL)action {
    UISegmentedControl   *segment = [UISegmentedControl segmentedControlWithItems:items selectedSegmentIndex:selectedSegmentIndex normalTitleFont:normalTitleFont normalTitleColor:normalTitleColor selectTitleFont:selectTitleFont selectTitleColor:selectTitleColor tintColor:tintColor backgroundColor:backgroundColor target:target action:action];
    segment.frame = frame;
    return segment;
}

/**
 create segmentedControl by center and bounds + items
 
 */
- (UISegmentedControl *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds items:(NSArray <NSString *>*)items {
    return [UISegmentedControl segmentedControlWithCenter:center bounds:bounds items:items selectedSegmentIndex:0 normalTitleFont:nil normalTitleColor:nil selectTitleFont:nil selectTitleColor:nil tintColor:nil backgroundColor:nil target:nil action:nil];
}

/**
 create segmentedControl by center and bounds + items
 
 */
+ (UISegmentedControl *)segmentedControlWithCenter:(CGPoint)center bounds:(CGRect)bounds items:(NSArray <NSString *>*)items {
    return [UISegmentedControl segmentedControlWithCenter:center bounds:bounds items:items selectedSegmentIndex:0 normalTitleFont:nil normalTitleColor:nil selectTitleFont:nil selectTitleColor:nil tintColor:nil backgroundColor:nil target:nil action:nil];
}

/**
 create segmentedControl by center and bounds + items + selectedSegmentIndex
 
 */
- (UISegmentedControl *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds items:(NSArray <NSString *>*)items selectedSegmentIndex:(NSUInteger)selectedSegmentIndex {
    return [UISegmentedControl segmentedControlWithCenter:center bounds:bounds items:items selectedSegmentIndex:selectedSegmentIndex normalTitleFont:nil normalTitleColor:nil selectTitleFont:nil selectTitleColor:nil tintColor:nil backgroundColor:nil target:nil action:nil];
}

/**
 create segmentedControl by center and bounds + items + selectedSegmentIndex
 
 */
+ (UISegmentedControl *)segmentedControlWithCenter:(CGPoint)center bounds:(CGRect)bounds items:(NSArray <NSString *>*)items selectedSegmentIndex:(NSUInteger)selectedSegmentIndex {
    return [UISegmentedControl segmentedControlWithCenter:center bounds:bounds items:items selectedSegmentIndex:selectedSegmentIndex normalTitleFont:nil normalTitleColor:nil selectTitleFont:nil selectTitleColor:nil tintColor:nil backgroundColor:nil target:nil action:nil];
}

/**
 create segmentedControl by center and bounds + items + target + action
 
 */
- (UISegmentedControl *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds items:(NSArray <NSString *>*)items target:(id)target action:(SEL)action {
    return [UISegmentedControl segmentedControlWithCenter:center bounds:bounds items:items selectedSegmentIndex:0 normalTitleFont:nil normalTitleColor:nil selectTitleFont:nil selectTitleColor:nil tintColor:nil backgroundColor:nil target:target action:action];
}

/**
 create segmentedControl by center and bounds + items + target + action
 
 */
+ (UISegmentedControl *)segmentedControlWithCenter:(CGPoint)center bounds:(CGRect)bounds items:(NSArray <NSString *>*)items target:(id)target action:(SEL)action {
    return [UISegmentedControl segmentedControlWithCenter:center bounds:bounds items:items selectedSegmentIndex:0 normalTitleFont:nil normalTitleColor:nil selectTitleFont:nil selectTitleColor:nil tintColor:nil backgroundColor:nil target:target action:action];
}

/**
 create segmentedControl by center and bounds + items + selectedSegmentIndex + target + action
 
 */
- (UISegmentedControl *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds items:(NSArray <NSString *>*)items selectedSegmentIndex:(NSUInteger)selectedSegmentIndex target:(id)target action:(SEL)action {
    return [UISegmentedControl segmentedControlWithCenter:center bounds:bounds items:items selectedSegmentIndex:selectedSegmentIndex normalTitleFont:nil normalTitleColor:nil selectTitleFont:nil selectTitleColor:nil tintColor:nil backgroundColor:nil target:target action:action];
}

/**
 create segmentedControl by center and bounds + items + selectedSegmentIndex + target + action
 
 */
+ (UISegmentedControl *)segmentedControlWithCenter:(CGPoint)center bounds:(CGRect)bounds items:(NSArray <NSString *>*)items selectedSegmentIndex:(NSUInteger)selectedSegmentIndex target:(id)target action:(SEL)action {
    return [UISegmentedControl segmentedControlWithCenter:center bounds:bounds items:items selectedSegmentIndex:selectedSegmentIndex normalTitleFont:nil normalTitleColor:nil selectTitleFont:nil selectTitleColor:nil tintColor:nil backgroundColor:nil target:target action:action];
}

/**
 create segmentedControl by center and bounds + items + selectedSegmentIndex
 + tintColor + backgroundColor + target + action
 
 @param tintColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UISegmentedControl *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds items:(NSArray <NSString *>*)items selectedSegmentIndex:(NSUInteger)selectedSegmentIndex tintColor:(id)tintColor backgroundColor:(id)backgroundColor target:(id)target action:(SEL)action {
    return [UISegmentedControl segmentedControlWithCenter:center bounds:bounds items:items selectedSegmentIndex:selectedSegmentIndex normalTitleFont:nil normalTitleColor:nil selectTitleFont:nil selectTitleColor:nil tintColor:tintColor backgroundColor:backgroundColor target:target action:action];
}

/**
 create segmentedControl by center and bounds + items + selectedSegmentIndex
 + tintColor + backgroundColor + target + action
 
 @param tintColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UISegmentedControl *)segmentedControlWithCenter:(CGPoint)center bounds:(CGRect)bounds items:(NSArray <NSString *>*)items selectedSegmentIndex:(NSUInteger)selectedSegmentIndex tintColor:(id)tintColor backgroundColor:(id)backgroundColor target:(id)target action:(SEL)action {
    return [UISegmentedControl segmentedControlWithCenter:center bounds:bounds items:items selectedSegmentIndex:selectedSegmentIndex normalTitleFont:nil normalTitleColor:nil selectTitleFont:nil selectTitleColor:nil tintColor:tintColor backgroundColor:backgroundColor target:target action:action];
}

/**
 create segmentedControl by center and bounds + items + selectedSegmentIndex
 + normalTitleFont + normalTitleColor
 + selectTitleFont + selectTitleColor
 + target + action
 
 @param normalTitleFont  未选中选项的字体大小 UIFont或者NSString或者NSNumber格式
 @param normalTitleColor 未选中选项的字体颜色 UIColor或者NSString或者NSNumber格式
 @param selectTitleFont 选中选项的字体大小 UIFont或者NSString或者NSNumber格式
 @param selectTitleColor 选中选项的字体颜色 UIColor或者NSString或者NSNumber格式
 */
- (UISegmentedControl *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds items:(NSArray <NSString *>*)items selectedSegmentIndex:(NSUInteger)selectedSegmentIndex normalTitleFont:(id)normalTitleFont normalTitleColor:(id)normalTitleColor selectTitleFont:(id)selectTitleFont selectTitleColor:(id)selectTitleColor target:(id)target action:(SEL)action {
    return [UISegmentedControl segmentedControlWithCenter:center bounds:bounds items:items selectedSegmentIndex:selectedSegmentIndex normalTitleFont:normalTitleFont normalTitleColor:normalTitleColor selectTitleFont:selectTitleFont selectTitleColor:selectTitleColor tintColor:nil backgroundColor:nil target:target action:action];
}

/**
 create segmentedControl by center and bounds + items + selectedSegmentIndex
 + normalTitleFont + normalTitleColor
 + selectTitleFont + selectTitleColor
 + target + action
 
 @param normalTitleFont  未选中选项的字体大小 UIFont或者NSString或者NSNumber格式
 @param normalTitleColor 未选中选项的字体颜色 UIColor或者NSString或者NSNumber格式
 @param selectTitleFont 选中选项的字体大小 UIFont或者NSString或者NSNumber格式
 @param selectTitleColor 选中选项的字体颜色 UIColor或者NSString或者NSNumber格式
 */
+ (UISegmentedControl *)segmentedControlWithCenter:(CGPoint)center bounds:(CGRect)bounds items:(NSArray <NSString *>*)items selectedSegmentIndex:(NSUInteger)selectedSegmentIndex normalTitleFont:(id)normalTitleFont normalTitleColor:(id)normalTitleColor selectTitleFont:(id)selectTitleFont selectTitleColor:(id)selectTitleColor target:(id)target action:(SEL)action {
    return [UISegmentedControl segmentedControlWithCenter:center bounds:bounds items:items selectedSegmentIndex:selectedSegmentIndex normalTitleFont:normalTitleFont normalTitleColor:normalTitleColor selectTitleFont:selectTitleFont selectTitleColor:selectTitleColor tintColor:nil backgroundColor:nil target:target action:action];
}

/**
 create segmentedControl by center and bounds + items + selectedSegmentIndex
 + normalTitleFont + normalTitleColor
 + selectTitleFont + selectTitleColor
 + tintColor + backgroundColor
 + target + action
 
 @param normalTitleFont  未选中选项的字体大小 UIFont或者NSString或者NSNumber格式
 @param normalTitleColor 未选中选项的字体颜色 UIColor或者NSString或者NSNumber格式
 @param selectTitleFont 选中选项的字体大小 UIFont或者NSString或者NSNumber格式
 @param selectTitleColor 选中选项的字体颜色 UIColor或者NSString或者NSNumber格式
 @param tintColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UISegmentedControl *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds items:(NSArray <NSString *>*)items selectedSegmentIndex:(NSUInteger)selectedSegmentIndex normalTitleFont:(id)normalTitleFont normalTitleColor:(id)normalTitleColor selectTitleFont:(id)selectTitleFont selectTitleColor:(id)selectTitleColor tintColor:(id)tintColor backgroundColor:(id)backgroundColor target:(id)target action:(SEL)action {
    return [UISegmentedControl segmentedControlWithCenter:center bounds:bounds items:items selectedSegmentIndex:selectedSegmentIndex normalTitleFont:normalTitleFont normalTitleColor:normalTitleColor selectTitleFont:selectTitleFont selectTitleColor:selectTitleColor tintColor:tintColor backgroundColor:backgroundColor target:target action:action];
}

/**
 create segmentedControl by center and bounds + items + selectedSegmentIndex
 + normalTitleFont + normalTitleColor
 + selectTitleFont + selectTitleColor
 + tintColor + backgroundColor
 + target + action
 
 @param normalTitleFont  未选中选项的字体大小 UIFont或者NSString或者NSNumber格式
 @param normalTitleColor 未选中选项的字体颜色 UIColor或者NSString或者NSNumber格式
 @param selectTitleFont 选中选项的字体大小 UIFont或者NSString或者NSNumber格式
 @param selectTitleColor 选中选项的字体颜色 UIColor或者NSString或者NSNumber格式
 @param tintColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UISegmentedControl *)segmentedControlWithCenter:(CGPoint)center bounds:(CGRect)bounds items:(NSArray <NSString *>*)items selectedSegmentIndex:(NSUInteger)selectedSegmentIndex normalTitleFont:(nullable id)normalTitleFont normalTitleColor:(nullable id)normalTitleColor selectTitleFont:(nullable id)selectTitleFont selectTitleColor:(nullable id)selectTitleColor tintColor:(nullable id)tintColor backgroundColor:(nullable id)backgroundColor target:(nullable id)target action:(nullable SEL)action {
    UISegmentedControl   *segment = [UISegmentedControl segmentedControlWithItems:items selectedSegmentIndex:selectedSegmentIndex normalTitleFont:normalTitleFont normalTitleColor:normalTitleColor selectTitleFont:selectTitleFont selectTitleColor:selectTitleColor tintColor:tintColor backgroundColor:backgroundColor target:target action:action];
    segment.center = center;
    segment.bounds = bounds;
    return segment;
}


@end
