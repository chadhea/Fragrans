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

UIView+Fragrans示例
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
UILabel+Fragrans示例
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
UITextField+Frafrans示例
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






