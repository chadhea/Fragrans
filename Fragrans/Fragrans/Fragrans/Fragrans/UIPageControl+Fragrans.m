//
//  UIPageControl+Fragrans.m
//  Fragrans
//
//  Created by qmz on 2019/3/12.
//

#import "UIPageControl+Fragrans.h"
#import <objc/runtime.h>
#import "UIColor+Fragrans.h"
@implementation UIPageControl (Fragrans)
/**
 create pageControl by target + action
 
 */
- (UIPageControl *)initWithTarget:(id)target action:(SEL)action {
    return [UIPageControl pageControlWithNumberOfPages:1 currentPage:0 pageIndicatorTintColor:nil currentPageIndicatorTintColor:nil target:target action:action];
}

/**
 create pageControl by target + action
 
 */
+ (UIPageControl *)pageControlWithTarget:(id)target action:(SEL)action {
    return [UIPageControl pageControlWithNumberOfPages:1 currentPage:0 pageIndicatorTintColor:nil currentPageIndicatorTintColor:nil target:target action:action];
}

/**
 create pageControl by numberOfPages
 
 */
- (UIPageControl *)initWithNumberOfPages:(NSInteger)numberOfPages {
    return [UIPageControl pageControlWithNumberOfPages:numberOfPages currentPage:0 pageIndicatorTintColor:nil currentPageIndicatorTintColor:nil target:nil action:nil];
}

/**
 create pageControl by numberOfPages
 
 */
+ (UIPageControl *)pageControlWithNumberOfPages:(NSInteger)numberOfPages {
    return [UIPageControl pageControlWithNumberOfPages:numberOfPages currentPage:0 pageIndicatorTintColor:nil currentPageIndicatorTintColor:nil target:nil action:nil];
}

/**
 create pageControl by numberOfPages + target + action
 
 */
- (UIPageControl *)initWithNumberOfPages:(NSInteger)numberOfPages target:(id)target action:(SEL)action {
    return [UIPageControl pageControlWithNumberOfPages:numberOfPages currentPage:0 pageIndicatorTintColor:nil currentPageIndicatorTintColor:nil target:target action:action];
}

/**
 create pageControl by numberOfPages + target + action
 
 */
+ (UIPageControl *)pageControlWithNumberOfPages:(NSInteger)numberOfPages target:(id)target action:(SEL)action {
    return [UIPageControl pageControlWithNumberOfPages:numberOfPages currentPage:0 pageIndicatorTintColor:nil currentPageIndicatorTintColor:nil target:target action:action];
}

/**
 create pageControl by numberOfPages + currentPage
 
 */
- (UIPageControl *)initWithNumberOfPages:(NSInteger)numberOfPages currentPage:(NSInteger)currentPage {
    return [UIPageControl pageControlWithNumberOfPages:numberOfPages currentPage:currentPage pageIndicatorTintColor:nil currentPageIndicatorTintColor:nil target:nil action:nil];
}

/**
 create pageControl by numberOfPages + currentPage
 
 */
+ (UIPageControl *)pageControlWithNumberOfPages:(NSInteger)numberOfPages currentPage:(NSInteger)currentPage {
    return [UIPageControl pageControlWithNumberOfPages:numberOfPages currentPage:currentPage pageIndicatorTintColor:nil currentPageIndicatorTintColor:nil target:nil action:nil];
}

/**
 create pageControl by numberOfPages + currentPage + target + action
 
 */
- (UIPageControl *)initWithNumberOfPages:(NSInteger)numberOfPages currentPage:(NSInteger)currentPage target:(id)target action:(SEL)action {
    return [UIPageControl pageControlWithNumberOfPages:numberOfPages currentPage:currentPage pageIndicatorTintColor:nil currentPageIndicatorTintColor:nil target:target action:action];
}

/**
 create pageControl by numberOfPages + currentPage +  target + action
 
 */
