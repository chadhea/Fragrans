//
//  UISegmentedControl+Fragrans.h
//  Fragrans
//
//  Created by qmz on 2019/4/9.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UISegmentedControl (Fragrans)

/**
 create segmentedControl by items + selectedSegmentIndex
 
 */
- (UISegmentedControl *)initWithItems:(NSArray <NSString *>*)items selectedSegmentIndex:(NSUInteger)selectedSegmentIndex;

/**
 create segmentedControl by items + selectedSegmentIndex
 
 */
+ (UISegmentedControl *)segmentedControlWithItems:(NSArray <NSString *>*)items selectedSegmentIndex:(NSUInteger)selectedSegmentIndex;

/**
 create segmentedControl by items + target + action
 
 */
- (UISegmentedControl *)initWithItems:(NSArray <NSString *>*)items target:(id)target action:(SEL)action;

/**
 create segmentedControl by items + target + action
 
 */
+ (UISegmentedControl *)segmentedControlWithItems:(NSArray <NSString *>*)items target:(id)target action:(SEL)action;

/**
 create segmentedControl by items + selectedSegmentIndex + target + action
 
 */
- (UISegmentedControl *)initWithItems:(NSArray <NSString *>*)items selectedSegmentIndex:(NSUInteger)selectedSegmentIndex target:(id)target action:(SEL)action;

/**
 create segmentedControl by items + selectedSegmentIndex + target + action
 
 */
+ (UISegmentedControl *)segmentedControlWithItems:(NSArray <NSString *>*)items selectedSegmentIndex:(NSUInteger)selectedSegmentIndex target:(id)target action:(SEL)action;

/**
 create segmentedControl by items + selectedSegmentIndex
 + tintColor + backgroundColor + target + action
 
 @param tintColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UISegmentedControl *)initWithItems:(NSArray <NSString *>*)items selectedSegmentIndex:(NSUInteger)selectedSegmentIndex tintColor:(id)tintColor backgroundColor:(id)backgroundColor target:(id)target action:(SEL)action;

/**
 create segmentedControl by items + selectedSegmentIndex
 + tintColor + backgroundColor + target + action

 @param tintColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UISegmentedControl *)segmentedControlWithItems:(NSArray <NSString *>*)items selectedSegmentIndex:(NSUInteger)selectedSegmentIndex tintColor:(id)tintColor backgroundColor:(id)backgroundColor target:(id)target action:(SEL)action;

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
- (UISegmentedControl *)initWithItems:(NSArray <NSString *>*)items selectedSegmentIndex:(NSUInteger)selectedSegmentIndex normalTitleFont:(id)normalTitleFont normalTitleColor:(id)normalTitleColor selectTitleFont:(id)selectTitleFont selectTitleColor:(id)selectTitleColor target:(id)target action:(SEL)action;

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
+ (UISegmentedControl *)segmentedControlWithItems:(NSArray <NSString *>*)items selectedSegmentIndex:(NSUInteger)selectedSegmentIndex normalTitleFont:(id)normalTitleFont normalTitleColor:(id)normalTitleColor selectTitleFont:(id)selectTitleFont selectTitleColor:(id)selectTitleColor target:(id)target action:(SEL)action;

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
- (UISegmentedControl *)initWithItems:(NSArray <NSString *>*)items selectedSegmentIndex:(NSUInteger)selectedSegmentIndex normalTitleFont:(id)normalTitleFont normalTitleColor:(id)normalTitleColor selectTitleFont:(id)selectTitleFont selectTitleColor:(id)selectTitleColor tintColor:(id)tintColor backgroundColor:(id)backgroundColor target:(id)target action:(SEL)action;

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
+ (UISegmentedControl *)segmentedControlWithItems:(NSArray <NSString *>*)items selectedSegmentIndex:(NSUInteger)selectedSegmentIndex normalTitleFont:(nullable id)normalTitleFont normalTitleColor:(nullable id)normalTitleColor selectTitleFont:(nullable id)selectTitleFont selectTitleColor:(nullable id)selectTitleColor tintColor:(nullable id)tintColor backgroundColor:(nullable id)backgroundColor target:(nullable id)target action:(nullable SEL)action;

/**
 create segmentedControl by frame + items
 
 */
- (UISegmentedControl *)initWithFrame:(CGRect)frame items:(NSArray <NSString *>*)items;

/**
 create segmentedControl by frame + items
 
 */
+ (UISegmentedControl *)segmentedControlWithFrame:(CGRect)frame items:(NSArray <NSString *>*)items;

/**
 create segmentedControl by frame + items + selectedSegmentIndex
 
 */
