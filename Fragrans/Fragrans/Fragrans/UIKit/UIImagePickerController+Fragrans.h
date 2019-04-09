//
//  UIImagePickerController+Fragrans.h
//  Fragrans
//
//  Created by qmz on 2019/4/9.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImagePickerController (Fragrans)

/**
 打开系统相册
 照片库类型
 
 @param delegate 代理
 @param allowsEditing 是否显示截图
 */
+ (UIImagePickerController *)photoLibraryWithDelegate:(id)delegate allowsEditing:(BOOL)allowsEditing;

/**
 打开系统相册
 照片库类型
 
 @param delegate 代理
 @param allowsEditing 是否显示截图
 */
+ (UIImagePickerController *)photoLibraryWithDelegate:(id)delegate allowsEditing:(BOOL)allowsEditing completion:(void(^)(void))completion;

/**
 打开系统相册
 相册类型
 
 @param delegate 代理
 @param allowsEditing 是否显示截图
 */
+ (UIImagePickerController *)savedPhotosAlbumWithDelegate:(id)delegate allowsEditing:(BOOL)allowsEditing;

/**
 打开系统相册
 相册类型
 
 @param delegate 代理
 @param allowsEditing 是否显示截图
 */
+ (UIImagePickerController *)savedPhotosAlbumWithDelegate:(id)delegate allowsEditing:(BOOL)allowsEditing completion:(void(^)(void))completion;

/**
 打开系统相册
 相机类型
 
 @param delegate 代理
 @param allowsEditing 是否显示截图
 */
+ (UIImagePickerController *)cameraWithDelegate:(id)delegate allowsEditing:(BOOL)allowsEditing;

/**
 打开系统相册
 相机类型
 
 @param delegate 代理
 @param allowsEditing 是否显示截图
 */
+ (UIImagePickerController *)cameraWithDelegate:(id)delegate allowsEditing:(BOOL)allowsEditing completion:(void(^)(void))completion;

/**
 打开系统相册
 
 @param sourceType 打开的资源类型
 @param delegate 代理
 @param allowsEditing 是否显示截图
 */
+ (UIImagePickerController *)pickerControllerWithSourceType:(UIImagePickerControllerSourceType)sourceType delegate:(id)delegate allowsEditing:(BOOL)allowsEditing completion:(nullable void(^)(void))completion;

@end

NS_ASSUME_NONNULL_END