+ (UIPageControl *)pageControlWithNumberOfPages:(NSInteger)numberOfPages currentPage:(NSInteger)currentPage target:(id)target action:(SEL)action {
    return [UIPageControl pageControlWithNumberOfPages:numberOfPages currentPage:currentPage pageIndicatorTintColor:nil currentPageIndicatorTintColor:nil target:target action:action];
}

/**
 create pageControl by numberOfPages + pageIndicatorTintColor + currentPageIndicatorTintColor
 
 @param pageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 @param currentPageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 */
- (UIPageControl *)initWithNumberOfPages:(NSInteger)numberOfPages pageIndicatorTintColor:(id)pageIndicatorTintColor currentPageIndicatorTintColor:(id)currentPageIndicatorTintColor {
    return [UIPageControl pageControlWithNumberOfPages:numberOfPages currentPage:0 pageIndicatorTintColor:pageIndicatorTintColor currentPageIndicatorTintColor:currentPageIndicatorTintColor target:nil action:nil];
}

/**
 create pageControl by numberOfPages + pageIndicatorTintColor + currentPageIndicatorTintColor
 
 @param pageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 @param currentPageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 */
+ (UIPageControl *)pageControlWithNumberOfPages:(NSInteger)numberOfPages pageIndicatorTintColor:(id)pageIndicatorTintColor currentPageIndicatorTintColor:(id)currentPageIndicatorTintColor {
    return [UIPageControl pageControlWithNumberOfPages:numberOfPages currentPage:0 pageIndicatorTintColor:pageIndicatorTintColor currentPageIndicatorTintColor:currentPageIndicatorTintColor target:nil action:nil];
}

/**
 create pageControl by numberOfPages + currentPage + pageIndicatorTintColor + currentPageIndicatorTintColor
 
 @param pageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 @param currentPageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 */
- (UIPageControl *)initWithNumberOfPages:(NSInteger)numberOfPages currentPage:(NSInteger)currentPage pageIndicatorTintColor:(id)pageIndicatorTintColor currentPageIndicatorTintColor:(id)currentPageIndicatorTintColor {
    return [UIPageControl pageControlWithNumberOfPages:numberOfPages currentPage:currentPage pageIndicatorTintColor:pageIndicatorTintColor currentPageIndicatorTintColor:currentPageIndicatorTintColor target:nil action:nil];
}

/**
 create pageControl by numberOfPages + currentPage + pageIndicatorTintColor + currentPageIndicatorTintColor
 
 @param pageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 @param currentPageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 */
+ (UIPageControl *)pageControlWithNumberOfPages:(NSInteger)numberOfPages currentPage:(NSInteger)currentPage pageIndicatorTintColor:(id)pageIndicatorTintColor currentPageIndicatorTintColor:(id)currentPageIndicatorTintColor {
    return [UIPageControl pageControlWithNumberOfPages:numberOfPages currentPage:currentPage pageIndicatorTintColor:pageIndicatorTintColor currentPageIndicatorTintColor:currentPageIndicatorTintColor target:nil action:nil];
}

/**
 create pageControl by numberOfPages + pageIndicatorTintColor + currentPageIndicatorTintColor
 + target + action
 
 @param pageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 @param currentPageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 */
- (UIPageControl *)initWithNumberOfPages:(NSInteger)numberOfPages pageIndicatorTintColor:(id)pageIndicatorTintColor currentPageIndicatorTintColor:(id)currentPageIndicatorTintColor target:(id)target action:(SEL)action {
    return [UIPageControl pageControlWithNumberOfPages:numberOfPages currentPage:0 pageIndicatorTintColor:pageIndicatorTintColor currentPageIndicatorTintColor:currentPageIndicatorTintColor target:target action:action];
}

/**
 create pageControl by numberOfPages + pageIndicatorTintColor + currentPageIndicatorTintColor
 + target + action
 
 @param pageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 @param currentPageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 */
+ (UIPageControl *)pageControlWithNumberOfPages:(NSInteger)numberOfPages pageIndicatorTintColor:(id)pageIndicatorTintColor currentPageIndicatorTintColor:(id)currentPageIndicatorTintColor target:(id)target action:(SEL)action {
     return [UIPageControl pageControlWithNumberOfPages:numberOfPages currentPage:0 pageIndicatorTintColor:pageIndicatorTintColor currentPageIndicatorTintColor:currentPageIndicatorTintColor target:target action:action];
}

