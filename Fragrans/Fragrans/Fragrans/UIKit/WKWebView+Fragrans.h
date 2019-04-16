//
//  WKWebView+Fragrans.h
//  Fragrans
//
//  Created by qmz on 2019/4/16.
//

#import <WebKit/WebKit.h>
NS_ASSUME_NONNULL_BEGIN

@interface WKWebView (Fragrans)

#pragma mark --- 加载外部网页
/**
 create WKWebView by html
 */
- (WKWebView *)initWithHTML:(NSString *)html;

/**
 create WKWebView by html
 */
+ (WKWebView *)webViewWithHTML:(NSString *)html;

/**
 create WKWebView by html + delegate
 */
- (WKWebView *)initWithHTML:(NSString *)html delegate:(id)delegate;

/**
 create WKWebView by html
 */
+ (WKWebView *)webViewWithHTML:(NSString *)html delegate:(nullable id)delegate;

/**
 create WKWebView by frame + html
 */
- (WKWebView *)initWithFrame:(CGRect)frame html:(NSString *)html;

/**
 create WKWebView by frame + html
 */
+ (WKWebView *)webViewWithFrame:(CGRect)frame html:(NSString *)html;

/**
 create WKWebView by frame + html + delegate
 */
- (WKWebView *)initWithFrame:(CGRect)frame html:(NSString *)html delegate:(id)delegate;

/**
 create WKWebView by frame + html + delegate
 */
+ (WKWebView *)webViewWithFrame:(CGRect)frame html:(NSString *)html delegate:(nullable id)delegate;


#pragma mark --- 加载内部html
/**
 create WKWebView by resource + type
 */
- (WKWebView *)initWithResource:(NSString *)resource type:(NSString *)type;

/**
 create WKWebView by resource + type
 */
+ (WKWebView *)webViewWithResource:(NSString *)resource type:(NSString *)type;

/**
 create WKWebView by resource + type + delegate
 */
- (WKWebView *)initWithResource:(NSString *)resource type:(NSString *)type delegate:(id)delegate;

/**
 create WKWebView by resource + type + delegate
 */
+ (WKWebView *)webViewWithResource:(NSString *)resource type:(NSString *)type delegate:(nullable id)delegate;

/**
 create WKWebView by frame + resource + type
 */
- (WKWebView *)initWithFrame:(CGRect)frame resource:(NSString *)resource type:(NSString *)type;

/**
 create WKWebView by frame + resource + type
 */
+ (WKWebView *)webViewWithFrame:(CGRect)frame resource:(NSString *)resource type:(NSString *)type;

/**
 create WKWebView by frame + resource + type + delegate
 */
- (WKWebView *)initWithFrame:(CGRect)frame resource:(NSString *)resource type:(NSString *)type delegate:(id)delegate;

/**
 create WKWebView by frame + resource + type + delegate
 */
+ (WKWebView *)webViewWithFrame:(CGRect)frame resource:(NSString *)resource type:(NSString *)type delegate:(nullable id)delegate;

@end

NS_ASSUME_NONNULL_END
