//
//  UIDevice+Fragrans.h
//  Fragrans
//
//  Created by qmz on 2019/2/14.
//

#import <UIKit/UIKit.h>
#import <Photos/Photos.h>
#import <Contacts/Contacts.h>
#import <AVFoundation/AVCaptureDevice.h>
#import <CoreLocation/CoreLocation.h>
#import <UserNotifications/UserNotifications.h>

NS_ASSUME_NONNULL_BEGIN

#define frgBundleName  [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleName"]

@interface UIDevice (Fragrans)

/**
 检测相册权限
 使用前请在info中添加 Privacy - Photo Library Usage Description属性
 @return 权限状态
 */
+ (PHAuthorizationStatus)photoLibraryAuthorization;

/**
 判断是否打开相册权限
 使用前请在info中添加 Privacy - Photo Library Usage Description属性
 @return 返回结果
 */
+ (BOOL)isCanOpenPhotoLibrary;

/**
 检查相机权限
 使用前请在info中添加 Privacy - Camera Usage Description属性
 @return 权限状态
 */
+ (AVAuthorizationStatus)cameraAuthorization;

/**
 判断是否打开相机权限
 使用前请在info中添加 Privacy - Camera Usage Description属性
 @return 返回结果
 */
+ (BOOL)isCanOpenCamera;

/**
 检查麦克风权限
 使用前请在info中添加 Privacy - Microphone Usage Description属性
 @return 权限状态
 */
+ (AVAuthorizationStatus)microphoneAuthorization;

/**
 判断是否打开麦克风权限
 使用前请在info中添加 Privacy - Microphone Usage Description属性
 @return 返回结果
 */
+ (BOOL)isCanOpenMicrophone;

/**
 检测推送的权限(iOS 10 之后能用)
 
 @return 推送权限状态
 */
+ (UNAuthorizationStatus)userNotificationAuthorization API_AVAILABLE(ios(10.0));

/**
 判断是否打开通知权限
 
 @return 返回结果
 */
+ (BOOL)isCanOpenUserNotification;

/**
 检查通讯录权限(iOS 9 之后能用)
 使用前请在info中添加 Privacy - Contacts Usage Description属性
 @return 返回权限状态
 */
+ (CNAuthorizationStatus)contactAuthorization API_AVAILABLE(ios(9.0));

/**
 是否能访问通讯录
 使用前请在info中添加 Privacy - Contacts Usage Description属性
 @return 返回结果
 */
+ (BOOL)isCanOpenContact;

/**
 跳至系统设置页面
 */
+ (void)openSystemSetting;

/**
 获取设备型号
 */
+ (NSString *)getDeviceName;

/**
 获取原装的设备名称
 */
+ (NSString *)getDeviceStringName;

/**
 获取设备当前网络IP地址
 */
+ (NSString *)getIPAddress;

/**
 获取所有相关IP信息
 */
+ (NSDictionary *)getIPAddresses;

/**
 判断当前网络是否为ipv6
 */
+ (BOOL)isIpv6;

/**
 获取外网地址
 获取失败返回内网地址
 
 */
+ (NSString *)getWANIPAddress;

/**
 获取UUID
 
 @return UUID
 */
+ (NSString *)getDeviceUUID;

/**
 获取广告标识符
 
 @return IDFA
 */
+ (NSString *)getIDFA;

/**
 系统版本
 */
+ (NSString *)systemVersion;

/**
 判断系统版本
 */
+ (BOOL)systemVersion_iOS_8_AndLater;

/**
 判断系统版本
 */
+ (BOOL)systemVersion_iOS_9_AndLater;

/**
 判断系统版本
 */
+ (BOOL)systemVersion_iOS_10_AndLater;

/**
 判断系统版本
 */
+ (BOOL)systemVersion_iOS_11_AndLater;

/**
 判断系统版本
 */
+ (BOOL)systemVersion_iOS_12_AndLater;

/**
 获取区域标志符（非语言标志）
*/
+ (NSString *)localeIdentifier;

/**
 判断设备是否为iPhone
*/
+ (BOOL)isIPhone;

/**
 判断设备是否为iPad
 */
+ (BOOL)isIPad;

/**
 是否为视网膜屏幕
*/
+ (BOOL)isRetina;

/**
 电量
 */
+ (float)batteryLevel;

/**
 电池状态
 */
+ (UIDeviceBatteryState)batteryState;

/**
 系统上次启动时间
*/
+ (NSDate *)getSystemUptime;

/**
 获取CPU总数
*/
+ (NSUInteger)getCPUCount;

/**
 CPU使用总比例
*/
+ (float)getCPUUsage;

/**
 每个CPU使用比例
*/
+ (NSArray *)getPerCPUUsage;

/**
 获取总磁盘空间
*/
+ (long long)totalDiskSpace;

/**
 获取剩余磁盘空间
*/
+ (long long)freeDiskSpace;

/**
 获取已使用磁盘空间
*/
+ (long long)usedDiskSpace;

/**
 获取系统总内存空间
*/
+ (long long)totalMemorySpace;

/**
 获取系统活跃内存空间
*/
+ (long long)activeMemorySpace;

/**
 获取系统不活跃内存空间
*/
+ (long long)inactiveMemorySpace;

/**
 获取系统空闲的内存空间
*/
+ (long long)freeMemorySpace;

/**
 用户可使用内存
*/
+ (float)canUserMemorySpace;

/**
 获取系统已使用的内存空间
*/
+ (long long)usedMemorySpace;

/**
 获取用来存放内核和数据结构的内存
*/
+ (long long)wiredMemorySpace;

/**
 可释放的内存空间：内存吃紧自动释放
*/
+ (long long)purgeableMemorySpace;

/**
 CPU使用频率
*/
+ (float)cpuFrequency;

/**
 CPU总线频率
*/
+ (float)cpuBusFrequency;

/**
 最大Socket缓存区大小
*/
+ (float)maxSocketBufferSize;

/**
 文件占用空间单位转换
 
 @param length 单为bit
 */
+ (NSString *)convertFileSize:(long long)length;



@end

NS_ASSUME_NONNULL_END
