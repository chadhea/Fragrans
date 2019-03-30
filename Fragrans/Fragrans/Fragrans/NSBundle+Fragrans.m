//
//  NSBundle+Fragrans.m
//  Fragrans
//
//  Created by qmz on 2019/1/30.
//

#import "NSBundle+Fragrans.h"
#import <UIKit/UIKit.h>
@implementation NSBundle (Fragrans)

/**
 获取bundle中的资源文件
 
 @param resourceName 文件名字
 @param BundleName bundle名字
 @return 返回文件地址
 */
+ (NSString *)pathWithResource:(NSString *)resourceName inBundle:(NSString *)BundleName {
    NSString   *bundlePath = [[NSBundle mainBundle]pathForResource:BundleName ofType:@"bundle"];
    return [bundlePath stringByAppendingString:[NSString stringWithFormat:@"/%@",resourceName]];
}

/**
 与当前屏幕尺寸匹配的启动图像
 */
+ (UIImage *)launchImage {
    NSArray *launchImages = [NSBundle mainBundle].infoDictionary[@"UILaunchImages"];
    NSString *sizeString = NSStringFromCGSize([UIScreen mainScreen].bounds.size);
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"UILaunchImageOrientation = 'Portrait' AND UILaunchImageSize = %@", sizeString];
    NSArray *result = [launchImages filteredArrayUsingPredicate:predicate];
    NSString *imageName = result.lastObject[@"UILaunchImageName"];
    return [UIImage imageNamed:imageName];
}

/**
 获取APP的bundleID
 */
+ (NSString *)bundleIdentifier {
    return [NSBundle mainBundle].infoDictionary[@"CFBundleIdentifier"];
}

/**
 获取APP的名字
 */
+ (NSString *)bundleDisplayName {
    return [NSBundle mainBundle].infoDictionary[@"CFBundleDisplayName"];
}

/**
 获取APP版本号
 */
+ (NSString *)appVersion {
    return [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"];
}

/**
 获取bundle的版本号
 */
+ (NSString *)bundleVersion {
    return [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleVersion"];
}



@end
