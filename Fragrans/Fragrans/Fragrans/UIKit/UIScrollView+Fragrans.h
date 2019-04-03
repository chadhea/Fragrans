//
//  UIScrollView+Fragrans.h
//  Fragrans
//
//  Created by qmz on 2019/3/8.
//




#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

#pragma mark --- 添加多个View
typedef NS_ENUM(NSInteger, Frg_ScrollViewAddViewDirectionType) {
    Frg_ScrollViewAddViewDirectionType_Horizontal,//水平方向
    Frg_ScrollViewAddViewDirectionType_Vertical,//垂直方向
};

#pragma mark --- 添加多个ImageView
typedef NS_ENUM(NSInteger, Frg_ScrollViewAddImageDirectionType) {
    Frg_ScrollViewAddImageDirectionType_Horizontal,//水平方向
    Frg_ScrollViewAddImageDirectionType_Vertical,//垂直方向
};

@interface UIScrollView (Fragrans)

/**
 create scrollView by backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UIScrollView *)initWithBackgroundColor:(id)backgroundColor;

/**
 create scrollView by backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIScrollView *)scrollViewWithBackgroundColor:(id)backgroundColor;

/**
 create scrollView by backgroundColor + showsScrollIndicator
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 @param showsScrollIndicator 设置属性showsVerticalScrollIndicator和showsHorizontalScrollIndicator
 */
- (UIScrollView *)initWithBackgroundColor:(id)backgroundColor showsScrollIndicator:(BOOL)showsScrollIndicator;

/**
 create scrollView by backgroundColor + showsScrollIndicator
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 @param showsScrollIndicator 设置属性showsVerticalScrollIndicator和showsHorizontalScrollIndicator
 */
+ (UIScrollView *)scrollViewWithBackgroundColor:(id)backgroundColor showsScrollIndicator:(BOOL)showsScrollIndicator;

/**
 create scrollView by backgroundColor + showsScrollIndicator + bounces
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 @param showsScrollIndicator 设置属性showsVerticalScrollIndicator和showsHorizontalScrollIndicator
 @param bounces 设置属性bounces
 */
- (UIScrollView *)initWithBackgroundColor:(id)backgroundColor showsScrollIndicator:(BOOL)showsScrollIndicator bounces:(BOOL)bounces;

/**
 create scrollView by backgroundColor + showsScrollIndicator + bounces
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 @param showsScrollIndicator 设置属性showsVerticalScrollIndicator和showsHorizontalScrollIndicator
 @param bounces 设置属性bounces
 */
+ (UIScrollView *)scrollViewWithBackgroundColor:(id)backgroundColor showsScrollIndicator:(BOOL)showsScrollIndicator bounces:(BOOL)bounces;

/**
 create scrollView by backgroundColor + showsScrollIndicator + bounces + delegate
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 @param showsScrollIndicator 设置属性showsVerticalScrollIndicator和showsHorizontalScrollIndicator
 @param bounces 设置属性bounces
 */
- (UIScrollView *)initWithBackgroundColor:(id)backgroundColor showsScrollIndicator:(BOOL)showsScrollIndicator bounces:(BOOL)bounces delegate:(id)delegate;

/**
 create scrollView by backgroundColor + showsScrollIndicator + bounces + delegate
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 @param showsScrollIndicator 设置属性showsVerticalScrollIndicator和showsHorizontalScrollIndicator
 @param bounces 设置属性bounces
 */
+ (UIScrollView *)scrollViewWithBackgroundColor:(id)backgroundColor showsScrollIndicator:(BOOL)showsScrollIndicator bounces:(BOOL)bounces delegate:(id)delegate;

/**
 create scrollView by contentSize

 */
- (UIScrollView *)initWithContentSize:(CGSize)contentSize;

/**
 create scrollView by contentSize
 
 */
+ (UIScrollView *)scrollViewWithContentSize:(CGSize)contentSize;