/**
 create pageControl by numberOfPages + currentPage + pageIndicatorTintColor
 + currentPageIndicatorTintColor + target + action
 
 @param pageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 @param currentPageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 */
- (UIPageControl *)initWithNumberOfPages:(NSInteger)numberOfPages currentPage:(NSInteger)currentPage pageIndicatorTintColor:(id)pageIndicatorTintColor currentPageIndicatorTintColor:(id)currentPageIndicatorTintColor target:(id)target action:(SEL)action {
    return [UIPageControl pageControlWithNumberOfPages:numberOfPages currentPage:currentPage pageIndicatorTintColor:pageIndicatorTintColor currentPageIndicatorTintColor:currentPageIndicatorTintColor target:target action:action];
}

/**
 create pageControl by numberOfPages + currentPage + pageIndicatorTintColor
 + currentPageIndicatorTintColor + target + action
 
 @param pageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 @param currentPageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 */
+ (UIPageControl *)pageControlWithNumberOfPages:(NSInteger)numberOfPages currentPage:(NSInteger)currentPage pageIndicatorTintColor:(nullable id)pageIndicatorTintColor currentPageIndicatorTintColor:(nullable id)currentPageIndicatorTintColor target:(nullable id)target action:(nullable SEL)action {
    UIPageControl   *pageControl = [[UIPageControl alloc] initWithFrame:CGRectZero];
    if (numberOfPages > 0) {
        pageControl.numberOfPages = numberOfPages;
    }else {
        pageControl.numberOfPages = 1;
    }
    if (currentPage >= 0) {
        pageControl.currentPage = currentPage;
    }else {
        pageControl.currentPage = 0;
    }
    pageControl.pageIndicatorTintColor = [UIColor safeColor:pageIndicatorTintColor baseColor:@"c"];
    pageControl.currentPageIndicatorTintColor = [UIColor safeColor:currentPageIndicatorTintColor baseColor:@"f"];
    if (target && action) {
        [pageControl addTarget:target action:action forControlEvents:UIControlEventValueChanged];
    }
    return pageControl;
}

/**
 create pageControl by frame + target + action
 
 */
- (UIPageControl *)initWithFrame:(CGRect)frame target:(id)target action:(SEL)action {
    return [UIPageControl pageControlWithFrame:frame numberOfPages:1 currentPage:0 pageIndicatorTintColor:nil currentPageIndicatorTintColor:nil target:target action:action];
}

/**
 create pageControl by frame + target + action
 
 */
+ (UIPageControl *)pageControlWithFrame:(CGRect)frame target:(id)target action:(SEL)action {
    return [UIPageControl pageControlWithFrame:frame numberOfPages:1 currentPage:0 pageIndicatorTintColor:nil currentPageIndicatorTintColor:nil target:target action:action];
}


/**
 create pageControl by frame + numberOfPages
 
 */
- (UIPageControl *)initWithFrame:(CGRect)frame numberOfPages:(NSInteger)numberOfPages {
    return [UIPageControl pageControlWithFrame:frame numberOfPages:numberOfPages currentPage:0 pageIndicatorTintColor:nil currentPageIndicatorTintColor:nil target:nil action:nil];
}

/**
 create pageControl by frame + numberOfPages
 
 */
+ (UIPageControl *)pageControlWithFrame:(CGRect)frame numberOfPages:(NSInteger)numberOfPages {
    return [UIPageControl pageControlWithFrame:frame numberOfPages:numberOfPages currentPage:0 pageIndicatorTintColor:nil currentPageIndicatorTintColor:nil target:nil action:nil];
}

/**
 create pageControl by frame + numberOfPages + target + action
 
 */
