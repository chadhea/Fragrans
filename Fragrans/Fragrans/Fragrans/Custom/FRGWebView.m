//
//  FRGWebView.m
//  Fragrans
//
//  Created by qmz on 2019/4/16.
//

#import "FRGWebView.h"
#import "CustomBridge.h"
@interface FRGWebView ()<UIWebViewDelegate>
@property (nonatomic,copy)NSString           *frg_url;
@property (nonatomic,copy)NSString           *frg_string;
@property (nonatomic,assign)BOOL             isURLLoad;
@property (nonatomic,strong)UIWebView        *frg_webView;
@property (nonatomic,strong)NSMutableArray   *mUrlArray;
@end

@implementation FRGWebView

- (void)setWebScrollEnabled:(BOOL)webScrollEnabled {
    _webScrollEnabled = webScrollEnabled;
    if (self.frg_webView) {
        self.frg_webView.scrollView.scrollEnabled = webScrollEnabled;
    }
}

- (void)setWebFrame:(CGRect)webFrame {
    _webFrame = webFrame;
    if (self.frg_webView) {
        self.frg_webView.frame = CGRectMake(webFrame.origin.x, webFrame.origin.y, webFrame.size.width, webFrame.size.height);
    }
    [self refresh];
}

/**
 @param frame 最终的frame，否则计算高度不准确
 */
- (instancetype)initWithFrame:(CGRect)frame url:(NSString *)url {
    self = [super initWithFrame:frame];
    self.isURLLoad = YES;
    self.frg_url = url;
    if (self) {
        if (self.frg_webView) {
            [self.frg_webView removeFromSuperview];
            self.frg_webView = nil;
        }
        UIWebView *frg_webView = [[UIWebView alloc] initWithFrame:CGRectMake(0, 0, frame.size.width, frame.size.height)];
        if (@available(iOS 11.0, *)) {
            frg_webView.scrollView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
        } else {
            // Fallback on earlier versions
            
        }
        [self addSubview:frg_webView];
        frg_webView.delegate = self;
        self.frg_webView = frg_webView;
        [frg_webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:[CustomBridge safeString:url]]]];
    }
    
    return self;
}

/**
 @param frame 最终的frame，否则计算高度不准确
 */
- (instancetype)initWithFrame:(CGRect)frame string:(NSString *)string {
    self = [super initWithFrame:frame];
    self.isURLLoad = NO;
    self.frg_string = string;
    if (self) {
        if (self.frg_webView) {
            [self.frg_webView removeFromSuperview];
        }
        UIWebView *frg_webView = [[UIWebView alloc] initWithFrame:CGRectMake(0, 0, frame.size.width, frame.size.height)];
        if (@available(iOS 11.0, *)) {
            frg_webView.scrollView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
        } else {
            // Fallback on earlier versions
            
        }
        [self addSubview:frg_webView];
        frg_webView.delegate = self;
        frg_webView.userInteractionEnabled = YES;
        self.frg_webView = frg_webView;
        [frg_webView loadHTMLString:[CustomBridge safeString:string] baseURL:nil];
    }
    return self;
}

- (void)webViewDidStartLoad:(UIWebView *)webView {
    if (self.starLoad) {
        self.starLoad();
    }
}

- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error {
    if (self.failLoad) {
        self.failLoad();
    }
}

- (void)webViewDidFinishLoad:(UIWebView *)webView {
    
    if (self.finishLoad) {
        self.finishLoad();
    }
    NSString *currentURL = [webView stringByEvaluatingJavaScriptFromString:@"document.location.href"];
    if (self.currentURL) {
        self.currentURL(currentURL);
    }
    self.frg_url = currentURL;
    
    NSString *currentTitle = [webView stringByEvaluatingJavaScriptFromString:@"document.title"];
    if (self.currentTitle) {
        self.currentTitle(currentTitle);
    }
    
    CGFloat webViewHeight = [[webView stringByEvaluatingJavaScriptFromString:@"document.body.scrollHeight"] floatValue];
    
    if (self.scrollOffHeight) {
        self.scrollOffHeight(webViewHeight);
    }
    
    NSString *bodyStyleVertical = @"document.getElementsByTagName('body')[0].style.verticalAlign = 'justify';";
    NSString *bodyStyleHorizontal = @"document.getElementsByTagName('body')[0].style.textAlign = 'justify';";
    NSString *mapStyle = @"document.getElementById('mapid').style.margin = 'auto';";
    
    [webView stringByEvaluatingJavaScriptFromString:bodyStyleVertical];
    [webView stringByEvaluatingJavaScriptFromString:bodyStyleHorizontal];
    [webView stringByEvaluatingJavaScriptFromString:mapStyle];
    
    
#pragma mark --- 图片的点击事件
    
    static  NSString * const jsGetImages =
    @"function getImages(){\
    var objs = document.getElementsByTagName(\"img\");\
    var imgScr = '';\
    for(var i=0;i<objs.length;i++){\
    imgScr = imgScr + objs[i].src + '+';\
    };\
    return imgScr;\
    };";
    
    [webView stringByEvaluatingJavaScriptFromString:jsGetImages];
    NSString *urlResurlt = [webView stringByEvaluatingJavaScriptFromString:@"getImages()"];
    _mUrlArray = [NSMutableArray arrayWithArray:[urlResurlt componentsSeparatedByString:@"+"]];
    if (_mUrlArray.count >= 2) {
        [_mUrlArray removeLastObject];
    }
    
    [webView stringByEvaluatingJavaScriptFromString:@"function registerImageClickAction(){\
     var imgs=document.getElementsByTagName('img');\
     var length=imgs.length;\
     for(var i=0;i<length;i++){\
     img=imgs[i];\
     img.onclick=function(){\
     window.location.href='image-preview:'+this.src}\
     }\
     }"];
    [webView stringByEvaluatingJavaScriptFromString:@"registerImageClickAction();"];
    
}

//在这个方法中捕获到图片的点击事件和被点击图片的url
- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType {
    
    //预览图片
    if ([request.URL.scheme isEqualToString:@"image-preview"]) {
        NSString* path = [request.URL.absoluteString substringFromIndex:[@"image-preview:" length]];
        path = [path stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
        int  index = 0;
        for (int i = 0; i < _mUrlArray.count; i ++) {
            if ([_mUrlArray[i] isEqualToString:path]) {
                index = i;
                break;
            }
        }
        
        if (self.imageClick) {
            self.imageClick(index, _mUrlArray);
        }
        return NO;
    }
    return YES;
}

/**
 刷新当前界面url
 */
- (void)refresh {
    if (self.isURLLoad && self.frg_url) {
        [self.frg_webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:[CustomBridge safeString:self.frg_url]]]];
    }else if (self.frg_string) {
        [self.frg_webView loadHTMLString:[CustomBridge safeString:self.frg_string] baseURL:nil];
    }
}

/**
 重新加载url
 */
- (void)reloadURL:(NSString *)url {
    [self.frg_webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:[CustomBridge safeString:[CustomBridge safeString:url]]]]];
}

/**
 重新加载string
 */
- (void)reloadString:(NSString *)string {
    [self.frg_webView loadHTMLString:[CustomBridge safeString:string] baseURL:nil];
}

@end