/**
 create scrollView by contentSize + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UIScrollView *)initWithContentSize:(CGSize)contentSize backgroundColor:(id)backgroundColor;

/**
 create scrollView by contentSize + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIScrollView *)scrollViewWithContentSize:(CGSize)contentSize backgroundColor:(id)backgroundColor;

/**
 create scrollView by contentSize + backgroundColor + showsScrollIndicator
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 @param showsScrollIndicator 设置属性showsVerticalScrollIndicator和showsHorizontalScrollIndicator
 */
- (UIScrollView *)initWithContentSize:(CGSize)contentSize backgroundColor:(id)backgroundColor showsScrollIndicator:(BOOL)showsScrollIndicator;

/**
 create scrollView by contentSize + backgroundColor + showsScrollIndicator
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 @param showsScrollIndicator 设置属性showsVerticalScrollIndicator和showsHorizontalScrollIndicator
 */
+ (UIScrollView *)scrollViewWithContentSize:(CGSize)contentSize backgroundColor:(id)backgroundColor showsScrollIndicator:(BOOL)showsScrollIndicator;

/**
 create scrollView by contentSize + backgroundColor + showsScrollIndicator + bounces
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 @param showsScrollIndicator 设置属性showsVerticalScrollIndicator和showsHorizontalScrollIndicator
 @param bounces 设置属性bounces
 */
- (UIScrollView *)initWithContentSize:(CGSize)contentSize backgroundColor:(id)backgroundColor showsScrollIndicator:(BOOL)showsScrollIndicator bounces:(BOOL)bounces;

/**
 create scrollView by contentSize + backgroundColor + showsScrollIndicator + bounces
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 @param showsScrollIndicator 设置属性showsVerticalScrollIndicator和showsHorizontalScrollIndicator
 @param bounces 设置属性bounces
 */
+ (UIScrollView *)scrollViewWithContentSize:(CGSize)contentSize backgroundColor:(nullable id)backgroundColor showsScrollIndicator:(BOOL)showsScrollIndicator bounces:(BOOL)bounces;

/**
 create scrollView by contentSize + backgroundColor + showsScrollIndicator + bounces + delegate
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 @param showsScrollIndicator 设置属性showsVerticalScrollIndicator和showsHorizontalScrollIndicator
 @param bounces 设置属性bounces
 */
- (UIScrollView *)initWithContentSize:(CGSize)contentSize backgroundColor:(id)backgroundColor showsScrollIndicator:(BOOL)showsScrollIndicator bounces:(BOOL)bounces delegate:(id)delegate;

/**
 create scrollView by contentSize + backgroundColor + showsScrollIndicator + bounces + delegate
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 @param showsScrollIndicator 设置属性showsVerticalScrollIndicator和showsHorizontalScrollIndicator
 @param bounces 设置属性bounces
 */
+ (UIScrollView *)scrollViewWithContentSize:(CGSize)contentSize backgroundColor:(nullable id)backgroundColor showsScrollIndicator:(BOOL)showsScrollIndicator bounces:(BOOL)bounces delegate:(id)delegate;

/**
 create scrollView by frame + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UIScrollView *)initWithFrame:(CGRect)frame backgroundColor:(id)backgroundColor;

/**
 create scrollView by frame + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIScrollView *)scrollViewWithFrame:(CGRect)frame backgroundColor:(id)backgroundColor;

/**
 create scrollView by frame + backgroundColor + showsScrollIndicator
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 @param showsScrollIndicator 设置属性showsVerticalScrollIndicator和showsHorizontalScrollIndicator
 */
- (UIScrollView *)initWithFrame:(CGRect)frame backgroundColor:(id)backgroundColor showsScrollIndicator:(BOOL)showsScrollIndicator;

/**
 create scrollView by frame + backgroundColor + showsScrollIndicator
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 @param showsScrollIndicator 设置属性showsVerticalScrollIndicator和showsHorizontalScrollIndicator
 */