- (UIPageControl *)initWithFrame:(CGRect)frame numberOfPages:(NSInteger)numberOfPages target:(id)target action:(SEL)action {
    return [UIPageControl pageControlWithFrame:frame numberOfPages:numberOfPages currentPage:0 pageIndicatorTintColor:nil currentPageIndicatorTintColor:nil target:target action:action];
}

/**
 create pageControl by frame + numberOfPages + target + action
 
 */
+ (UIPageControl *)pageControlWithFrame:(CGRect)frame numberOfPages:(NSInteger)numberOfPages target:(id)target action:(SEL)action {
    return [UIPageControl pageControlWithFrame:frame numberOfPages:numberOfPages currentPage:0 pageIndicatorTintColor:nil currentPageIndicatorTintColor:nil target:target action:action];
}

/**
 create pageControl by frame + numberOfPages + currentPage
 
 */
- (UIPageControl *)initWithFrame:(CGRect)frame numberOfPages:(NSInteger)numberOfPages currentPage:(NSInteger)currentPage {
    return [UIPageControl pageControlWithFrame:frame numberOfPages:numberOfPages currentPage:currentPage pageIndicatorTintColor:nil currentPageIndicatorTintColor:nil target:nil action:nil];
}

/**
 create pageControl by frame + numberOfPages + currentPage
 
 */
+ (UIPageControl *)pageControlWithFrame:(CGRect)frame numberOfPages:(NSInteger)numberOfPages currentPage:(NSInteger)currentPage {
    return [UIPageControl pageControlWithFrame:frame numberOfPages:numberOfPages currentPage:currentPage pageIndicatorTintColor:nil currentPageIndicatorTintColor:nil target:nil action:nil];
}

/**
 create pageControl by frame + numberOfPages + currentPage + target + action
 
 */
- (UIPageControl *)initWithFrame:(CGRect)frame numberOfPages:(NSInteger)numberOfPages currentPage:(NSInteger)currentPage target:(id)target action:(SEL)action {
    return [UIPageControl pageControlWithFrame:frame numberOfPages:numberOfPages currentPage:currentPage pageIndicatorTintColor:nil currentPageIndicatorTintColor:nil target:target action:action];
}

/**
 create pageControl by frame + numberOfPages + currentPage +  target + action
 
 */
+ (UIPageControl *)pageControlWithFrame:(CGRect)frame numberOfPages:(NSInteger)numberOfPages currentPage:(NSInteger)currentPage target:(id)target action:(SEL)action {
    return [UIPageControl pageControlWithFrame:frame numberOfPages:numberOfPages currentPage:currentPage pageIndicatorTintColor:nil currentPageIndicatorTintColor:nil target:target action:action];
}

/**
 create pageControl by frame + numberOfPages + pageIndicatorTintColor + currentPageIndicatorTintColor
 
 @param pageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 @param currentPageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 */
- (UIPageControl *)initWithFrame:(CGRect)frame numberOfPages:(NSInteger)numberOfPages pageIndicatorTintColor:(id)pageIndicatorTintColor currentPageIndicatorTintColor:(id)currentPageIndicatorTintColor {
    return [UIPageControl pageControlWithFrame:frame numberOfPages:numberOfPages currentPage:0 pageIndicatorTintColor:pageIndicatorTintColor currentPageIndicatorTintColor:currentPageIndicatorTintColor target:nil action:nil];
}

/**
 create pageControl by frame + numberOfPages + pageIndicatorTintColor + currentPageIndicatorTintColor
 
 @param pageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 @param currentPageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 */
+ (UIPageControl *)pageControlWithFrame:(CGRect)frame numberOfPages:(NSInteger)numberOfPages pageIndicatorTintColor:(id)pageIndicatorTintColor currentPageIndicatorTintColor:(id)currentPageIndicatorTintColor {
    return [UIPageControl pageControlWithFrame:frame numberOfPages:numberOfPages currentPage:0 pageIndicatorTintColor:pageIndicatorTintColor currentPageIndicatorTintColor:currentPageIndicatorTintColor target:nil action:nil];
}

