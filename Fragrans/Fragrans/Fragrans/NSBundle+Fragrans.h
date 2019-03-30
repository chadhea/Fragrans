//
//  NSBundle+Fragrans.h
//  Fragrans
//
//  Created by qmz on 2019/1/30.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN

@interface NSBundle (Fragrans)

/**
 获取bundle中的资源文件
 
 @param resourceName 文件名字
 @param BundleName bundle名字
 @return 返回文件地址
 */
+ (NSString *)pathWithResource:(NSString *)resourceName inBundle:(NSString *)BundleName;

/**
 与当前屏幕尺寸匹配的启动图像
 */
+ (UIImage *)launchImage;

/**
 获取APP的bundleID
 */
+ (NSString *)bundleIdentifier;

/**
 获取APP的名字
 */
+ (NSString *)bundleDisplayName;

/**
 当前APP版本
 */
+ (NSString *)appVersion;

/**
 获取bundle的版本号
 */
+ (NSString *)bundleVersion;

@end

NS_ASSUME_NONNULL_END