+ (UIScrollView *)scrollViewWithFrame:(CGRect)frame backgroundColor:(id)backgroundColor showsScrollIndicator:(BOOL)showsScrollIndicator;

/**
 create scrollView by frame + backgroundColor + showsScrollIndicator + bounces
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 @param showsScrollIndicator 设置属性showsVerticalScrollIndicator和showsHorizontalScrollIndicator
 @param bounces 设置属性bounces
 */
- (UIScrollView *)initWithFrame:(CGRect)frame backgroundColor:(id)backgroundColor showsScrollIndicator:(BOOL)showsScrollIndicator bounces:(BOOL)bounces;

/**
 create scrollView by frame + backgroundColor + showsScrollIndicator + bounces
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 @param showsScrollIndicator 设置属性showsVerticalScrollIndicator和showsHorizontalScrollIndicator
 @param bounces 设置属性bounces
 */
+ (UIScrollView *)scrollViewWithFrame:(CGRect)frame backgroundColor:(id)backgroundColor showsScrollIndicator:(BOOL)showsScrollIndicator bounces:(BOOL)bounces;

/**
 create scrollView by frame + backgroundColor + showsScrollIndicator + bounces + delegate
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 @param showsScrollIndicator 设置属性showsVerticalScrollIndicator和showsHorizontalScrollIndicator
 @param bounces 设置属性bounces
 */
- (UIScrollView *)initWithFrame:(CGRect)frame backgroundColor:(id)backgroundColor showsScrollIndicator:(BOOL)showsScrollIndicator bounces:(BOOL)bounces delegate:(id)delegate;

/**
 create scrollView by frame + backgroundColor + showsScrollIndicator + bounces + delegate
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 @param showsScrollIndicator 设置属性showsVerticalScrollIndicator和showsHorizontalScrollIndicator
 @param bounces 设置属性bounces
 */
+ (UIScrollView *)scrollViewWithFrame:(CGRect)frame backgroundColor:(id)backgroundColor showsScrollIndicator:(BOOL)showsScrollIndicator bounces:(BOOL)bounces delegate:(id)delegate;

/**
 create scrollView by frame + contentSize
 
 */
- (UIScrollView *)initWithFrame:(CGRect)frame contentSize:(CGSize)contentSize;

/**
 create scrollView by frame + contentSize
 
 */
+ (UIScrollView *)scrollViewWithFrame:(CGRect)frame contentSize:(CGSize)contentSize;

/**
 create scrollView by frame + contentSize + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UIScrollView *)initWithFrame:(CGRect)frame contentSize:(CGSize)contentSize backgroundColor:(id)backgroundColor;

/**
 create scrollView by frame + contentSize + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIScrollView *)scrollViewWithFrame:(CGRect)frame contentSize:(CGSize)contentSize backgroundColor:(id)backgroundColor;

/**
 create scrollView by frame + contentSize + backgroundColor + showsScrollIndicator
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 @param showsScrollIndicator 设置属性showsVerticalScrollIndicator和showsHorizontalScrollIndicator
 */
- (UIScrollView *)initWithFrame:(CGRect)frame contentSize:(CGSize)contentSize backgroundColor:(id)backgroundColor showsScrollIndicator:(BOOL)showsScrollIndicator;

/**
 create scrollView by frame + contentSize + backgroundColor + showsScrollIndicator
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 @param showsScrollIndicator 设置属性showsVerticalScrollIndicator和showsHorizontalScrollIndicator
 */
+ (UIScrollView *)scrollViewWithFrame:(CGRect)frame contentSize:(CGSize)contentSize backgroundColor:(id)backgroundColor showsScrollIndicator:(BOOL)showsScrollIndicator;

/**
 create scrollView by frame + contentSize + backgroundColor + showsScrollIndicator + bounces
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 @param showsScrollIndicator 设置属性showsVerticalScrollIndicator和showsHorizontalScrollIndicator
 @param bounces 设置属性bounces
 */