/**
 create pageControl by frame + numberOfPages + currentPage + pageIndicatorTintColor + currentPageIndicatorTintColor
 
 @param pageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 @param currentPageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 */
- (UIPageControl *)initWithFrame:(CGRect)frame numberOfPages:(NSInteger)numberOfPages currentPage:(NSInteger)currentPage pageIndicatorTintColor:(id)pageIndicatorTintColor currentPageIndicatorTintColor:(id)currentPageIndicatorTintColor {
    return [UIPageControl pageControlWithFrame:frame numberOfPages:numberOfPages currentPage:currentPage pageIndicatorTintColor:pageIndicatorTintColor currentPageIndicatorTintColor:currentPageIndicatorTintColor target:nil action:nil];
}

/**
 create pageControl by frame + numberOfPages + currentPage + pageIndicatorTintColor + currentPageIndicatorTintColor
 
 @param pageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 @param currentPageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 */
+ (UIPageControl *)pageControlWithFrame:(CGRect)frame numberOfPages:(NSInteger)numberOfPages currentPage:(NSInteger)currentPage pageIndicatorTintColor:(id)pageIndicatorTintColor currentPageIndicatorTintColor:(id)currentPageIndicatorTintColor {
    return [UIPageControl pageControlWithFrame:frame numberOfPages:numberOfPages currentPage:currentPage pageIndicatorTintColor:pageIndicatorTintColor currentPageIndicatorTintColor:currentPageIndicatorTintColor target:nil action:nil];
}

/**
 create pageControl by frame + numberOfPages + pageIndicatorTintColor
 + currentPageIndicatorTintColor + target + action
 
 @param pageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 @param currentPageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 */
- (UIPageControl *)initWithFrame:(CGRect)frame numberOfPages:(NSInteger)numberOfPages pageIndicatorTintColor:(id)pageIndicatorTintColor currentPageIndicatorTintColor:(id)currentPageIndicatorTintColor target:(id)target action:(SEL)action {
    return [UIPageControl pageControlWithFrame:frame numberOfPages:numberOfPages currentPage:0 pageIndicatorTintColor:pageIndicatorTintColor currentPageIndicatorTintColor:currentPageIndicatorTintColor target:target action:action];
}

/**
 create pageControl by frame + numberOfPages + pageIndicatorTintColor
 + currentPageIndicatorTintColor + target + action
 
 @param pageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 @param currentPageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 */
+ (UIPageControl *)pageControlWithFrame:(CGRect)frame numberOfPages:(NSInteger)numberOfPages pageIndicatorTintColor:(id)pageIndicatorTintColor currentPageIndicatorTintColor:(id)currentPageIndicatorTintColor target:(id)target action:(SEL)action {
    return [UIPageControl pageControlWithFrame:frame numberOfPages:numberOfPages currentPage:0 pageIndicatorTintColor:pageIndicatorTintColor currentPageIndicatorTintColor:currentPageIndicatorTintColor target:target action:action];
}

/**
 create pageControl by frame + numberOfPages + currentPage + pageIndicatorTintColor
 + currentPageIndicatorTintColor + target + action
 
 @param pageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 @param currentPageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 */
- (UIPageControl *)initWithFrame:(CGRect)frame numberOfPages:(NSInteger)numberOfPages currentPage:(NSInteger)currentPage pageIndicatorTintColor:(id)pageIndicatorTintColor currentPageIndicatorTintColor:(id)currentPageIndicatorTintColor target:(id)target action:(SEL)action {
    return [UIPageControl pageControlWithFrame:frame numberOfPages:numberOfPages currentPage:currentPage pageIndicatorTintColor:pageIndicatorTintColor currentPageIndicatorTintColor:currentPageIndicatorTintColor target:target action:action];
}

/**
 create pageControl by frame + numberOfPages + currentPage + pageIndicatorTintColor
 + currentPageIndicatorTintColor + target + action
 
 @param pageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 @param currentPageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 */
