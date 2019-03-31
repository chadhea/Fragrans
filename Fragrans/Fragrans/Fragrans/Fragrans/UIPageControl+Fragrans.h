//
//  UIPageControl+Fragrans.h
//  Fragrans
//
//  Created by qmz on 2019/3/12.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIPageControl (Fragrans)

/**
 create pageControl by target + action
 
 */
- (UIPageControl *)initWithTarget:(id)target action:(SEL)action;

/**
 create pageControl by target + action
 
 */
+ (UIPageControl *)pageControlWithTarget:(id)target action:(SEL)action;

/**
 create pageControl by numberOfPages
 
 */
- (UIPageControl *)initWithNumberOfPages:(NSInteger)numberOfPages;

/**
 create pageControl by numberOfPages
 
 */
+ (UIPageControl *)pageControlWithNumberOfPages:(NSInteger)numberOfPages;

/**
 create pageControl by numberOfPages + target + action
 
 */
- (UIPageControl *)initWithNumberOfPages:(NSInteger)numberOfPages target:(id)target action:(SEL)action;

/**
 create pageControl by numberOfPages + target + action
 
 */
+ (UIPageControl *)pageControlWithNumberOfPages:(NSInteger)numberOfPages target:(id)target action:(SEL)action;

/**
 create pageControl by numberOfPages + currentPage
 
 */
- (UIPageControl *)initWithNumberOfPages:(NSInteger)numberOfPages currentPage:(NSInteger)currentPage;

/**
 create pageControl by numberOfPages + currentPage
 
 */
+ (UIPageControl *)pageControlWithNumberOfPages:(NSInteger)numberOfPages currentPage:(NSInteger)currentPage;

/**
 create pageControl by numberOfPages + currentPage + target + action
 
 */
- (UIPageControl *)initWithNumberOfPages:(NSInteger)numberOfPages currentPage:(NSInteger)currentPage target:(id)target action:(SEL)action;

/**
 create pageControl by numberOfPages + currentPage +  target + action
 
 */
+ (UIPageControl *)pageControlWithNumberOfPages:(NSInteger)numberOfPages currentPage:(NSInteger)currentPage target:(id)target action:(SEL)action;

/**
 create pageControl by numberOfPages + pageIndicatorTintColor + currentPageIndicatorTintColor

 @param pageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 @param currentPageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 */
- (UIPageControl *)initWithNumberOfPages:(NSInteger)numberOfPages pageIndicatorTintColor:(id)pageIndicatorTintColor currentPageIndicatorTintColor:(id)currentPageIndicatorTintColor;

/**
 create pageControl by numberOfPages + pageIndicatorTintColor + currentPageIndicatorTintColor
 
 @param pageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 @param currentPageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 */
+ (UIPageControl *)pageControlWithNumberOfPages:(NSInteger)numberOfPages pageIndicatorTintColor:(id)pageIndicatorTintColor currentPageIndicatorTintColor:(id)currentPageIndicatorTintColor;

/**
 create pageControl by numberOfPages + currentPage + pageIndicatorTintColor
 + currentPageIndicatorTintColor
 
 @param pageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 @param currentPageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 */
- (UIPageControl *)initWithNumberOfPages:(NSInteger)numberOfPages currentPage:(NSInteger)currentPage pageIndicatorTintColor:(id)pageIndicatorTintColor currentPageIndicatorTintColor:(id)currentPageIndicatorTintColor;

/**
 create pageControl by numberOfPages + currentPage + pageIndicatorTintColor
 + currentPageIndicatorTintColor
 
 @param pageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 @param currentPageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 */
+ (UIPageControl *)pageControlWithNumberOfPages:(NSInteger)numberOfPages currentPage:(NSInteger)currentPage pageIndicatorTintColor:(id)pageIndicatorTintColor currentPageIndicatorTintColor:(id)currentPageIndicatorTintColor;

/**
 create pageControl by numberOfPages + pageIndicatorTintColor + currentPageIndicatorTintColor
 + target + action
 
 @param pageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 @param currentPageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 */
- (UIPageControl *)initWithNumberOfPages:(NSInteger)numberOfPages pageIndicatorTintColor:(id)pageIndicatorTintColor currentPageIndicatorTintColor:(id)currentPageIndicatorTintColor target:(id)target action:(SEL)action;

/**
 create pageControl by numberOfPages + pageIndicatorTintColor + currentPageIndicatorTintColor
 + target + action
 
 @param pageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 @param currentPageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 */
+ (UIPageControl *)pageControlWithNumberOfPages:(NSInteger)numberOfPages pageIndicatorTintColor:(id)pageIndicatorTintColor currentPageIndicatorTintColor:(id)currentPageIndicatorTintColor target:(id)target action:(SEL)action;

