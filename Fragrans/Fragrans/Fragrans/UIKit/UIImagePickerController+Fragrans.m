//
//  UIImagePickerController+Fragrans.m
//  Fragrans
//
//  Created by qmz on 2019/4/9.
//

#import "UIImagePickerController+Fragrans.h"
#import "UIViewController+Fragrans.h"

@implementation UIImagePickerController (Fragrans)

/**
 打开系统相册
 照片库类型
 
 @param delegate 代理
 @param allowsEditing 是否显示截图
 */
+ (UIImagePickerController *)photoLibraryWithDelegate:(id)delegate allowsEditing:(BOOL)allowsEditing {
    return [self pickerControllerWithSourceType:UIImagePickerControllerSourceTypePhotoLibrary delegate:delegate allowsEditing:allowsEditing completion:nil];
}

/**
 打开系统相册
 照片库类型
 
 @param delegate 代理
 @param allowsEditing 是否显示截图
 */
+ (UIImagePickerController *)photoLibraryWithDelegate:(id)delegate allowsEditing:(BOOL)allowsEditing completion:(void(^)(void))completion {
    return [self pickerControllerWithSourceType:UIImagePickerControllerSourceTypePhotoLibrary delegate:delegate allowsEditing:allowsEditing completion:completion];
}

/**
 打开系统相册
 相册类型
 
 @param delegate 代理
 @param allowsEditing 是否显示截图
 */
+ (UIImagePickerController *)savedPhotosAlbumWithDelegate:(id)delegate allowsEditing:(BOOL)allowsEditing {
    return [self pickerControllerWithSourceType:UIImagePickerControllerSourceTypeSavedPhotosAlbum delegate:delegate allowsEditing:allowsEditing completion:nil];
}

/**
 打开系统相册
 相册类型
 
 @param delegate 代理
 @param allowsEditing 是否显示截图
 */
+ (UIImagePickerController *)savedPhotosAlbumWithDelegate:(id)delegate allowsEditing:(BOOL)allowsEditing completion:(void(^)(void))completion {
    return [self pickerControllerWithSourceType:UIImagePickerControllerSourceTypeSavedPhotosAlbum delegate:delegate allowsEditing:allowsEditing completion:completion];
}

/**
 打开系统相册
 相机类型
 
 @param delegate 代理
 @param allowsEditing 是否显示截图
 */
+ (UIImagePickerController *)cameraWithDelegate:(id)delegate allowsEditing:(BOOL)allowsEditing {
    return [self pickerControllerWithSourceType:UIImagePickerControllerSourceTypeCamera delegate:delegate allowsEditing:allowsEditing completion:nil];
}

/**
 打开系统相册
 相机类型
 
 @param delegate 代理
 @param allowsEditing 是否显示截图
 */
+ (UIImagePickerController *)cameraWithDelegate:(id)delegate allowsEditing:(BOOL)allowsEditing completion:(void(^)(void))completion {
    return [self pickerControllerWithSourceType:UIImagePickerControllerSourceTypeCamera delegate:delegate allowsEditing:allowsEditing completion:completion];
}

/**
 打开系统相册
 
 @param sourceType 打开的资源类型
 @param delegate 代理
 @param allowsEditing 是否显示截图
 */
+ (UIImagePickerController *)pickerControllerWithSourceType:(UIImagePickerControllerSourceType)sourceType delegate:(id)delegate allowsEditing:(BOOL)allowsEditing completion:(nullable void(^)(void))completion {
    UIImagePickerController   *imagePickerController = [[UIImagePickerController alloc]init];
    imagePickerController.delegate = delegate;
    imagePickerController.sourceType = sourceType;
    imagePickerController.allowsEditing = allowsEditing;
    [[UIViewController getCurrentVC] presentViewController:imagePickerController animated:YES completion:completion];
    return imagePickerController;
}
@end
