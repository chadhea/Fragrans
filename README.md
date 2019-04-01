# Fragrans
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

UIView+Fragrans示例
```
UIView   *view = [UIView viewWithFrame:CGRectMake(100, 100, 100, 100) backgroundColor:@9 tap:^(id  _Nonnull sender) {
   //点击事件
}];
[self addSubview:view];
//设置上边圆角
[view setCornerWithTop:20];
```
![uiview_01](https://github.com/chadhea/Fragrans_image/blob/master/UIView/uiview_01.png)