/**
 create pageControl by numberOfPages + currentPage + pageIndicatorTintColor
 + currentPageIndicatorTintColor + target + action
 
 @param pageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 @param currentPageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 */
- (UIPageControl *)initWithNumberOfPages:(NSInteger)numberOfPages currentPage:(NSInteger)currentPage pageIndicatorTintColor:(id)pageIndicatorTintColor currentPageIndicatorTintColor:(id)currentPageIndicatorTintColor target:(id)target action:(SEL)action;

/**
 create pageControl by numberOfPages + currentPage + pageIndicatorTintColor
 + currentPageIndicatorTintColor + target + action
 
 @param pageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 @param currentPageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 */
+ (UIPageControl *)pageControlWithNumberOfPages:(NSInteger)numberOfPages currentPage:(NSInteger)currentPage pageIndicatorTintColor:(nullable id)pageIndicatorTintColor currentPageIndicatorTintColor:(nullable id)currentPageIndicatorTintColor target:(nullable id)target action:(nullable SEL)action;

/**
 create pageControl by frame + target + action
 
 */
- (UIPageControl *)initWithFrame:(CGRect)frame target:(id)target action:(SEL)action;

/**
 create pageControl by frame + target + action
 
 */
+ (UIPageControl *)pageControlWithFrame:(CGRect)frame target:(id)target action:(SEL)action;


/**
 create pageControl by frame + numberOfPages
 
 */
- (UIPageControl *)initWithFrame:(CGRect)frame numberOfPages:(NSInteger)numberOfPages;

/**
 create pageControl by frame + numberOfPages
 
 */
+ (UIPageControl *)pageControlWithFrame:(CGRect)frame numberOfPages:(NSInteger)numberOfPages;

/**
 create pageControl by frame + numberOfPages + target + action
 
 */
- (UIPageControl *)initWithFrame:(CGRect)frame numberOfPages:(NSInteger)numberOfPages target:(id)target action:(SEL)action;

/**
 create pageControl by frame + numberOfPages + target + action
 
 */
+ (UIPageControl *)pageControlWithFrame:(CGRect)frame numberOfPages:(NSInteger)numberOfPages target:(id)target action:(SEL)action;

/**
 create pageControl by frame + numberOfPages + currentPage
 
 */
- (UIPageControl *)initWithFrame:(CGRect)frame numberOfPages:(NSInteger)numberOfPages currentPage:(NSInteger)currentPage;

/**
 create pageControl by frame + numberOfPages + currentPage
 
 */
+ (UIPageControl *)pageControlWithFrame:(CGRect)frame numberOfPages:(NSInteger)numberOfPages currentPage:(NSInteger)currentPage;

/**
 create pageControl by frame + numberOfPages + currentPage + target + action
 
 */
- (UIPageControl *)initWithFrame:(CGRect)frame numberOfPages:(NSInteger)numberOfPages currentPage:(NSInteger)currentPage target:(id)target action:(SEL)action;

/**
 create pageControl by frame + numberOfPages + currentPage +  target + action
 
 */
+ (UIPageControl *)pageControlWithFrame:(CGRect)frame numberOfPages:(NSInteger)numberOfPages currentPage:(NSInteger)currentPage target:(id)target action:(SEL)action;

/**
 create pageControl by frame + numberOfPages + pageIndicatorTintColor
 + currentPageIndicatorTintColor
 
 @param pageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 @param currentPageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 */
- (UIPageControl *)initWithFrame:(CGRect)frame numberOfPages:(NSInteger)numberOfPages pageIndicatorTintColor:(id)pageIndicatorTintColor currentPageIndicatorTintColor:(id)currentPageIndicatorTintColor;

/**
 create pageControl by frame + numberOfPages + pageIndicatorTintColor
 + currentPageIndicatorTintColor
 
 @param pageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 @param currentPageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 */
+ (UIPageControl *)pageControlWithFrame:(CGRect)frame numberOfPages:(NSInteger)numberOfPages pageIndicatorTintColor:(id)pageIndicatorTintColor currentPageIndicatorTintColor:(id)currentPageIndicatorTintColor;

/**
 create pageControl by frame + numberOfPages + currentPage + pageIndicatorTintColor
 + currentPageIndicatorTintColor
 
 @param pageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 @param currentPageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 */
- (UIPageControl *)initWithFrame:(CGRect)frame numberOfPages:(NSInteger)numberOfPages currentPage:(NSInteger)currentPage pageIndicatorTintColor:(id)pageIndicatorTintColor currentPageIndicatorTintColor:(id)currentPageIndicatorTintColor;

