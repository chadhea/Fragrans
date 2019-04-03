//
//  NSFileManager+Fragrans.h
//  Fragrans
//
//  Created by qmz on 2019/3/20.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN

@interface NSFileManager (Fragrans)

/**
 获取Directory的路径
 */
+ (NSString *)homeDirectoryPath;

/**
 获取Documents的路径
 */
+ (NSString *)homeDocumentsPath;

/**
 获取Library的路径
 */
+ (NSString *)homeLibraryPath;

/**
 获取缓存的路径
 */
+ (NSString *)homeLibraryCachesPath;

/**
 获取Preferences的路径
 */
+ (NSString *)homeLibraryPreferencesPath;

/**
 获取Tmp的路径
 */
+ (NSString *)homeTmpPath;

/**
 删除一个文件
 
 @param filePath 文件完整路径
 @return 是否删除成功
 */
+ (BOOL)removeFile:(NSString *)filePath;

/**
 删除一个文件夹
 
 @param folderPath 文件夹完整路径
 @return 是否删除成功
 */
+ (BOOL)removeFolder:(NSString *)folderPath;

/**
 创建文件夹
 
 @param path 文件夹的完整路径
 @return 返回路径
 */
+ (NSString *)createDirectory:(NSString *)path;

/**
 拷贝资源目录文件到caches目录
 
 @return 是否成功
 */
+ (BOOL)copyResourceFileToCachesDirectory:(NSString *)fileName;

/**
 拷贝资源目录文件到Document目录
 
 @return 是否成功
 */
+ (BOOL)copyResourceFileToDocumentDirectory:(NSString *)fileName;

/**
 拷贝资源目录下子目录到caches目录
 保持子目录结构一致
 
 @return 是否成功
 */
+ (BOOL)copyResourceSubdirectoryToCachesDirectoryPath:(NSString *)subPath;

/**
 存储图片到指定的目录下
 
 @param directoryPath 图片所在文件夹的存储路径
 @param image 存储图片
 @param imageName 图片名称
 @param imageType 图片类型(支持png、jpg、jpeg)
 */
+ (BOOL)saveImageToDirectoryPath:(NSString *)directoryPath image:(UIImage *)image imageName:(NSString *)imageName imageType:(NSString *)imageType;

/**
 获取指定目录下的资源
 
 @param directoryPath 资源完整的存储路径
 */
+ (NSData *)loadResourceByDirectoryPath:(NSString *)directoryPath;

/**
 读取指定目录下的文件
 
 @param directoryPath 存储路径
 @param fileName 文件名称
 */
+ (NSData *)loadDataByDirectoryPath:(NSString *)directoryPath fileName:(NSString *)fileName ;

/**
 获取文件或者文件夹占用空间（单位跟随文件大小变化）
 */
+ (NSString *)fileSizeAtPath:(NSString*) filePath;

/**
 文件占用空间单位转换
 
 @param length 单为bit
 */
+ (NSString *)convertFileSize:(long long)length;






@end

NS_ASSUME_NONNULL_END
