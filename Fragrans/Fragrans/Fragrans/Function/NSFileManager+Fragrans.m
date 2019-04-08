//
//  NSFileManager+Fragrans.m
//  Fragrans
//
//  Created by qmz on 2019/3/20.
//

#import "NSFileManager+Fragrans.h"
#include <sys/stat.h>
#import "FunctionBridge.h"
@implementation NSFileManager (Fragrans)

/**
 获取Directory的路径
 */
+ (NSString *)homeDirectoryPath{
    return NSHomeDirectory();
}

/**
 获取Documents的路径
 */
+ (NSString *)homeDocumentsPath {
    return [NSString stringWithFormat:@"%@/Documents",[self homeDirectoryPath]];
}

/**
 获取Library的路径
 */
+ (NSString *)homeLibraryPath {
    return [NSString stringWithFormat:@"%@/Library",[self homeDirectoryPath]];
}

/**
 获取缓存的路径
 */
+ (NSString *)homeLibraryCachesPath {
    return [NSString stringWithFormat:@"%@/Caches",[self homeLibraryPath]];
}

/**
 获取Preferences的路径
 */
+ (NSString *)homeLibraryPreferencesPath {
    return [NSString stringWithFormat:@"%@/Preferences",[self homeLibraryPath]];
}

/**
 获取Tmp的路径
 */
+ (NSString *)homeTmpPath {
    return [NSString stringWithFormat:@"%@/tmp",[self homeDirectoryPath]];
}


/**
 删除一个文件
 
 @return 是否删除成功
 */
+ (BOOL)removeFile:(NSString *)filePath {
    filePath = [FunctionBridge safeString:filePath];
    NSFileManager *manager = [NSFileManager defaultManager];
    BOOL find = [manager fileExistsAtPath:filePath];
    if (find) {
        find = [manager removeItemAtPath:filePath error:nil];
    }
    return find;
}

/**
 删除一个文件夹
 
 @return 是否删除成功
 */
+ (BOOL)removeFolder:(NSString *)folderPath {
    folderPath = [FunctionBridge safeString:folderPath];
    NSFileManager *manager = [NSFileManager defaultManager];
    BOOL find = [manager fileExistsAtPath:folderPath];
    if (find) {
        find = [manager removeItemAtPath:folderPath error:nil];
    }
    return find;
}

/**
 创建文件夹
 
 @param path 文件夹的完整路径
 @return 返回路径
 */
+ (NSString *)createDirectory:(NSString *)path {
    path = [FunctionBridge safeString:path];
    if (path.length <= 0) {
        return nil;
    }
    NSFileManager *fileManager = [NSFileManager defaultManager];
    if ([fileManager fileExistsAtPath:path]) {
        return path;
    }
    else {
        @try {
            [[NSFileManager defaultManager]createDirectoryAtPath:path withIntermediateDirectories:YES attributes:nil error:nil];
        }
        @catch (NSException * e){
            return nil;
        }
    }
    return path;
}

/**
 拷贝资源目录文件到caches目录
 
 @return 是否成功
 */
