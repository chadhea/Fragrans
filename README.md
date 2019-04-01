![fragrans_icon](https://github.com/chadhea/Fragrans_image/blob/master/fragrans_icon.png)
类属性方法扩展辅助工具

Installation with CocoaPods  
Podfile  
To integrate Fragrans into your Xcode project using CocoaPods, specify it in your Podfile:  
```
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '8.0'

target 'TargetName' do
pod 'Fragrans', '~> 0.0.2'
end
```  
部分代码示例  
=

NSURLRequest+Fragrans  
```
[NSURLRequest post_requestWithURL:@"xxx" params:@{} completionHandler:^(NSDictionary * _Nonnull response, NSError * _Nonnull error) {
     //数据解析
}];
```  
NSNetService+Fragrans  
```
//检查网络状态
BOOL net = [NSNetService checkNetWork];
[NSNetService sharedInstance].networkChangeBlock = ^(FRGNetworkStatus status) {
  //实时监听网络状态
};
```

UIView+Fragrans  
```
UIView   *view = [UIView viewWithFrame:CGRectMake(100, 100, 100, 100) backgroundColor:@9 tap:^(id  _Nonnull sender) {
   //点击事件
}];
[self addSubview:view];
//设置上边圆角
[view setCornerWithTop:20];
```
效果  
![uiview_01](https://github.com/chadhea/Fragrans_image/blob/master/UIView/uiview_01.png)  
UILabel+Fragrans  
```
UILabel    *label = [UILabel labelWithFrame:CGRectMake(100, 100, 100, 100) text:@"测试\n换行" font:@20 textColor:@3 backgroundColor:@"f" textAlignment:NSTextAlignmentCenter tap:^(id  _Nonnull sender) {
    //点击事件
}];
[self addSubview:label];
//描边颜色、描边宽度及圆角角度
[label layerBorderColor:@9 width:3 cornerRadius:10];
//设置行间距和字间距
[label lineSpacing:20 wordSpacing:6];
```
效果  
![uilabel_01](https://github.com/chadhea/Fragrans_image/blob/master/UILabel/uilabel_01.png)  
UITextField+Frafrans   
```
UITextField   *textField = [UITextField textFieldWithFrame:CGRectMake(100, 100, 200, 30)  placeholder:@"测试" font:@14 textColor:@3  delegate:self];
[self addSubview:textField];
[textField layerBorderColor:@9 width:1];
//设置placeholder颜色和字体
[textField placeholderColor:[UIColor redColor] placeholderFont:@14];
//限制最多可以输入的字符,并返回长度内字符串
[textField maxLength:10 textStringBlock:^(NSString * _Nonnull textString) {
    //返回长度内字符串
}];
```  
效果  
![textfield_01](https://github.com/chadhea/Fragrans_image/blob/master/UITextField/textfield_01.gif)  
UIButton+Fragrans  
```
UIButton  *button = [UIButton buttonWithCenter:CGPointMake(100, 100) bounds:CGRectMake(0, 0, 150, 100) title:@"测试" font:@"15" titleColor:[UIColor redColor] backgroundColor:@"e" target:self action:@selector(ceshiclick)];
[self addSubview:button];
//设置图片
[button normalImage:@"ceshi_normal" selectImage:@"ceshi_select"];
//设置button的titleLabel和imageView的布局样式，及间距
//FRGButtonEdgeInsetsStyleTop、Bottom、Left、Right、Center
[button layoutButtonWithEdgeInsetsStyle:FRGButtonEdgeInsetsStyleCenter imageTitleSpace:10];
```  
效果  
![button_top](https://github.com/chadhea/Fragrans_image/blob/master/UIButton/button_top.png)![button_bottom](https://github.com/chadhea/Fragrans_image/blob/master/UIButton/button_bottom.png)![button_left](https://github.com/chadhea/Fragrans_image/blob/master/UIButton/button_left.png)![button_right](https://github.com/chadhea/Fragrans_image/blob/master/UIButton/button_right.png)![button_center](https://github.com/chadhea/Fragrans_image/blob/master/UIButton/button_center.png)  