- (UIScrollView *)initWithFrame:(CGRect)frame contentSize:(CGSize)contentSize backgroundColor:(id)backgroundColor showsScrollIndicator:(BOOL)showsScrollIndicator bounces:(BOOL)bounces;

/**
 create scrollView by frame + contentSize + backgroundColor + showsScrollIndicator + bounces
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 @param showsScrollIndicator 设置属性showsVerticalScrollIndicator和showsHorizontalScrollIndicator
 @param bounces 设置属性bounces
 */
+ (UIScrollView *)scrollViewWithFrame:(CGRect)frame contentSize:(CGSize)contentSize backgroundColor:(nullable id)backgroundColor showsScrollIndicator:(BOOL)showsScrollIndicator bounces:(BOOL)bounces;

/**
 create scrollView by frame + contentSize + backgroundColor + showsScrollIndicator
 + bounces + delegate
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 @param showsScrollIndicator 设置属性showsVerticalScrollIndicator和showsHorizontalScrollIndicator
 @param bounces 设置属性bounces
 */
- (UIScrollView *)initWithFrame:(CGRect)frame contentSize:(CGSize)contentSize backgroundColor:(id)backgroundColor showsScrollIndicator:(BOOL)showsScrollIndicator bounces:(BOOL)bounces delegate:(id)delegate;

/**
 create scrollView by frame + contentSize + backgroundColor + showsScrollIndicator
 + bounces + delegate
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 @param showsScrollIndicator 设置属性showsVerticalScrollIndicator和showsHorizontalScrollIndicator
 @param bounces 设置属性bounces
 */
+ (UIScrollView *)scrollViewWithFrame:(CGRect)frame contentSize:(CGSize)contentSize backgroundColor:(nullable id)backgroundColor showsScrollIndicator:(BOOL)showsScrollIndicator bounces:(BOOL)bounces delegate:(id)delegate;

/**
 create scrollView by center and bounds
 
 */
