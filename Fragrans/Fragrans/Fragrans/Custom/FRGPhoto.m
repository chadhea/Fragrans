//
//  FRGPhoto.m
//  Fragrans
//
//  Created by qmz on 2019/4/16.
//

#import "FRGPhoto.h"
#import "CustomBridge.h"
@interface FRGPhoto()

@end
@implementation FRGPhoto

/**
 获取图片资源
 */
+ (PHFetchResult *)getPhotoResult {
    PHFetchOptions  *options = [[PHFetchOptions alloc]init];
    options.sortDescriptors = @[[NSSortDescriptor sortDescriptorWithKey:@"creationDate" ascending:NO]];
    PHFetchResult  *assetsFetchResults = [PHAsset fetchAssetsWithOptions:options];
    return assetsFetchResults;
}

/**
 获取没有任何子类型的图片资源的集合
 */
+ (NSArray <PHAsset *>* )getNormalPhoto {
    PHFetchResult  *assetsFetchResults = [self getPhotoResult];
    NSMutableArray  *norArray = @[].mutableCopy;
    for (PHAsset  *asset in assetsFetchResults) {
        PHAssetMediaSubtype  subtype = asset.mediaSubtypes;
        if (subtype == PHAssetMediaSubtypeNone) {
            [norArray addObject:asset];
        }
    }
    return norArray;
}

/**
 获取photoLive图片资源的集合
 */
+ (NSArray <PHAsset *>* )getLivePhoto {
    PHFetchResult  *assetsFetchResults = [self getPhotoResult];
    NSMutableArray  *liveArray = @[].mutableCopy;
    for (PHAsset  *asset in assetsFetchResults) {
        PHAssetMediaSubtype  subtype = asset.mediaSubtypes;
        if (@available(iOS 9.1, *)) {
            if (subtype == PHAssetMediaSubtypePhotoLive) {
                [liveArray addObject:asset];
            }
        }
    }
    return liveArray;
}

/**
 获取视频资源的集合
 */
+ (NSArray <PHAsset *>* )getVideoPhoto {
    PHFetchResult  *assetsFetchResults = [self getPhotoResult];
    NSMutableArray  *videoArray = @[].mutableCopy;
    for (PHAsset  *asset in assetsFetchResults) {
        PHAssetMediaSubtype  subtype = asset.mediaSubtypes;
        if (subtype == PHAssetMediaSubtypeVideoStreamed | subtype == PHAssetMediaSubtypeVideoHighFrameRate | subtype == PHAssetMediaSubtypeVideoTimelapse) {
            [videoArray addObject:asset];
        }
    }
    
    return videoArray;
    
}

/**
 获取截图资源的集合
 */
+ (NSArray <PHAsset *>* )getShotPhoto {
    PHFetchResult  *assetsFetchResults = [self getPhotoResult];
    NSMutableArray  *shotArray = @[].mutableCopy;
    
    for (PHAsset  *asset in assetsFetchResults) {
        PHAssetMediaSubtype  subtype = asset.mediaSubtypes;
        if (@available(iOS 9.0, *)) {
            if (subtype == PHAssetMediaSubtypePhotoScreenshot) {
                [shotArray addObject:asset];
            }
        } else {
            // Fallback on earlier versions
        }
        
    }
    return shotArray;
}

/**
 获取全景图资源的集合
 */
+ (NSArray <PHAsset *>* )getPanoramaPhoto {
    PHFetchResult  *assetsFetchResults = [self getPhotoResult];
    NSMutableArray  *panArray = @[].mutableCopy;
    for (PHAsset  *asset in assetsFetchResults) {
        PHAssetMediaSubtype  subtype = asset.mediaSubtypes;
        if (subtype == PHAssetMediaSubtypePhotoPanorama) {
            [panArray addObject:asset];
        }
    }
    return panArray;
    
}

/**
 获取HDR图片资源的集合
 */
+ (NSArray <PHAsset *>* )getHDRPhoto {
    PHFetchResult  *assetsFetchResults = [self getPhotoResult];
    NSMutableArray  *hdrArray = @[].mutableCopy;
    for (PHAsset  *asset in assetsFetchResults) {
        PHAssetMediaSubtype  subtype = asset.mediaSubtypes;
        if (subtype == PHAssetMediaSubtypePhotoHDR) {
            [hdrArray addObject:asset];
        }
    }
    return hdrArray;
}

/**
 删除图片
 
 @parma asset 删除的图片资源
 @parma result 删除结果的block
 */
+ (void)delPhoto:(PHAsset *)asset result:(void (^)(BOOL success, NSError *error))result {
    [[PHPhotoLibrary sharedPhotoLibrary] performChanges:^{
        [PHAssetChangeRequest deleteAssets:@[asset]];
    } completionHandler:^(BOOL success, NSError *error) {
        if (result) {
            result(success,error);
        }
    }];
}

/**
 添加图片
 
 @parma image 需要添加的图片 UIImage或者NSString格式
 @parma result 添加结果的block
 */
+ (void)addPhoto:(id)image result:(void (^)(BOOL success, NSError *error))result {
    UIImage  *new_image = [CustomBridge safeImage:image];
    if (!new_image) {
        return;
    }
    [[PHPhotoLibrary sharedPhotoLibrary] performChanges:^{
        [PHAssetChangeRequest creationRequestForAssetFromImage:new_image];
    } completionHandler:^(BOOL success, NSError *error) {
        if (result) {
            result(success,error);
        }
    }];
}

/**
 获取图片名称
 */
+ (NSString *)getPhotoName:(PHAsset *)asset {
    return [asset valueForKey:@"filename"];
}

@end