+ (BOOL)copyResourceFileToCachesDirectory:(NSString *)fileName {
    fileName = [FunctionBridge safeString:fileName];
    if (fileName.length <= 0) {
        return NO;
    }
    NSString    *srcPath = [[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:fileName ];
    BOOL bResult = NO;
    NSString  *destPath = [[self homeLibraryCachesPath] stringByAppendingPathComponent: fileName];
    NSFileManager *manager = [NSFileManager defaultManager];
    BOOL find = [manager fileExistsAtPath:destPath];
    if (!find) {
        NSError *error;
        bResult = [manager copyItemAtPath:srcPath toPath:destPath error:&error];
        if (!bResult) {
            NSLog(@"Failed to copy files '%@'.", [error localizedDescription]);
        }
    }
    return bResult;
}

/**
 拷贝资源目录文件到Document目录
 
 @return 是否成功
 */
+ (BOOL)copyResourceFileToDocumentDirectory:(NSString *)fileName {
    fileName = [FunctionBridge safeString:fileName];
    if (fileName.length <= 0) {
        return NO;
    }
    NSString    *srcPath = [[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:fileName];
    BOOL bResult = NO;
    NSString *destPath = [[self homeDocumentsPath] stringByAppendingPathComponent: fileName];
    NSFileManager *manager = [NSFileManager defaultManager];
    BOOL find = [manager fileExistsAtPath:destPath];
    if (!find) {
        NSError *error;
        bResult = [manager copyItemAtPath:srcPath toPath:destPath error:&error];
        if (!bResult) {
            NSLog(@"Failed to copy files '%@'.", [error localizedDescription]);
        }
    }
    return bResult;
}

/**
 拷贝资源目录下子目录到caches目录
 保持子目录结构一致
 
 @return 是否成功
 */
+ (BOOL)copyResourceSubdirectoryToCachesDirectoryPath:(NSString *)subPath {
    subPath = [FunctionBridge safeString:subPath];
    if (subPath.length <= 0) {
        return NO;
    }
    NSFileManager *manager = [NSFileManager defaultManager];
    NSString *srcIconsPath = [[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:subPath];
    NSString *destIconsPath = [[self homeLibraryCachesPath] stringByAppendingPathComponent:subPath];
    [manager createDirectoryAtPath:destIconsPath withIntermediateDirectories:YES attributes:nil error:nil];
    
    for(NSString *subPath in [manager subpathsAtPath:srcIconsPath]) {
        if ([[subPath pathExtension] isEqualToString:@""]) {
            NSString *fullPath = [NSString stringWithFormat:@"%@/%@", destIconsPath, subPath];
            [manager createDirectoryAtPath:fullPath withIntermediateDirectories:YES attributes:nil error:nil];
        }
    }
    NSError *error;
    for (NSString *filename in [manager enumeratorAtPath: srcIconsPath]) {
        if (![[filename pathExtension] isEqualToString:@""]) {
            NSString *desFile = [NSString stringWithFormat:@"%@/%@", destIconsPath, filename];
            BOOL find = [manager fileExistsAtPath:desFile];
            if (!find) {
                NSString *srcFile = [NSString stringWithFormat:@"%@/%@",srcIconsPath,filename];
                BOOL success = [manager copyItemAtPath:srcFile toPath:desFile error:&error];
                if (!success) {
                    NSLog(@"Failed to copy files '%@'.", [error localizedDescription]);
                }
            }
        }
    }
    return YES;
}

/**
 存储图片到指定的目录下
 
 @param directoryPath 图片所在文件夹的存储路径
 @param image 存储图片
 @param imageName 图片名称
 @param imageType 图片类型(支持png、jpg、jpeg)
 */
+ (BOOL)saveImageToDirectoryPath:(NSString *)directoryPath image:(UIImage *)image imageName:(NSString *)imageName imageType:(NSString *)imageType {
    BOOL isDir = NO;
    NSFileManager *fileManager = [NSFileManager defaultManager];
    BOOL existed = [fileManager fileExistsAtPath:directoryPath isDirectory:&isDir];
    if (!existed) {
        [self createDirectory:directoryPath];
        existed = YES;
        isDir = YES;
    }
    BOOL isSaved = NO;
    if ( isDir == YES && existed == YES ) {
        if ([[imageType lowercaseString] isEqualToString:@"png"]) {
            isSaved = [UIImagePNGRepresentation(image) writeToFile:[directoryPath stringByAppendingPathComponent:[NSString stringWithFormat:@"%@.%@", imageName, @"png"]] options:NSAtomicWrite error:nil];
        } else if ([[imageType lowercaseString] isEqualToString:@"jpg"] || [[imageType lowercaseString] isEqualToString:@"jpeg"]) {
            isSaved = [UIImageJPEGRepresentation(image, 1.0) writeToFile:[directoryPath stringByAppendingPathComponent:[NSString stringWithFormat:@"%@.%@", imageName, @"jpg"]] options:NSAtomicWrite error:nil];
        } else {
            NSLog(@"Image Save Failed\nExtension: (%@) is not recognized, use (PNG/JPG)", imageType);
        }
    }
    return isSaved;
}

/**
 读取指定目录下的资源
 
 @param directoryPath 资源完整的存储路径
 */
+ (NSData *)loadResourceByDirectoryPath:(NSString *)directoryPath {
    NSFileManager *fileManager = [NSFileManager defaultManager];
    BOOL fileExisted = [fileManager fileExistsAtPath:directoryPath];
    if (!fileExisted) {
        return nil;
    }
    NSData *imageData = [NSData dataWithContentsOfFile:directoryPath];
    return imageData;
}

/**
读取指定目录下的文件

@param directoryPath 存储路径
@param fileName 文件名称
*/
+ (NSData *)loadDataByDirectoryPath:(NSString *)directoryPath fileName:(NSString *)fileName {
    BOOL isDir = NO;
    NSFileManager *fileManager = [NSFileManager defaultManager];
    BOOL dirExisted = [fileManager fileExistsAtPath:directoryPath isDirectory:&isDir];
    if ( isDir == YES && dirExisted == YES ) {
        NSString *filePath = [directoryPath stringByAppendingString:fileName];
        BOOL fileExisted = [fileManager fileExistsAtPath:filePath];
        if (!fileExisted) {
            return NULL;
        }
        NSData *fileData = [NSData dataWithContentsOfFile:filePath];
        return fileData;
    }
    else {
        return NULL;
    }
}

/**
 获取文件或文件夹占用空间
 */
+ (NSString *)fileSizeAtPath:(NSString*) filePath {
    NSFileManager* manager = [NSFileManager defaultManager];
    long long folderSize = 0;
    if ([manager fileExistsAtPath:filePath]){
        NSFileManager* manager = [NSFileManager defaultManager];
        NSEnumerator *childFilesEnumerator = [[manager subpathsAtPath:filePath] objectEnumerator];
        NSString* fileName;
        
        while ((fileName = [childFilesEnumerator nextObject]) != nil){
            NSString* fileAbsolutePath = [filePath stringByAppendingPathComponent:fileName];
            struct stat st;
            if(lstat([fileAbsolutePath cStringUsingEncoding:NSUTF8StringEncoding], &st) == 0){
                folderSize += st.st_size;
            }
        }
        return  [self convertFileSize:folderSize];
        
    }
    return @"0";
}

/**
 文件占用空间单位转换
 
 @param length 多少B
 */
+ (NSString *)convertFileSize:(long long)length {
    if(length < 1024)
        return [NSString stringWithFormat:@"%luB",(unsigned long)length];
    else if(length >= 1024 && length < 1024*1024)
        return [NSString stringWithFormat:@"%.2fKB",(float)length/1024.0];
    else if(length >= 1024*1024 &&length < 1024*1024*1024)
        return [NSString stringWithFormat:@"%.2fM",(float)length/(1024*1024)];
    else
        return [NSString stringWithFormat:@"%.2fG",(float)length/(1024*1024*1024)];
}
@end