- (UIScrollView *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds;

/**
 create scrollView by center and bounds
 
 */
+ (UIScrollView *)scrollViewWithCenter:(CGPoint)center bounds:(CGRect)bounds;

/**
 create scrollView by center and bounds + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UIScrollView *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds backgroundColor:(id)backgroundColor;

/**
 create scrollView by center and bounds + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIScrollView *)scrollViewWithCenter:(CGPoint)center bounds:(CGRect)bounds backgroundColor:(id)backgroundColor;

/**
 create scrollView by center and bounds + backgroundColor + showsScrollIndicator
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 @param showsScrollIndicator 设置属性showsVerticalScrollIndicator和showsHorizontalScrollIndicator
 */
- (UIScrollView *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds backgroundColor:(id)backgroundColor showsScrollIndicator:(BOOL)showsScrollIndicator;

/**
 create scrollView by center and bounds + backgroundColor + showsScrollIndicator
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 @param showsScrollIndicator 设置属性showsVerticalScrollIndicator和showsHorizontalScrollIndicator
 */
+ (UIScrollView *)scrollViewWithCenter:(CGPoint)center bounds:(CGRect)bounds backgroundColor:(id)backgroundColor showsScrollIndicator:(BOOL)showsScrollIndicator;

/**
 create scrollView by center and bounds + backgroundColor + showsScrollIndicator + bounces
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 @param showsScrollIndicator 设置属性showsVerticalScrollIndicator和showsHorizontalScrollIndicator
 @param bounces 设置属性bounces
 */
- (UIScrollView *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds backgroundColor:(id)backgroundColor showsScrollIndicator:(BOOL)showsScrollIndicator bounces:(BOOL)bounces;

/**
 create scrollView by center and bounds + backgroundColor + showsScrollIndicator + bounces
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 @param showsScrollIndicator 设置属性showsVerticalScrollIndicator和showsHorizontalScrollIndicator
 @param bounces 设置属性bounces
 */
+ (UIScrollView *)scrollViewWithCenter:(CGPoint)center bounds:(CGRect)bounds backgroundColor:(id)backgroundColor showsScrollIndicator:(BOOL)showsScrollIndicator bounces:(BOOL)bounces;

/**
 create scrollView by center and bounds + backgroundColor + showsScrollIndicator + bounces
 + delegate
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 @param showsScrollIndicator 设置属性showsVerticalScrollIndicator和showsHorizontalScrollIndicator
 @param bounces 设置属性bounces
 */
- (UIScrollView *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds backgroundColor:(id)backgroundColor showsScrollIndicator:(BOOL)showsScrollIndicator bounces:(BOOL)bounces delegate:(id)delegate;

/**
 create scrollView by center and bounds + backgroundColor + showsScrollIndicator + bounces
 + delegate
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 @param showsScrollIndicator 设置属性showsVerticalScrollIndicator和showsHorizontalScrollIndicator
 @param bounces 设置属性bounces
 */
+ (UIScrollView *)scrollViewWithCenter:(CGPoint)center bounds:(CGRect)bounds backgroundColor:(id)backgroundColor showsScrollIndicator:(BOOL)showsScrollIndicator bounces:(BOOL)bounces delegate:(id)delegate;

/**
 create scrollView by center and bounds + contentSize
 
 */
- (UIScrollView *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds contentSize:(CGSize)contentSize;

/**
 create scrollView by center and bounds + contentSize
 
 */
+ (UIScrollView *)scrollViewWithCenter:(CGPoint)center bounds:(CGRect)bounds contentSize:(CGSize)contentSize;

/**
 create scrollView by center and bounds + contentSize + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UIScrollView *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds contentSize:(CGSize)contentSize backgroundColor:(id)backgroundColor;

/**
 create scrollView by center and bounds + contentSize + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIScrollView *)scrollViewWithCenter:(CGPoint)center bounds:(CGRect)bounds contentSize:(CGSize)contentSize backgroundColor:(id)backgroundColor;

/**
 create scrollView by center and bounds + contentSize + backgroundColor + showsScrollIndicator
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 @param showsScrollIndicator 设置属性showsVerticalScrollIndicator和showsHorizontalScrollIndicator
 */
- (UIScrollView *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds contentSize:(CGSize)contentSize backgroundColor:(id)backgroundColor showsScrollIndicator:(BOOL)showsScrollIndicator;

/**
 create scrollView by center and bounds + contentSize + backgroundColor + showsScrollIndicator
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 @param showsScrollIndicator 设置属性showsVerticalScrollIndicator和showsHorizontalScrollIndicator
 */
+ (UIScrollView *)scrollViewWithCenter:(CGPoint)center bounds:(CGRect)bounds contentSize:(CGSize)contentSize backgroundColor:(id)backgroundColor showsScrollIndicator:(BOOL)showsScrollIndicator;

/**
 create scrollView by center and bounds + contentSize + backgroundColor + showsScrollIndicator
 + bounces
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 @param showsScrollIndicator 设置属性showsVerticalScrollIndicator和showsHorizontalScrollIndicator
 @param bounces 设置属性bounces
 */
- (UIScrollView *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds contentSize:(CGSize)contentSize backgroundColor:(id)backgroundColor showsScrollIndicator:(BOOL)showsScrollIndicator bounces:(BOOL)bounces;

/**
 create scrollView by center and bounds + contentSize + backgroundColor + showsScrollIndicator
 + bounces
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 @param showsScrollIndicator 设置属性showsVerticalScrollIndicator和showsHorizontalScrollIndicator
 @param bounces 设置属性bounces
 */
+ (UIScrollView *)scrollViewWithCenter:(CGPoint)center bounds:(CGRect)bounds contentSize:(CGSize)contentSize backgroundColor:(nullable id)backgroundColor showsScrollIndicator:(BOOL)showsScrollIndicator bounces:(BOOL)bounces;

/**
 create scrollView by center and bounds + contentSize + backgroundColor + showsScrollIndicator
 + bounces + delegate
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 @param showsScrollIndicator 设置属性showsVerticalScrollIndicator和showsHorizontalScrollIndicator
 @param bounces 设置属性bounces
 */
- (UIScrollView *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds contentSize:(CGSize)contentSize backgroundColor:(id)backgroundColor showsScrollIndicator:(BOOL)showsScrollIndicator bounces:(BOOL)bounces delegate:(id)delegate;

/**
 create scrollView by center and bounds + contentSize + backgroundColor + showsScrollIndicator
 + bounces + delegate
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 @param showsScrollIndicator 设置属性showsVerticalScrollIndicator和showsHorizontalScrollIndicator
 @param bounces 设置属性bounces
 */
+ (UIScrollView *)scrollViewWithCenter:(CGPoint)center bounds:(CGRect)bounds contentSize:(CGSize)contentSize backgroundColor:(nullable id)backgroundColor showsScrollIndicator:(BOOL)showsScrollIndicator bounces:(BOOL)bounces delegate:(id)delegate;

/**
 添加视图
 
 @param count 添加视图的个数
 @param starPoint 第一个视图的起始点
 @param interval 每张视图的间距
 */
- (void)addViewsCount:(NSInteger)count starPoint:(CGPoint)starPoint interval:(CGFloat)interval viewSize:(CGSize)viewSize;

/**
 添加视图
 
 @param count 添加视图的个数
 @param starPoint 第一个视图的起始点
 @param interval 每张视图的间距
 @param tapBlock 添加的视图的点击事件
 */
- (void)addViewsCount:(NSInteger)count starPoint:(CGPoint)starPoint interval:(CGFloat)interval viewSize:(CGSize)viewSize taps:(nullable void(^)(id sender,NSInteger index))tapBlock;

/**
 添加视图
 
 @param count 添加视图的个数
 @param starPoint 第一个视图的起始点
 @param interval 每张视图的间距
 @param direction 添加视图的方向
 */
- (void)addViewsCount:(NSInteger)count starPoint:(CGPoint)starPoint interval:(CGFloat)interval viewSize:(CGSize)viewSize direction:(Frg_ScrollViewAddViewDirectionType)direction;

/**
 添加视图
 
 @param count 添加视图的个数
 @param starPoint 第一个视图的起始点
 @param interval 每张视图的间距
 @param direction 添加视图的方向
 @param tapBlock 添加的视图的点击事件
 */
- (void)addViewsCount:(NSInteger)count starPoint:(CGPoint)starPoint interval:(CGFloat)interval viewSize:(CGSize)viewSize direction:(Frg_ScrollViewAddViewDirectionType)direction taps:(nullable void(^)(id sender,NSInteger index))tapBlock;

/**
 添加视图
 
 @param count 添加视图的个数
 @param backgroundColors 添加视图的背景色,UIColor或者NSString或者NSNumber格式的集合
                        （如果背景色一样的话，可以在数组里添加一个数据,如@[@"f"])
 @param starPoint 第一个视图的起始点
 @param interval 每张视图的间距
 */
- (void)addViewsCount:(NSInteger)count backgroundColors:(NSArray <id>*)backgroundColors starPoint:(CGPoint)starPoint interval:(CGFloat)interval viewSize:(CGSize)viewSize;

/**
 添加视图
 
 @param count 添加视图的个数
 @param backgroundColors 添加视图的背景色,UIColor或者NSString或者NSNumber格式的集合
                        （如果背景色一样的话，可以在数组里添加一个数据,如@[@"f"])
 @param starPoint 第一个视图的起始点
 @param interval 每张视图的间距
 @param tapBlock 添加的视图的点击事件
 */
- (void)addViewsCount:(NSInteger)count backgroundColors:(NSArray <id>*)backgroundColors starPoint:(CGPoint)starPoint interval:(CGFloat)interval viewSize:(CGSize)viewSize taps:(nullable void(^)(id sender,NSInteger index))tapBlock;

/**
 添加视图
 
 @param count 添加视图的个数
 @param backgroundColors 添加视图的背景色,UIColor或者NSString或者NSNumber格式的集合
                        （如果背景色一样的话，可以在数组里添加一个数据,如@[@"f"])
 @param starPoint 第一个视图的起始点
 @param interval 每张视图的间距
 @param direction 添加视图的方向
 */
- (void)addViewsCount:(NSInteger)count backgroundColors:(NSArray <id>*)backgroundColors starPoint:(CGPoint)starPoint interval:(CGFloat)interval viewSize:(CGSize)viewSize direction:(Frg_ScrollViewAddViewDirectionType)direction;

/**
 添加视图
 
 @param count 添加视图的个数
 @param backgroundColors 添加视图的背景色,UIColor或者NSString或者NSNumber格式的集合
                        （如果背景色一样的话，可以在数组里添加一个数据,如@[@"f"])
 @param starPoint 第一个视图的起始点
 @param interval 每张视图的间距
 @param direction 添加视图的方向
 @param tapBlock 添加的视图的点击事件
 */
- (void)addViewsCount:(NSInteger)count backgroundColors:(NSArray <id>*)backgroundColors starPoint:(CGPoint)starPoint interval:(CGFloat)interval viewSize:(CGSize)viewSize direction:(Frg_ScrollViewAddViewDirectionType)direction taps:(nullable void(^)(id sender,NSInteger index))tapBlock;

/**
 添加图片
 
 @param imagesArray UIImage或者NSString格式的集合
 */
- (void)addimages:(NSArray <id>*)imagesArray;

/**
 添加图片
 
 @param imagesArray UIImage或者NSString格式的集合
 @param tapBlock 添加的图片的点击事件
 */
- (void)addimages:(NSArray <id>*)imagesArray taps:(nullable void(^)(id sender,NSInteger index))tapBlock;

/**
 添加图片
 
 @param imagesArray UIImage或者NSString格式的集合
 @param starPoint 第一张图片的起始点
 @param tapBlock 添加的图片的点击事件
 */
- (void)addimages:(NSArray <id>*)imagesArray starPoint:(CGPoint)starPoint taps:(nullable void(^)(id sender,NSInteger index))tapBlock;

/**
 添加图片
 
 @param imagesArray UIImage或者NSString格式的集合
 @param starPoint 第一张图片的起始点
 @param interval 每张图片的间距
 */
- (void)addimages:(NSArray <id>*)imagesArray starPoint:(CGPoint)starPoint interval:(CGFloat)interval;

/**
 添加图片
 
 @param imagesArray UIImage或者NSString格式的集合
 @param starPoint 第一张图片的起始点
 @param interval 每张图片的间距
 @param tapBlock 添加的图片的点击事件
 */
- (void)addimages:(NSArray <id>*)imagesArray starPoint:(CGPoint)starPoint interval:(CGFloat)interval taps:(nullable void(^)(id sender,NSInteger index))tapBlock;

/**
 添加图片
 
 @param imagesArray UIImage或者NSString格式的集合
 @param starPoint 第一张图片的起始点
 @param interval 每张图片的间距
 @param direction 添加图片的方向
 */
- (void)addimages:(NSArray <id>*)imagesArray starPoint:(CGPoint)starPoint interval:(CGFloat)interval direction:(Frg_ScrollViewAddImageDirectionType)direction;

/**
 添加图片
 
 @param imagesArray UIImage或者NSString格式的集合
 @param starPoint 第一张图片的起始点
 @param interval 每张图片的间距
 @param direction 添加图片的方向
 @param tapBlock 添加的图片的点击事件(index以imagesArray中各图片的位置为准)
 */
- (void)addimages:(NSArray <id>*)imagesArray starPoint:(CGPoint)starPoint interval:(CGFloat)interval direction:(Frg_ScrollViewAddImageDirectionType)direction taps:(nullable void(^)(id sender,NSInteger index))tapBlock;


@end

NS_ASSUME_NONNULL_END