- (UISegmentedControl *)initWithFrame:(CGRect)frame items:(NSArray <NSString *>*)items selectedSegmentIndex:(NSUInteger)selectedSegmentIndex;

/**
 create segmentedControl by frame + items + selectedSegmentIndex
 
 */
+ (UISegmentedControl *)segmentedControlWithFrame:(CGRect)frame items:(NSArray <NSString *>*)items selectedSegmentIndex:(NSUInteger)selectedSegmentIndex;

/**
 create segmentedControl by frame + items + target + action
 
 */
- (UISegmentedControl *)initWithFrame:(CGRect)frame items:(NSArray <NSString *>*)items target:(id)target action:(SEL)action;

/**
 create segmentedControl by frame + items + target + action
 
 */
+ (UISegmentedControl *)segmentedControlWithFrame:(CGRect)frame items:(NSArray <NSString *>*)items target:(id)target action:(SEL)action;

/**
 create segmentedControl by frame + items + selectedSegmentIndex + target + action
 
 */
- (UISegmentedControl *)initWithFrame:(CGRect)frame items:(NSArray <NSString *>*)items selectedSegmentIndex:(NSUInteger)selectedSegmentIndex target:(id)target action:(SEL)action;

/**
 create segmentedControl by frame + items + selectedSegmentIndex + target + action
 
 */
+ (UISegmentedControl *)segmentedControlWithFrame:(CGRect)frame items:(NSArray <NSString *>*)items selectedSegmentIndex:(NSUInteger)selectedSegmentIndex target:(id)target action:(SEL)action;

/**
 create segmentedControl by frame + items + selectedSegmentIndex
 + tintColor + backgroundColor + target + action
 
 @param tintColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UISegmentedControl *)initWithFrame:(CGRect)frame items:(NSArray <NSString *>*)items selectedSegmentIndex:(NSUInteger)selectedSegmentIndex tintColor:(id)tintColor backgroundColor:(id)backgroundColor target:(id)target action:(SEL)action;

/**
 create segmentedControl by frame + items + selectedSegmentIndex
 + tintColor + backgroundColor + target + action
 
 @param tintColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UISegmentedControl *)segmentedControlWithFrame:(CGRect)frame items:(NSArray <NSString *>*)items selectedSegmentIndex:(NSUInteger)selectedSegmentIndex tintColor:(id)tintColor backgroundColor:(id)backgroundColor target:(id)target action:(SEL)action;

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
- (UISegmentedControl *)initWithFrame:(CGRect)frame items:(NSArray <NSString *>*)items selectedSegmentIndex:(NSUInteger)selectedSegmentIndex normalTitleFont:(id)normalTitleFont normalTitleColor:(id)normalTitleColor selectTitleFont:(id)selectTitleFont selectTitleColor:(id)selectTitleColor target:(id)target action:(SEL)action;

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
+ (UISegmentedControl *)segmentedControlWithFrame:(CGRect)frame items:(NSArray <NSString *>*)items selectedSegmentIndex:(NSUInteger)selectedSegmentIndex normalTitleFont:(id)normalTitleFont normalTitleColor:(id)normalTitleColor selectTitleFont:(id)selectTitleFont selectTitleColor:(id)selectTitleColor target:(id)target action:(SEL)action;

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
- (UISegmentedControl *)initWithFrame:(CGRect)frame items:(NSArray <NSString *>*)items selectedSegmentIndex:(NSUInteger)selectedSegmentIndex normalTitleFont:(id)normalTitleFont normalTitleColor:(id)normalTitleColor selectTitleFont:(id)selectTitleFont selectTitleColor:(id)selectTitleColor tintColor:(id)tintColor backgroundColor:(id)backgroundColor target:(id)target action:(SEL)action;

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
+ (UISegmentedControl *)segmentedControlWithFrame:(CGRect)frame items:(NSArray <NSString *>*)items selectedSegmentIndex:(NSUInteger)selectedSegmentIndex normalTitleFont:(nullable id)normalTitleFont normalTitleColor:(nullable id)normalTitleColor selectTitleFont:(nullable id)selectTitleFont selectTitleColor:(nullable id)selectTitleColor tintColor:(nullable id)tintColor backgroundColor:(nullable id)backgroundColor target:(nullable id)target action:(nullable SEL)action;

/**
 create segmentedControl by center and bounds + items
 
 */