/**
 create pageControl by frame + numberOfPages + currentPage + pageIndicatorTintColor
 + currentPageIndicatorTintColor
 
 @param pageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 @param currentPageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 */
+ (UIPageControl *)pageControlWithFrame:(CGRect)frame numberOfPages:(NSInteger)numberOfPages currentPage:(NSInteger)currentPage pageIndicatorTintColor:(id)pageIndicatorTintColor currentPageIndicatorTintColor:(id)currentPageIndicatorTintColor;

/**
 create pageControl by frame + numberOfPages + pageIndicatorTintColor
 + currentPageIndicatorTintColor + target + action
 
 @param pageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 @param currentPageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 */
- (UIPageControl *)initWithFrame:(CGRect)frame numberOfPages:(NSInteger)numberOfPages pageIndicatorTintColor:(id)pageIndicatorTintColor currentPageIndicatorTintColor:(id)currentPageIndicatorTintColor target:(id)target action:(SEL)action;

/**
 create pageControl by frame + numberOfPages + pageIndicatorTintColor
 + currentPageIndicatorTintColor + target + action
 
 @param pageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 @param currentPageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 */
+ (UIPageControl *)pageControlWithFrame:(CGRect)frame numberOfPages:(NSInteger)numberOfPages pageIndicatorTintColor:(id)pageIndicatorTintColor currentPageIndicatorTintColor:(id)currentPageIndicatorTintColor target:(id)target action:(SEL)action;

/**
 create pageControl by frame + numberOfPages + currentPage + pageIndicatorTintColor
 + currentPageIndicatorTintColor + target + action
 
 @param pageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 @param currentPageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 */
- (UIPageControl *)initWithFrame:(CGRect)frame numberOfPages:(NSInteger)numberOfPages currentPage:(NSInteger)currentPage pageIndicatorTintColor:(id)pageIndicatorTintColor currentPageIndicatorTintColor:(id)currentPageIndicatorTintColor target:(id)target action:(SEL)action;

/**
 create pageControl by frame + numberOfPages + currentPage + pageIndicatorTintColor
 + currentPageIndicatorTintColor + target + action
 
 @param pageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 @param currentPageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 */
+ (UIPageControl *)pageControlWithFrame:(CGRect)frame numberOfPages:(NSInteger)numberOfPages currentPage:(NSInteger)currentPage pageIndicatorTintColor:(nullable id)pageIndicatorTintColor currentPageIndicatorTintColor:(nullable id)currentPageIndicatorTintColor target:(nullable id)target action:(nullable SEL)action;

/**
 create pageControl by center and bounds
 
 */
