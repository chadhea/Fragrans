![fragrans_icon](https://github.com/chadhea/Fragrans_image/blob/master/fragrans_icon.png)
类属性与方法扩展及常用方法的封装。

Installation with CocoaPods  
Podfile  
To integrate Fragrans into your Xcode project using CocoaPods, specify it in your Podfile:  
```
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '8.0'

target 'TargetName' do
pod 'Fragrans', '~> 0.2.0'
end
```  
## Architecture  

### UIKit  
- `UIActivityIndicatorView+Fragrans`
- `UIAlertController+Fragrans`
- `UIBarButtonItem+Fragrans`
- `UIButton+Fragrans`
- `UICollectionViewCell+Fragrans`
- `UIImage+Fragrans`
- `UIImageView+Fragrans`
- `UIImagePickerController+Fragrans`
- `UILabel+Fragrans`
- `UIPageControl+Fragrans`
- `UIProgressView+Fragrans`
- `UIRefreshControl+Fragrans`  
- `UIScrollView+Fragrans`
- `UISlider+Fragrans`
- `UISwitch+Fragrans`
- `UITableView+Fragrans`
- `UITapGestureRecognizer+Fragrans`
- `UITextField+Fragrans`
- `UITextView+Fragrans`
- `UIView+Fragrans`
- `UIViewController+Fragrans`  
- `WKWebView+Fragrans`  

### Extend  
- `NSArray+Fragrans`
- `NSBundle+Fragrans`
- `NSData+Fragrans`
- `NSDate+Fragrans`
- `NSDateFormatter+Fragrans`
- `NSDictionary+Fragrans`
- `NSMutableArray+Fragrans`
- `NSMutableAttributedString+Fragrans`
- `NSMutableDictionary+Fragrans`
- `NSMutableString+Fragrans`
- `NSObject+Fragrans`
- `NSString+Fragrans`
- `UIColor+Fragrans`
- `UIDevice+Fragrans`
- `UIFont+Fragrans`
- `UIScreen+Fragrans`

### Function  
- `CABasicAnimation+Fragrans`
- `CALayer+Fragrans`
- `NSFileManager+Fragrans`
- `NSNetService+Fragrans`
- `NSNetServiceBrowser+Fragrans`
- `NSURLRequest+Fragrans`
- `NSURLSession+Fragrans`  

### Custom  
- `FragransDefine`
- `FRGAccountInfo`
- `FRGAdapter`
- `FRGAlertView`
- `FRGPhoto`
- `FRGWebView`


部分代码示例  
=

### UITextField+Frafrans   
```objective-c
UITextField   *textField = [UITextField textFieldWithFrame:CGRectMake(100, 100, 200, 30) placeholder:@"测试" font:@14 textColor:@3 delegate:self];
[self addSubview:textField];
[textField layerBorderColor:@9 width:1];
//设置placeholder颜色和字体
[textField placeholderColor:[UIColor redColor] placeholderFont:@14];
//限制最多可以输入的字符,并返回长度内字符串
[textField maxLength:10 textStringBlock:^(NSString * _Nonnull textString) {
    //返回长度内字符串
}];
```  
![textfield_01](https://github.com/chadhea/Fragrans_image/blob/master/UITextField/textfield_01.gif)  
### UIView+Fragrans  
```objective-c
UIView   *view = [UIView viewWithFrame:CGRectMake(100, 100, 100, 100) backgroundColor:@9 tap:^(id  _Nonnull sender) {
     //点击事件
}];
[self addSubview:view];
//设置上边圆角
[view setCornerWithTop:20];
//设置渐变色
view.backgroundColor = [UIColor gradientForLeftToRightWithColors:@[[UIColor cyanColor],[UIColor blueColor],@9] width:50];
```  
```objective-c
- (void)drawRect:(CGRect)rect {
//drawRect重绘
/*
//画线
[UIView drawLinePointArray:@[frg_kValueWithPoint(100, 300),frg_kValueWithPoint(200, 300),frg_kValueWithPoint(200,200),frg_kValueWithPoint(100, 300)]lineWidth:3 strokeColor:[UIColor yellowColor]fillColor:[UIColor gradientForLeftToRightFromColor:[UIColor cyanColor] toColor:[UIColor redColor]width:100]];
*/
/*
//画曲线
[UIView drawCurveCenter:CGPointMake(200, 200)radius:60 startAngle:0 endAngle:M_PI clockwise:1 lineWidth:40 lineColor:[UIColor gradientForTopToBottomFromColor:[UIColor blueColor] toColor:[UIColor magentaColor]height:15] round:YES];
*/
/*
//画圆
[UIView drawCircleFrame:CGRectMake(100, 100, 100, 70) color:[UIColor gradientForLeftToRightWithColors:@[[UIColor redColor],[UIColor blueColor],[UIColor cyanColor],[UIColor brownColor],@9,[UIColor greenColor],[UIColor orangeColor]] width:100]];
*/
}
```   
### CABasicAnimation+Fragrans  
```objective-c
for (int i = 0; i < 3; i ++) {
        UIView   *view = [UIView viewWithFrame:CGRectMake(30 + 110 * i, 100, 80, 80) 
        backgroundColor:[UIColor gradientForLeftToRightWithColors:@[[UIColor randomColor],[UIColor randomColor],[UIColor randomColor],[UIColor randomColor]] width:80]];
        [self addSubview:view];
        if (i == 0) {
            //y轴旋转动画
            [view.layer addAnimation:[CABasicAnimation yAxisRotateWithFromValue:0 toValue:M_PI * 2 repeatCount:MAXFLOAT duration:3 autoreverses:NO] forKey:@"animate_1"];
        }else if (i == 1) {
            //x轴旋转动画
            [view.layer addAnimation:[CABasicAnimation xAxisRotateWithFromValue:0 toValue:M_PI * 2 repeatCount:MAXFLOAT duration:3 autoreverses:NO] forKey:@"animate_2"];
        }else {
            //平面旋转动画
            [view.layer addAnimation:[CABasicAnimation planeRotateWithFromValue:0 toValue:M_PI * 2 repeatCount:MAXFLOAT duration:3 autoreverses:NO] forKey:@"animate_3"];
        }
    }
```    
### UILabel+Fragrans  
```objective-c
UILabel    *label = [UILabel labelWithFrame:CGRectMake(100, 100, 100, 100) text:@"测试\n换行" font:@20 textColor:@3 backgroundColor:@"f" textAlignment:NSTextAlignmentCenter tap:^(id  _Nonnull sender) {
    //点击事件
}];
[self addSubview:label];
//描边颜色、描边宽度及圆角角度
[label layerBorderColor:@9 width:3 cornerRadius:10];
//设置行间距和字间距
[label lineSpacing:20 wordSpacing:6];
```
![uilabel_01](https://github.com/chadhea/Fragrans_image/blob/master/UILabel/uilabel_01.png)  

### UIButton+Fragrans  
```objective-c
UIButton  *button = [UIButton buttonWithCenter:CGPointMake(100, 100) bounds:CGRectMake(0, 0, 150, 100) title:@"测试" font:@"15" titleColor:[UIColor redColor]backgroundColor:@"e" target:self action:@selector(ceshiclick)];
[self addSubview:button];
//设置图片
[button normalImage:@"ceshi_normal" selectImage:@"ceshi_select"];
//设置button的titleLabel和imageView的布局样式，及间距
//FRGButtonEdgeInsetsStyleTop、Bottom、Left、Right、Center
[button layoutButtonWithEdgeInsetsStyle:FRGButtonEdgeInsetsStyleCenter imageTitleSpace:10];
```  
![button_top](https://github.com/chadhea/Fragrans_image/blob/master/UIButton/button_top.png)
![button_bottom](https://github.com/chadhea/Fragrans_image/blob/master/UIButton/button_bottom.png)
![button_left](https://github.com/chadhea/Fragrans_image/blob/master/UIButton/button_left.png)
![button_right](https://github.com/chadhea/Fragrans_image/blob/master/UIButton/button_right.png)
![button_center](https://github.com/chadhea/Fragrans_image/blob/master/UIButton/button_center.png)  

### NSURLRequest+Fragrans  
```objective-c
//get
[NSURLRequest get_requestWithURL:@"" params:nil completionHandler:^(NSDictionary * _Nonnull response, NSError * _Nonnull error) {
     //数据解析
}];
//post
[NSURLRequest post_requestWithURL:@"xxx" params:@{} completionHandler:^(NSDictionary * _Nonnull response, NSError * _Nonnull error) {
     //数据解析
}];
```  
### NSNetService+Fragrans  
```objective-c
//检查网络状态
BOOL net = [NSNetService checkNetWork];
[NSNetService sharedInstance].networkChangeBlock = ^(FRGNetworkStatus status) {
  //实时监听网络状态
};
```  
### UIDevice+Fragrans  
```objective-c
[UIDevice getDeviceName];//获取设备型号  
[UIDevice getDeviceStringName];//获取原装的设备名称  
[UIDevice getIPAddress];//获取设备当前网络IP地址  
[UIDevice getIPAddresses];//获取所有相关IP信息  
[UIDevice isIpv6];//判断当前网络是否为ipv6  
[UIDevice getWANIPAddress];//获取外网地址,获取失败返回内网地址  
[UIDevice getDeviceUUID];//获取UUID  
[UIDevice getIDFA];//获取广告标识符  
[UIDevice systemVersion];//系统版本  
[UIDevice systemVersion_iOS_12_AndLater];//判断系统版本  
[UIDevice batteryLevel];//电量  
[UIDevice getSystemUptime];//系统上次启动时间  
[UIDevice getCPUCount];//获取CPU总数  
[UIDevice getCPUUsage];//CPU使用总比例  
[UIDevice getPerCPUUsage];//每个CPU使用比例  
[UIDevice totalDiskSpace];//获取总磁盘空间  
[UIDevice freeDiskSpace];//获取剩余磁盘空间  
[UIDevice totalMemorySpace];//获取系统总内存空间  
[UIDevice cpuFrequency];//CPU使用频率  
...
```  
### NSFileManager+Fragrans  
```objective-c
[NSFileManager homeDirectoryPath];//获取Directory的路径  
[NSFileManager removeFile:@"xx"];//删除一个文件  
[NSFileManager createDirectory:@"xx"];//创建文件夹  
[NSFileManager copyResourceFileToCachesDirectory:@"xx"];//拷贝资源目录文件到caches目录  
[NSFileManager saveImageToDirectoryPath:@"xx" image:[UIImage imageNamed:@"ceshi"] imageName:@"ceshi" imageType:@"png"];//存储图片到指定的目录下  
[NSFileManager loadResourceByDirectoryPath:@"xx"];//获取指定目录下的资源  
[NSFileManager fileSizeAtPath:@"xx"];//获取文件或者文件夹占用空间（单位跟随文件大小变化）  
...
```  
### UIPageControl+Fragrans  
```objective-c
UIPageControl   *pageControl = [UIPageControl pageControlWithFrame:CGRectMake(30, 100, 200, 30) numberOfPages:10 currentPage:3 pageIndicatorTintColor:@8 currentPageIndicatorTintColor:@"eb3223" target:self action:@selector(pageEvent:)];
pageControl.backgroundColor = [UIColor colorWithHexString:@"e"];
[self addSubview:pageControl];
```  

### NSString+Fragrans  
```objective-c
//对字符串进行加密和解密,如：
[NSString encrypt_md5With:@"xxx"];//md5加密
NSString *key = @"key";//加密解密的key
NSString *jiami_str = [NSString  encryptAESWithString:@"xxx" secretKey:key];//AES加密
[NSString decryptAESWithString:jiami_str secretKey:key];//AES解密,返回原字符串
//过滤特殊的字符
[NSString filterHTML:@"xxx"];//去除html标签对
[NSString filterEmoji:@"xxx"];//去除emoji表情
```   
### UISlider+Fragrans  
```objective-c
UISlider   *slider = [UISlider sliderWithFrame:CGRectMake(100, 100, 100, 30) value:50 minimumValue:0 maximumValue:100 thumbTintColor:[UIColor blueColor] minimumTrackTintColor:[UIColor cyanColor] maximumTrackTintColor:[UIColor redColor] target:self action:@selector(sliderEvent:)];
[self addSubview:slider];
```   

### UISwitch+Fragrans  
```objective-c
UISwitch   *frg_switch = [UISwitch switchWithStarPoint:CGPointMake(100, 100) thumbTintColor:[UIColor greenColor] onTintColor:[UIColor yellowColor] tintColor:[UIColor magentaColor] target:self action:@selector(switchEvent:)];
[self addSubview:frg_switch];
```  
![switch_01](https://github.com/chadhea/Fragrans_image/blob/master/UISwitch/switch_01.gif)  

### NSDateFormatter+Fragrans  
```objective-c
[NSDateFormatter getCurrentTimeStamp];//获取当前系统时间戳
NSString   *sp = [NSDateFormatter timeStampWithTime:@"2019-01-01 06:00:00" formatter:@"yyyy-MM-dd HH:mm:ss"];//时间转时间戳
[NSDateFormatter timeWithTimeStamp:sp formatter:@"yyyy-MM-dd HH:mm:ss"];////时间戳转时间 + 格式
[NSDateFormatter timeWithDate:[NSDate date] format:@"yyyy-MM-dd"];//时间转化
    
//快速获取固定格式时间
[NSDateFormatter currentTime];//获取当前时间（24小时
[NSDateFormatter timeShangXiaWu];//获取当前时间（上午+下午）
[NSDateFormatter timeAM_PM];//获取当前时间（AM+PM）
[NSDateFormatter timeYMD];//获取当前时间（yyyy-MM-dd）
[NSDateFormatter timeYMD_Hms];//获取当前时间（yyyy-MM-dd hh:mm:ss）
[NSDateFormatter timeYMD_Hms_S];//获取当前时间（yyyy-MM-dd hh:mm:ss.SSS）
[NSDateFormatter currentWeekTime];//获取当前星期
[NSDateFormatter currentHourTime];//获取当前小时
[NSDateFormatter currentDataTime];//获取当前几号
```  
### UITextView+Fragrans  
```objective-c
UITextView   *textView = [UITextView textViewWithFrame:CGRectMake(30, 100, 160, 60) 
text:@"" font:@15 textColor:@3 backgroundColor:@"e" delegate:self];
[self addSubview:textView];
//设置placeholder
[textView placeholder:@"测试"];
- (void)textViewDidChange:(UITextView *)textView {
     //设置最大可输入长度，并返回长度内字符串
    NSString  *str = [textView frg_textViewDidChangeWithMaxLength:10];
}
```  
![textview_01](https://github.com/chadhea/Fragrans_image/blob/master/UITextView/textview_01.gif)  
### UIScrollView+Fragrans  
```objective-c
UIScrollView   *scroll = [UIScrollView scrollViewWithFrame:CGRectMake(10, 100, [UIScreen screenWidth] - 20, 80) contentSize:CGSizeZero backgroundColor:@"c" showsScrollIndicator:NO bounces:YES delegate:self];
[self addSubview:scroll];
//scroll上添加图片,contentSize属性自动适应
[scroll addimages:@[@"ceshi_normal",@"ceshi_normal",@"ceshi_normal",@"ceshi_normal",@"ceshi_normal"] starPoint:CGPointMake(10, 10) interval:10 direction:Frg_ScrollViewAddImageDirectionType_Horizontal taps:^(id  _Nonnull sender, NSInteger index) {
   //每张图片的点击事件
        
}];
```  
![scroll_01](https://github.com/chadhea/Fragrans_image/blob/master/UIScrollView/scroll_01.gif)  
### UIActivityIndicatorView+Fragrans  
```objective-c
//自由控制中间动画部分的大小
UIActivityIndicatorView   *activityView = [UIActivityIndicatorView activityIndicatorViewWithFrame:CGRectMake(100, 100, 100, 100) hudSize:CGSizeMake(70, 70) hudColor:[UIColor blueColor] backgroundColor:@9 startAnimate:YES];
[self addSubview:activityView];
```  
![uiview_07](https://github.com/chadhea/Fragrans_image/blob/master/UIView/uiview_07.png)  
### UIRefreshControl+Fragrans  
```objective-c  
if (@available(iOS 10.0, *)) {
FRG_WEAKSELF
self.scroll.refreshControl = [[UIRefreshControl alloc] initWithTintColor:[UIColor redColor] attributedTitle:[[NSAttributedString alloc]initWithString:@"测试"] startRefresh:^{
//开始刷新的回调
FRG_STRONGSELF
[strongSelf.scroll.refreshControl endRefreshing];
}];
} else {
// Fallback on earlier versions
}
```  
### FRGAccountInfo
```objective-c
 //获取本地存储对象
FRGAccountInfo   *accountInfo = [FRGAccountInfo shareAccountInfo];
//对本地对象进行赋值
accountInfo.nickname = @"测试";
accountInfo.userID = @"000";
accountInfo.headPic = @"xxx";
//更新本地对象
[accountInfo archiverAccount];
```  
### FRGAlertView  
```objective-c
[FRGAlertView alertWithTitle:@"测试" message:@"这是一个弹框" preferredStyle:UIAlertControllerStyleAlert actionTitles:@[@"一",@"二",@"三"] styles:@[@(UIAlertActionStyleDestructive),@(UIAlertActionStyleDefault),@(UIAlertActionStyleCancel)] handler:^(UIAlertAction * _Nonnull action, NSInteger index) {
     //点击事件
}];
```  
### FRGPhoto
```objective-c
//获取没有任何子类型的图片资源的集合
[FRGPhoto getNormalPhoto];
//获取photoLive图片资源的集合
[FRGPhoto getLivePhoto];
//获取视频资源的集合
[FRGPhoto getVideoPhoto];
//获取截图资源的集合
[FRGPhoto getShotPhoto];
//获取全景图资源的集合
[FRGPhoto getPanoramaPhoto];
//获取HDR图片资源的集合
[FRGPhoto getHDRPhoto];
//删除照片
[FRGPhoto delPhoto:[[FRGPhoto getHDRPhoto]firstObject] result:^(BOOL success, NSError * _Nonnull error) {
    //删除照片结果
}];
//添加照片
[FRGPhoto addPhoto:@"ceshi_image" result:^(BOOL success, NSError * _Nonnull error) {
    //添加照片结果
}];
```  
### FRGWebView
```objective-c
FRGWebView   *webView = [[FRGWebView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen screenWidth], [UIScreen screenHeight]) url:@"xxx"];
[self addSubview:webView];
webView.starLoad = ^{
    //开始加载
};
webView.failLoad = ^{
  //加载失败
};
webView.finishLoad = ^{
  //加载完成
};
webView.scrollOffHeight = ^(CGFloat offHeight) {
  //webView加载高度
};
webView.imageClick = ^(int index, NSArray * _Nonnull imageArray) {
  //图片的点击事件
};
webView.currentURL = ^(NSString * _Nonnull currentURL) {
  //当前的url
};
webView.currentTitle = ^(NSString * _Nonnull currentTitle) {
  //当前标题
};
//刷新webview
[webView refresh];
```