- (UISegmentedControl *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds items:(NSArray <NSString *>*)items;

/**
 create segmentedControl by center and bounds + items
 
 */
+ (UISegmentedControl *)segmentedControlWithCenter:(CGPoint)center bounds:(CGRect)bounds items:(NSArray <NSString *>*)items;

/**
 create segmentedControl by center and bounds + items + selectedSegmentIndex
 
 */
- (UISegmentedControl *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds items:(NSArray <NSString *>*)items selectedSegmentIndex:(NSUInteger)selectedSegmentIndex;

/**
 create segmentedControl by center and bounds + items + selectedSegmentIndex
 
 */
+ (UISegmentedControl *)segmentedControlWithCenter:(CGPoint)center bounds:(CGRect)bounds items:(NSArray <NSString *>*)items selectedSegmentIndex:(NSUInteger)selectedSegmentIndex;

/**
 create segmentedControl by center and bounds + items + target + action
 
 */
- (UISegmentedControl *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds items:(NSArray <NSString *>*)items target:(id)target action:(SEL)action;

/**
 create segmentedControl by center and bounds + items + target + action
 
 */
+ (UISegmentedControl *)segmentedControlWithCenter:(CGPoint)center bounds:(CGRect)bounds items:(NSArray <NSString *>*)items target:(id)target action:(SEL)action;

/**
 create segmentedControl by center and bounds + items + selectedSegmentIndex + target + action
 
 */
- (UISegmentedControl *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds items:(NSArray <NSString *>*)items selectedSegmentIndex:(NSUInteger)selectedSegmentIndex target:(id)target action:(SEL)action;

/**
 create segmentedControl by center and bounds + items + selectedSegmentIndex + target + action
 
 */
+ (UISegmentedControl *)segmentedControlWithCenter:(CGPoint)center bounds:(CGRect)bounds items:(NSArray <NSString *>*)items selectedSegmentIndex:(NSUInteger)selectedSegmentIndex target:(id)target action:(SEL)action;

/**
 create segmentedControl by center and bounds + items + selectedSegmentIndex
 + tintColor + backgroundColor + target + action
 
 @param tintColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UISegmentedControl *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds items:(NSArray <NSString *>*)items selectedSegmentIndex:(NSUInteger)selectedSegmentIndex tintColor:(id)tintColor backgroundColor:(id)backgroundColor target:(id)target action:(SEL)action;

/**
 create segmentedControl by center and bounds + items + selectedSegmentIndex
 + tintColor + backgroundColor + target + action
 
 @param tintColor UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UISegmentedControl *)segmentedControlWithCenter:(CGPoint)center bounds:(CGRect)bounds items:(NSArray <NSString *>*)items selectedSegmentIndex:(NSUInteger)selectedSegmentIndex tintColor:(id)tintColor backgroundColor:(id)backgroundColor target:(id)target action:(SEL)action;

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
- (UISegmentedControl *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds items:(NSArray <NSString *>*)items selectedSegmentIndex:(NSUInteger)selectedSegmentIndex normalTitleFont:(id)normalTitleFont normalTitleColor:(id)normalTitleColor selectTitleFont:(id)selectTitleFont selectTitleColor:(id)selectTitleColor target:(id)target action:(SEL)action;

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
+ (UISegmentedControl *)segmentedControlWithCenter:(CGPoint)center bounds:(CGRect)bounds items:(NSArray <NSString *>*)items selectedSegmentIndex:(NSUInteger)selectedSegmentIndex normalTitleFont:(id)normalTitleFont normalTitleColor:(id)normalTitleColor selectTitleFont:(id)selectTitleFont selectTitleColor:(id)selectTitleColor target:(id)target action:(SEL)action;

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
- (UISegmentedControl *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds items:(NSArray <NSString *>*)items selectedSegmentIndex:(NSUInteger)selectedSegmentIndex normalTitleFont:(id)normalTitleFont normalTitleColor:(id)normalTitleColor selectTitleFont:(id)selectTitleFont selectTitleColor:(id)selectTitleColor tintColor:(id)tintColor backgroundColor:(id)backgroundColor target:(id)target action:(SEL)action;

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
+ (UISegmentedControl *)segmentedControlWithCenter:(CGPoint)center bounds:(CGRect)bounds items:(NSArray <NSString *>*)items selectedSegmentIndex:(NSUInteger)selectedSegmentIndex normalTitleFont:(nullable id)normalTitleFont normalTitleColor:(nullable id)normalTitleColor selectTitleFont:(nullable id)selectTitleFont selectTitleColor:(nullable id)selectTitleColor tintColor:(nullable id)tintColor backgroundColor:(nullable id)backgroundColor target:(nullable id)target action:(nullable SEL)action;

@end

NS_ASSUME_NONNULL_END
