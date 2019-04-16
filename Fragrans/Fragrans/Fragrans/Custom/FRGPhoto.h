//
//  FRGPhoto.h
//  Fragrans
//
//  Created by qmz on 2019/4/16.
//

#import <Foundation/Foundation.h>
#import <Photos/Photos.h>
NS_ASSUME_NONNULL_BEGIN

@interface FRGPhoto : NSObject

/**
 获取图片资源
 */
+ (PHFetchResult *)getPhotoResult;

/**
 获取没有任何子类型的图片资源的集合
 */
+ (NSArray <PHAsset *>* )getNormalPhoto;

/**
 获取photoLive图片资源的集合
 */
+ (NSArray <PHAsset *>* )getLivePhoto;

/**
 获取视频资源的集合
 */
+ (NSArray <PHAsset *>* )getVideoPhoto;

/**
 获取截图资源的集合
 */
+ (NSArray <PHAsset *>* )getShotPhoto;

/**
 获取全景图资源的集合
 */
+ (NSArray <PHAsset *>* )getPanoramaPhoto;

/**
 获取HDR图片资源的集合
 */
+ (NSArray <PHAsset *>* )getHDRPhoto;

/**
 删除图片
 
 @parma asset 删除的图片资源
 @parma result 删除结果的block
 */
+ (void)delPhoto:(PHAsset *)asset result:(void (^)(BOOL success, NSError *error))result;

/**
 添加图片
 
 @parma image 需要添加的图片 UIImage或者NSString格式
 @parma result 添加结果的block
 */
+ (void)addPhoto:(id)image result:(void (^)(BOOL success, NSError *error))result;

/**
 获取图片名称
 */
+ (NSString *)getPhotoName:(PHAsset *)asset;

@end

NS_ASSUME_NONNULL_END
