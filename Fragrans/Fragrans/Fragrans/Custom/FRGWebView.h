//
//  FRGWebView.h
//  Fragrans
//
//  Created by qmz on 2019/4/16.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface FRGWebView : UIView
/**
 设置webView是否可以滑动
 */
@property (nonatomic,assign)BOOL   webScrollEnabled;

/**
 设置webView的frame
 默认是view的frame
 */
@property (nonatomic,assign)CGRect  webFrame;

/**
 webView开始加载
 */
@property (nonatomic,copy)void (^starLoad)(void);

/**
 webView完成加载
 */
@property (nonatomic,copy)void (^finishLoad)(void);

/**
 webView加载失败
 */
@property (nonatomic,copy)void (^failLoad)(void);

/**
 webView加载高度
 */
@property (nonatomic,copy)void (^scrollOffHeight)(CGFloat  offHeight);

/**
 webView中的image的点击事件
 */
@property (nonatomic,copy)void (^imageClick)(int index,NSArray  *imageArray);

/**
 当前webView的url
 */
@property (nonatomic,copy)void (^currentURL)(NSString *currentURL);

/**
 当前webView的标题
 */
@property (nonatomic,copy)void (^currentTitle)(NSString *currentTitle);

/**
 @param frame 最终的frame，否则计算高度不准确
 */
- (instancetype)initWithFrame:(CGRect)frame url:(NSString *)url;

/**
 @param frame 最终的frame，否则计算高度不准确
 */
- (instancetype)initWithFrame:(CGRect)frame string:(NSString *)string;

/**
 刷新当前界面url
 */
- (void)refresh;

/**
 重新加载url
 */
- (void)reloadURL:(NSString *)url;

/**
 重新加载string
 */
- (void)reloadString:(NSString *)string;

@end

NS_ASSUME_NONNULL_END
