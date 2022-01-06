//
//  WKWebView+Fragrans.m
//  Fragrans
//
//  Created by qmz on 2019/4/16.
//

#import "WKWebView+Fragrans.h"
#import "NSString+Fragrans.h"

@implementation WKWebView (Fragrans)
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wobjc-designated-initializers"
/**
 create WKWebView by html
 */
- (WKWebView *)initWithHTML:(NSString *)html {
    return [WKWebView webViewWithHTML:html delegate:nil];
}

/**
 create WKWebView by html
 */
+ (WKWebView *)webViewWithHTML:(NSString *)html {
    return [WKWebView webViewWithHTML:html delegate:nil];
}

/**
 create WKWebView by html + delegate
 */
- (WKWebView *)initWithHTML:(NSString *)html delegate:(id)delegate {
    return [WKWebView webViewWithHTML:html delegate:delegate];
}

/**
 create WKWebView by html
 */
+ (WKWebView *)webViewWithHTML:(NSString *)html delegate:(nullable id)delegate {
    WKWebView   *webView = [[WKWebView alloc] initWithFrame:CGRectZero];
    [webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:[NSString safeString:html]]]];
    if (delegate) {
        webView.UIDelegate = delegate;
        webView.navigationDelegate = delegate;
    }
    return webView;
}

/**
 create WKWebView by frame + html
 */
- (WKWebView *)initWithFrame:(CGRect)frame html:(NSString *)html {
    return [WKWebView webViewWithFrame:frame html:html delegate:nil];
}

/**
 create WKWebView by frame + html
 */
+ (WKWebView *)webViewWithFrame:(CGRect)frame html:(NSString *)html {
    return [WKWebView webViewWithFrame:frame html:html delegate:nil];
}

/**
 create WKWebView by frame + html + delegate
 */
- (WKWebView *)initWithFrame:(CGRect)frame html:(NSString *)html delegate:(id)delegate {
    return [WKWebView webViewWithFrame:frame html:html delegate:delegate];
}

/**
 create WKWebView by frame + html + delegate
 */
+ (WKWebView *)webViewWithFrame:(CGRect)frame html:(NSString *)html delegate:(nullable id)delegate {
    WKWebView   *webView = [WKWebView webViewWithHTML:html delegate:delegate];
    webView.frame = frame;
    return webView;
}

/**
 create WKWebView by resource + type
 */
- (WKWebView *)initWithResource:(NSString *)resource type:(NSString *)type {
    return [WKWebView webViewWithResource:resource type:type delegate:nil];
}

/**
 create WKWebView by resource + type
 */
+ (WKWebView *)webViewWithResource:(NSString *)resource type:(NSString *)type {
    return [WKWebView webViewWithResource:resource type:type delegate:nil];
}

/**
 create WKWebView by resource + type + delegate
 */
- (WKWebView *)initWithResource:(NSString *)resource type:(NSString *)type delegate:(id)delegate {
    return [WKWebView webViewWithResource:resource type:type delegate:delegate];
}

/**
 create WKWebView by resource + type + delegate
 */
+ (WKWebView *)webViewWithResource:(NSString *)resource type:(NSString *)type delegate:(nullable id)delegate {
    WKWebView   *webView = [[WKWebView alloc]initWithFrame:CGRectZero];
    NSString   *pathStr = [[NSBundle mainBundle]pathForResource:[NSString safeString:resource] ofType:type];
    NSString   *htmlStr = [NSString stringWithContentsOfFile:pathStr encoding:NSUTF8StringEncoding error:nil];
    [webView loadHTMLString:htmlStr baseURL:[NSURL URLWithString:pathStr]];
    if (delegate) {
        webView.UIDelegate = delegate;
        webView.navigationDelegate = delegate;
    }
    return webView;
}

/**
 create WKWebView by frame + resource + type
 */
- (WKWebView *)initWithFrame:(CGRect)frame resource:(NSString *)resource type:(NSString *)type {
    return [WKWebView webViewWithFrame:frame resource:resource type:type delegate:nil];
}

/**
 create WKWebView by frame + resource + type
 */
+ (WKWebView *)webViewWithFrame:(CGRect)frame resource:(NSString *)resource type:(NSString *)type {
    return [WKWebView webViewWithFrame:frame resource:resource type:type delegate:nil];
}

/**
 create WKWebView by frame + resource + type + delegate
 */
- (WKWebView *)initWithFrame:(CGRect)frame resource:(NSString *)resource type:(NSString *)type delegate:(id)delegate {
    return [WKWebView webViewWithFrame:frame resource:resource type:type delegate:delegate];
}

/**
 create WKWebView by frame + resource + type + delegate
 */
+ (WKWebView *)webViewWithFrame:(CGRect)frame resource:(NSString *)resource type:(NSString *)type delegate:(nullable id)delegate {
    WKWebView   *webView = [WKWebView webViewWithResource:resource type:type delegate:delegate];
    webView.frame = frame;
    return webView;
}
#pragma clang diagnostic pop
@end