+ (UIPageControl *)pageControlWithFrame:(CGRect)frame numberOfPages:(NSInteger)numberOfPages currentPage:(NSInteger)currentPage pageIndicatorTintColor:(nullable id)pageIndicatorTintColor currentPageIndicatorTintColor:(nullable id)currentPageIndicatorTintColor target:(nullable id)target action:(nullable SEL)action {
    UIPageControl   *pageCoutrol = [UIPageControl pageControlWithNumberOfPages:numberOfPages currentPage:currentPage pageIndicatorTintColor:pageIndicatorTintColor currentPageIndicatorTintColor:currentPageIndicatorTintColor target:target action:action];
    pageCoutrol.frame = frame;
    return pageCoutrol;
}

/**
 create pageControl by center and bounds
 
 */
- (UIPageControl *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds {
    return  [UIPageControl pageControlWithCenter:center bounds:bounds numberOfPages:1 currentPage:0 pageIndicatorTintColor:nil currentPageIndicatorTintColor:nil target:nil action:nil];
}

/**
 create pageControl by center and bounds
 
 */
+ (UIPageControl *)pageControlWithCenter:(CGPoint)center bounds:(CGRect)bounds {
    return  [UIPageControl pageControlWithCenter:center bounds:bounds numberOfPages:1 currentPage:0 pageIndicatorTintColor:nil currentPageIndicatorTintColor:nil target:nil action:nil];
}

/**
 create pageControl by center and bounds + target + action
 
 */
- (UIPageControl *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds target:(id)target action:(SEL)action {
    return  [UIPageControl pageControlWithCenter:center bounds:bounds numberOfPages:1 currentPage:0 pageIndicatorTintColor:nil currentPageIndicatorTintColor:nil target:target action:action];
}

/**
 create pageControl by center and bounds + target + action
 
 */
+ (UIPageControl *)pageControlWithCenter:(CGPoint)center bounds:(CGRect)bounds target:(nullable id)target action:(nullable SEL)action {
    return  [UIPageControl pageControlWithCenter:center bounds:bounds numberOfPages:1 currentPage:0 pageIndicatorTintColor:nil currentPageIndicatorTintColor:nil target:target action:action];
}

/**
 create pageControl by center and bounds + numberOfPages
 
 */
- (UIPageControl *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds numberOfPages:(NSInteger)numberOfPages {
    return  [UIPageControl pageControlWithCenter:center bounds:bounds numberOfPages:numberOfPages currentPage:0 pageIndicatorTintColor:nil currentPageIndicatorTintColor:nil target:nil action:nil];
}

/**
 create pageControl by center and bounds + numberOfPages
 
 */
+ (UIPageControl *)pageControlWithCenter:(CGPoint)center bounds:(CGRect)bounds numberOfPages:(NSInteger)numberOfPages {
    return  [UIPageControl pageControlWithCenter:center bounds:bounds numberOfPages:numberOfPages currentPage:0 pageIndicatorTintColor:nil currentPageIndicatorTintColor:nil target:nil action:nil];
}

/**
 create pageControl by center and bounds + numberOfPages + target + action
 
 */
- (UIPageControl *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds numberOfPages:(NSInteger)numberOfPages target:(id)target action:(SEL)action {
    return  [UIPageControl pageControlWithCenter:center bounds:bounds numberOfPages:numberOfPages currentPage:0 pageIndicatorTintColor:nil currentPageIndicatorTintColor:nil target:target action:action];
}

/**
 create pageControl by center and bounds + numberOfPages + target + action
 
 */
+ (UIPageControl *)pageControlWithCenter:(CGPoint)center bounds:(CGRect)bounds numberOfPages:(NSInteger)numberOfPages target:(id)target action:(SEL)action {
    return  [UIPageControl pageControlWithCenter:center bounds:bounds numberOfPages:numberOfPages currentPage:0 pageIndicatorTintColor:nil currentPageIndicatorTintColor:nil target:target action:action];
}

/**
 create pageControl by center and bounds + numberOfPages + currentPage
 
 */
- (UIPageControl *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds numberOfPages:(NSInteger)numberOfPages currentPage:(NSInteger)currentPage {
    return  [UIPageControl pageControlWithCenter:center bounds:bounds numberOfPages:numberOfPages currentPage:currentPage pageIndicatorTintColor:nil currentPageIndicatorTintColor:nil target:nil action:nil];
}

/**
 create pageControl by center and bounds + numberOfPages + currentPage
 
 */
+ (UIPageControl *)pageControlWithCenter:(CGPoint)center bounds:(CGRect)bounds numberOfPages:(NSInteger)numberOfPages currentPage:(NSInteger)currentPage {
    return  [UIPageControl pageControlWithCenter:center bounds:bounds numberOfPages:numberOfPages currentPage:currentPage pageIndicatorTintColor:nil currentPageIndicatorTintColor:nil target:nil action:nil];
}

/**
 create pageControl by center and bounds + numberOfPages + currentPage + target + action
 
 */
- (UIPageControl *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds numberOfPages:(NSInteger)numberOfPages currentPage:(NSInteger)currentPage target:(id)target action:(SEL)action {
    return  [UIPageControl pageControlWithCenter:center bounds:bounds numberOfPages:numberOfPages currentPage:currentPage pageIndicatorTintColor:nil currentPageIndicatorTintColor:nil target:target action:action];
}

/**
 create pageControl by center and bounds + numberOfPages + currentPage +  target + action
 
 */
+ (UIPageControl *)pageControlWithCenter:(CGPoint)center bounds:(CGRect)bounds numberOfPages:(NSInteger)numberOfPages currentPage:(NSInteger)currentPage target:(id)target action:(SEL)action {
    return  [UIPageControl pageControlWithCenter:center bounds:bounds numberOfPages:numberOfPages currentPage:currentPage pageIndicatorTintColor:nil currentPageIndicatorTintColor:nil target:target action:action];
}

/**
 create pageControl by center and bounds + numberOfPages + pageIndicatorTintColor + currentPageIndicatorTintColor
 
 @param pageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 @param currentPageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 */
- (UIPageControl *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds numberOfPages:(NSInteger)numberOfPages pageIndicatorTintColor:(id)pageIndicatorTintColor currentPageIndicatorTintColor:(id)currentPageIndicatorTintColor {
    return  [UIPageControl pageControlWithCenter:center bounds:bounds numberOfPages:numberOfPages currentPage:0 pageIndicatorTintColor:pageIndicatorTintColor currentPageIndicatorTintColor:currentPageIndicatorTintColor target:nil action:nil];
}

/**
 create pageControl by center and bounds + numberOfPages + pageIndicatorTintColor + currentPageIndicatorTintColor
 
 @param pageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 @param currentPageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 */
+ (UIPageControl *)pageControlWithCenter:(CGPoint)center bounds:(CGRect)bounds numberOfPages:(NSInteger)numberOfPages pageIndicatorTintColor:(id)pageIndicatorTintColor currentPageIndicatorTintColor:(id)currentPageIndicatorTintColor {
    return [UIPageControl pageControlWithCenter:center bounds:bounds numberOfPages:numberOfPages currentPage:0 pageIndicatorTintColor:pageIndicatorTintColor currentPageIndicatorTintColor:currentPageIndicatorTintColor target:nil action:nil];
}

/**
 create pageControl by center and bounds + numberOfPages + currentPage + pageIndicatorTintColor + currentPageIndicatorTintColor
 
 @param pageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 @param currentPageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 */
- (UIPageControl *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds numberOfPages:(NSInteger)numberOfPages currentPage:(NSInteger)currentPage pageIndicatorTintColor:(id)pageIndicatorTintColor currentPageIndicatorTintColor:(id)currentPageIndicatorTintColor {
    return [UIPageControl pageControlWithCenter:center bounds:bounds numberOfPages:numberOfPages currentPage:currentPage pageIndicatorTintColor:pageIndicatorTintColor currentPageIndicatorTintColor:currentPageIndicatorTintColor target:nil action:nil];
}

/**
 create pageControl by center and bounds + numberOfPages + currentPage + pageIndicatorTintColor + currentPageIndicatorTintColor
 
 @param pageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 @param currentPageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 */
+ (UIPageControl *)pageControlWithCenter:(CGPoint)center bounds:(CGRect)bounds numberOfPages:(NSInteger)numberOfPages currentPage:(NSInteger)currentPage pageIndicatorTintColor:(id)pageIndicatorTintColor currentPageIndicatorTintColor:(id)currentPageIndicatorTintColor {
    return [UIPageControl pageControlWithCenter:center bounds:bounds numberOfPages:numberOfPages currentPage:currentPage pageIndicatorTintColor:pageIndicatorTintColor currentPageIndicatorTintColor:currentPageIndicatorTintColor target:nil action:nil];
}

/**
 create pageControl by center and bounds + numberOfPages + pageIndicatorTintColor
 + currentPageIndicatorTintColor + target + action
 
 @param pageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 @param currentPageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 */
- (UIPageControl *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds numberOfPages:(NSInteger)numberOfPages pageIndicatorTintColor:(id)pageIndicatorTintColor currentPageIndicatorTintColor:(id)currentPageIndicatorTintColor target:(id)target action:(SEL)action {
    return [UIPageControl pageControlWithCenter:center bounds:bounds numberOfPages:numberOfPages currentPage:0 pageIndicatorTintColor:pageIndicatorTintColor currentPageIndicatorTintColor:currentPageIndicatorTintColor target:target action:action];
}

/**
 create pageControl by center and bounds + numberOfPages + pageIndicatorTintColor
 + currentPageIndicatorTintColor + target + action
 
 @param pageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 @param currentPageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 */
+ (UIPageControl *)pageControlWithCenter:(CGPoint)center bounds:(CGRect)bounds numberOfPages:(NSInteger)numberOfPages pageIndicatorTintColor:(id)pageIndicatorTintColor currentPageIndicatorTintColor:(id)currentPageIndicatorTintColor target:(id)target action:(SEL)action {
    return [UIPageControl pageControlWithCenter:center bounds:bounds numberOfPages:numberOfPages currentPage:0 pageIndicatorTintColor:pageIndicatorTintColor currentPageIndicatorTintColor:currentPageIndicatorTintColor target:target action:action];
}


/**
 create pageControl by center and bounds + numberOfPages + currentPage + pageIndicatorTintColor
 + currentPageIndicatorTintColor + target + action
 
 @param pageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 @param currentPageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 */
- (UIPageControl *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds numberOfPages:(NSInteger)numberOfPages currentPage:(NSInteger)currentPage pageIndicatorTintColor:(id)pageIndicatorTintColor currentPageIndicatorTintColor:(id)currentPageIndicatorTintColor target:(id)target action:(SEL)action {
    return [UIPageControl pageControlWithCenter:center bounds:bounds numberOfPages:numberOfPages currentPage:currentPage pageIndicatorTintColor:pageIndicatorTintColor currentPageIndicatorTintColor:currentPageIndicatorTintColor target:target action:action];
}

/**
 create pageControl by center and bounds + numberOfPages + currentPage + pageIndicatorTintColor
 + currentPageIndicatorTintColor + target + action
 
 @param pageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 @param currentPageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 */
+ (UIPageControl *)pageControlWithCenter:(CGPoint)center bounds:(CGRect)bounds numberOfPages:(NSInteger)numberOfPages currentPage:(NSInteger)currentPage pageIndicatorTintColor:(nullable id)pageIndicatorTintColor currentPageIndicatorTintColor:(nullable id)currentPageIndicatorTintColor target:(nullable id)target action:(nullable SEL)action {
    UIPageControl   *pageCoutrol = [UIPageControl pageControlWithNumberOfPages:numberOfPages currentPage:currentPage pageIndicatorTintColor:pageIndicatorTintColor currentPageIndicatorTintColor:currentPageIndicatorTintColor target:target action:action];
    pageCoutrol.center = center;
    pageCoutrol.bounds = bounds;
    return pageCoutrol;
}





@end