- (UIPageControl *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds;

/**
 create pageControl by center and bounds
 
 */
+ (UIPageControl *)pageControlWithCenter:(CGPoint)center bounds:(CGRect)bounds;

/**
 create pageControl by center and bounds + target + action
 
 */
- (UIPageControl *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds target:(id)target action:(SEL)action;

/**
 create pageControl by center and bounds + target + action
 
 */
+ (UIPageControl *)pageControlWithCenter:(CGPoint)center bounds:(CGRect)bounds target:(nullable id)target action:(nullable SEL)action;

/**
 create pageControl by center and bounds + numberOfPages
 
 */
- (UIPageControl *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds numberOfPages:(NSInteger)numberOfPages;

/**
 create pageControl by center and bounds + numberOfPages
 
 */
+ (UIPageControl *)pageControlWithCenter:(CGPoint)center bounds:(CGRect)bounds numberOfPages:(NSInteger)numberOfPages;

/**
 create pageControl by center and bounds + numberOfPages + target + action
 
 */
- (UIPageControl *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds numberOfPages:(NSInteger)numberOfPages target:(id)target action:(SEL)action;

/**
 create pageControl by center and bounds + numberOfPages + target + action
 
 */
+ (UIPageControl *)pageControlWithCenter:(CGPoint)center bounds:(CGRect)bounds numberOfPages:(NSInteger)numberOfPages target:(id)target action:(SEL)action;

/**
 create pageControl by center and bounds + numberOfPages + currentPage
 
 */
- (UIPageControl *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds numberOfPages:(NSInteger)numberOfPages currentPage:(NSInteger)currentPage;

/**
 create pageControl by center and bounds + numberOfPages + currentPage
 
 */
+ (UIPageControl *)pageControlWithCenter:(CGPoint)center bounds:(CGRect)bounds numberOfPages:(NSInteger)numberOfPages currentPage:(NSInteger)currentPage;

/**
 create pageControl by center and bounds + numberOfPages + currentPage + target + action
 
 */
- (UIPageControl *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds numberOfPages:(NSInteger)numberOfPages currentPage:(NSInteger)currentPage target:(id)target action:(SEL)action;

/**
 create pageControl by center and bounds + numberOfPages + currentPage +  target + action
 
 */
+ (UIPageControl *)pageControlWithCenter:(CGPoint)center bounds:(CGRect)bounds numberOfPages:(NSInteger)numberOfPages currentPage:(NSInteger)currentPage target:(id)target action:(SEL)action;

/**
 create pageControl by center and bounds + numberOfPages + pageIndicatorTintColor
 + currentPageIndicatorTintColor
 
 @param pageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 @param currentPageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 */
- (UIPageControl *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds numberOfPages:(NSInteger)numberOfPages pageIndicatorTintColor:(id)pageIndicatorTintColor currentPageIndicatorTintColor:(id)currentPageIndicatorTintColor;

/**
 create pageControl by center and bounds + numberOfPages + pageIndicatorTintColor
 + currentPageIndicatorTintColor
 
 @param pageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 @param currentPageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 */
+ (UIPageControl *)pageControlWithCenter:(CGPoint)center bounds:(CGRect)bounds numberOfPages:(NSInteger)numberOfPages pageIndicatorTintColor:(id)pageIndicatorTintColor currentPageIndicatorTintColor:(id)currentPageIndicatorTintColor;

/**
 create pageControl by center and bounds + numberOfPages + currentPage
 + pageIndicatorTintColor + currentPageIndicatorTintColor
 
 @param pageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 @param currentPageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 */
- (UIPageControl *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds numberOfPages:(NSInteger)numberOfPages currentPage:(NSInteger)currentPage pageIndicatorTintColor:(id)pageIndicatorTintColor currentPageIndicatorTintColor:(id)currentPageIndicatorTintColor;

/**
 create pageControl by center and bounds + numberOfPages + currentPage
 + pageIndicatorTintColor + currentPageIndicatorTintColor
 
 @param pageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 @param currentPageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 */
+ (UIPageControl *)pageControlWithCenter:(CGPoint)center bounds:(CGRect)bounds numberOfPages:(NSInteger)numberOfPages currentPage:(NSInteger)currentPage pageIndicatorTintColor:(id)pageIndicatorTintColor currentPageIndicatorTintColor:(id)currentPageIndicatorTintColor;

/**
 create pageControl by center and bounds + numberOfPages + pageIndicatorTintColor
 + currentPageIndicatorTintColor + target + action
 
 @param pageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 @param currentPageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 */
- (UIPageControl *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds numberOfPages:(NSInteger)numberOfPages pageIndicatorTintColor:(id)pageIndicatorTintColor currentPageIndicatorTintColor:(id)currentPageIndicatorTintColor target:(id)target action:(SEL)action;

/**
 create pageControl by center and bounds + numberOfPages + pageIndicatorTintColor
 + currentPageIndicatorTintColor + target + action
 
 @param pageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 @param currentPageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 */
+ (UIPageControl *)pageControlWithCenter:(CGPoint)center bounds:(CGRect)bounds numberOfPages:(NSInteger)numberOfPages pageIndicatorTintColor:(id)pageIndicatorTintColor currentPageIndicatorTintColor:(id)currentPageIndicatorTintColor target:(id)target action:(SEL)action;

/**
 create pageControl by center and bounds + numberOfPages + currentPage
 + pageIndicatorTintColor + currentPageIndicatorTintColor + target + action
 
 @param pageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 @param currentPageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 */
- (UIPageControl *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds numberOfPages:(NSInteger)numberOfPages currentPage:(NSInteger)currentPage pageIndicatorTintColor:(id)pageIndicatorTintColor currentPageIndicatorTintColor:(id)currentPageIndicatorTintColor target:(id)target action:(SEL)action;

/**
 create pageControl by center and bounds + numberOfPages + currentPage
 + pageIndicatorTintColor + currentPageIndicatorTintColor + target + action
 
 @param pageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 @param currentPageIndicatorTintColor UIColor或者NSString或者NSNumber格式
 */
+ (UIPageControl *)pageControlWithCenter:(CGPoint)center bounds:(CGRect)bounds numberOfPages:(NSInteger)numberOfPages currentPage:(NSInteger)currentPage pageIndicatorTintColor:(nullable id)pageIndicatorTintColor currentPageIndicatorTintColor:(nullable id)currentPageIndicatorTintColor target:(nullable id)target action:(nullable SEL)action;


@end

NS_ASSUME_NONNULL_END
