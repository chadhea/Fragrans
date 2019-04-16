//
//  UIDevice+Fragrans.m
//  Fragrans
//
//  Created by qmz on 2019/2/14.
//

#import "UIDevice+Fragrans.h"
#import <AddressBook/AddressBook.h>
#import <SystemConfiguration/CaptiveNetwork.h>
#import <sys/utsname.h>
#include <ifaddrs.h>
#include <arpa/inet.h>
#include <net/if.h>
#include <sys/mount.h>
#import <sys/sysctl.h>
#import <mach/mach.h>
#import <AdSupport/AdSupport.h>

#define IOS_CELLULAR    @"pdp_ip0"
#define IOS_WIFI        @"en0"
#define IOS_VPN       @"utun0"
#define IP_ADDR_IPv4    @"ipv4"
#define IP_ADDR_IPv6    @"ipv6"


typedef enum : NSUInteger {
    FRGMemoryTypeTotal = 0,//总的
    FRGMemoryTypeFree,     //剩余
    FRGMemoryTypeUsed,     //已用
    FRGMemoryTypeActive,   //活跃
    FRGMemoryTypeInactive, //不活跃
    FRGMemoryTypeWired,    //存放内核和数据结构
    FRGMemoryTypePurgeable  //可释放的
} FRGMemoryType;

@implementation UIDevice (Fragrans)

/**
 检测相册权限
 使用前请在info中添加 Privacy - Photo Library Usage Description属性
 @return 权限状态
 */
+ (PHAuthorizationStatus)photoLibraryAuthorization {
    PHAuthorizationStatus   authStatus = [PHPhotoLibrary authorizationStatus];
    return authStatus;
}

/**
 判断是否打开相册权限
 使用前请在info中添加 Privacy - Photo Library Usage Description属性
 @return 返回结果
 */
+ (BOOL)isCanOpenPhotoLibrary {
    PHAuthorizationStatus   authStatus = [PHPhotoLibrary authorizationStatus];
    if(authStatus == PHAuthorizationStatusNotDetermined) {
        dispatch_semaphore_t sema = dispatch_semaphore_create(0);
        [PHPhotoLibrary requestAuthorization:^(PHAuthorizationStatus status) {
            dispatch_semaphore_signal(sema);
        }];
        dispatch_semaphore_wait(sema, DISPATCH_TIME_FOREVER);
    }
    authStatus = [PHPhotoLibrary authorizationStatus];
    if (authStatus == PHAuthorizationStatusAuthorized) {
        return YES;
    }
    //未授权
    return NO;
}

/**
 检查相机权限
 使用前请在info中添加 Privacy - Camera Usage Description属性
 @return 权限状态
 */
+ (AVAuthorizationStatus)cameraAuthorization {
    AVAuthorizationStatus status = [AVCaptureDevice authorizationStatusForMediaType:AVMediaTypeVideo];
    return status;
}

/**
 判断是否打开相机权限
 使用前请在info中添加 Privacy - Camera Usage Description属性
 @return 返回结果
 */
+ (BOOL)isCanOpenCamera {
    if (![UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
        //该设备不支持照相功能
        return NO;
    }
    AVAuthorizationStatus   status = [AVCaptureDevice authorizationStatusForMediaType:AVMediaTypeVideo];
    if (status == AVAuthorizationStatusNotDetermined) {
        dispatch_semaphore_t sema = dispatch_semaphore_create(0);
        [AVCaptureDevice requestAccessForMediaType:AVMediaTypeVideo completionHandler:^(BOOL granted) {
            dispatch_semaphore_signal(sema);
        }];
        dispatch_semaphore_wait(sema, DISPATCH_TIME_FOREVER);
    }
    status = [AVCaptureDevice authorizationStatusForMediaType:AVMediaTypeVideo];
    if (status == AVAuthorizationStatusAuthorized) {
        return YES;
    }
    //未授权
    return NO;
}

/**
 检查麦克风权限
 使用前请在info中添加 Privacy - Microphone Usage Description属性
 @return 权限状态
 */
+ (AVAuthorizationStatus)microphoneAuthorization {
    AVAuthorizationStatus   status = [AVCaptureDevice authorizationStatusForMediaType:AVMediaTypeAudio];
    return status;
}

/**
 判断是否打开麦克风权限
 使用前请在info中添加 Privacy - Microphone Usage Description属性
 @return 返回结果
 */
+ (BOOL)isCanOpenMicrophone {
    AVAuthorizationStatus   status = [AVCaptureDevice authorizationStatusForMediaType:AVMediaTypeAudio];
    if (status == AVAuthorizationStatusNotDetermined) {
        dispatch_semaphore_t sema = dispatch_semaphore_create(0);
        [AVCaptureDevice requestAccessForMediaType:AVMediaTypeAudio completionHandler:^(BOOL granted) {
            dispatch_semaphore_signal(sema);
        }];
        dispatch_semaphore_wait(sema, DISPATCH_TIME_FOREVER);
    }
    status = [AVCaptureDevice authorizationStatusForMediaType:AVMediaTypeAudio];
    if (status == AVAuthorizationStatusAuthorized) {
        return YES;
    }
    //未授权
    return NO;
}

/**
 检测推送的权限(iOS 10 之后能用)
 
 @return 推送权限状态
 */
+ (UNAuthorizationStatus)userNotificationAuthorization API_AVAILABLE(ios(10.0)) {
    __block  UNAuthorizationStatus  status;
    dispatch_semaphore_t  sema = dispatch_semaphore_create(0);
    UNUserNotificationCenter   *center = [UNUserNotificationCenter currentNotificationCenter];
    [center getNotificationSettingsWithCompletionHandler:^(UNNotificationSettings * _Nonnull settings) {
        status = settings.authorizationStatus;
        dispatch_semaphore_signal(sema);
    }];
    dispatch_semaphore_wait(sema, DISPATCH_TIME_FOREVER);
    return status;
}

/**
 判断是否打开通知权限
 
 @return 返回结果
 */
+ (BOOL)isCanOpenUserNotification {
    if (@available(iOS 10.0, *)) {
        UNAuthorizationStatus status = [UIDevice userNotificationAuthorization];
        UNUserNotificationCenter  *center = [UNUserNotificationCenter currentNotificationCenter];
        if (status == UNAuthorizationStatusNotDetermined) {
            dispatch_semaphore_t sema = dispatch_semaphore_create(0);
            [center requestAuthorizationWithOptions:UNAuthorizationOptionSound | UNAuthorizationOptionAlert | UNAuthorizationOptionBadge completionHandler:^(BOOL granted, NSError * _Nullable error) {
                dispatch_semaphore_signal(sema);
            }];
            dispatch_semaphore_wait(sema, DISPATCH_TIME_FOREVER);
        }
        status = [UIDevice userNotificationAuthorization];
        if (status == UNAuthorizationStatusAuthorized) {
            return YES;
        }
        
    } else {
        // Fallback on earlier versions
        UIUserNotificationSettings   *setting = [[UIApplication sharedApplication]currentUserNotificationSettings];
        if (setting.types != UIUserNotificationTypeNone) {
            return YES;
        }
    }
    
    //未授权
    return NO;
}

/**
 检查通讯录权限(iOS 9 之后能用)
 使用前请在info中添加 Privacy - Contacts Usage Description属性
 @return 返回权限状态
 */
+ (CNAuthorizationStatus)contactAuthorization API_AVAILABLE(ios(9.0)) {
    CNAuthorizationStatus   status = [CNContactStore authorizationStatusForEntityType:CNEntityTypeContacts];
    return status;
}

/**
 是否能访问通讯录
 使用前请在info中添加 Privacy - Contacts Usage Description属性
 @return 返回结果
 */
+ (BOOL)isCanOpenContact {
    if (@available(iOS 9.0, *)) {
        CNContactStore   *store = [[CNContactStore alloc] init];
        CNAuthorizationStatus   status = [CNContactStore authorizationStatusForEntityType:CNEntityTypeContacts];
        if (status == CNAuthorizationStatusNotDetermined) {
            dispatch_semaphore_t sema = dispatch_semaphore_create(0);
            [store requestAccessForEntityType:CNEntityTypeContacts completionHandler:^(BOOL granted, NSError * _Nullable error) {
                dispatch_semaphore_signal(sema);
            }];
            dispatch_semaphore_wait(sema, DISPATCH_TIME_FOREVER);
        }
        status = [CNContactStore authorizationStatusForEntityType:CNEntityTypeContacts];
        if (status == CNAuthorizationStatusAuthorized) {
            return YES;
        }
        
    } else {
        // Fallback on earlier versions
        ABAuthorizationStatus status = ABAddressBookGetAuthorizationStatus();
        if (status == kABAuthorizationStatusNotDetermined) {
            dispatch_semaphore_t sema = dispatch_semaphore_create(0);
            ABAddressBookRef addressBook = ABAddressBookCreateWithOptions(NULL, NULL);
            ABAddressBookRequestAccessWithCompletion(addressBook, ^(bool granted, CFErrorRef error) {
                dispatch_semaphore_signal(sema);
            });
            dispatch_semaphore_wait(sema, DISPATCH_TIME_FOREVER);
        }
        status = ABAddressBookGetAuthorizationStatus();
        if (status == kABAuthorizationStatusAuthorized) {
            return YES;
        }
    }
    //未授权
    return NO;
}

/**
 跳至系统设置页面
 */
+ (void)openSystemSetting {
    NSURL   *url = [NSURL URLWithString:UIApplicationOpenSettingsURLString];
    if (@available(iOS 10.0, *)) {
        [[UIApplication sharedApplication]openURL:url options:@{} completionHandler:^(BOOL success) {
            
        }];
    } else {
        // Fallback on earlier versions
        [[UIApplication sharedApplication]openURL:url];
    }
}

/**
 获取设备型号
 */
+ (NSString *)getDeviceName {
    NSString *deviceString = [self getDeviceStringName];
    if ([deviceString isEqualToString:@"iPhone3,1"])    return @"iPhone 4";
    if ([deviceString isEqualToString:@"iPhone3,2"])    return @"iPhone 4";
    if ([deviceString isEqualToString:@"iPhone3,3"])    return @"iPhone 4";
    if ([deviceString isEqualToString:@"iPhone4,1"])    return @"iPhone 4S";
    if ([deviceString isEqualToString:@"iPhone5,1"])    return @"iPhone 5";
    if ([deviceString isEqualToString:@"iPhone5,2"])    return @"iPhone 5 (GSM+CDMA)";
    if ([deviceString isEqualToString:@"iPhone5,3"])    return @"iPhone 5c (GSM)";
    if ([deviceString isEqualToString:@"iPhone5,4"])    return @"iPhone 5c (GSM+CDMA)";
    if ([deviceString isEqualToString:@"iPhone6,1"])    return @"iPhone 5s (GSM)";
    if ([deviceString isEqualToString:@"iPhone6,2"])    return @"iPhone 5s (GSM+CDMA)";
    if ([deviceString isEqualToString:@"iPhone7,1"])    return @"iPhone 6 Plus";
    if ([deviceString isEqualToString:@"iPhone7,2"])    return @"iPhone 6";
    if ([deviceString isEqualToString:@"iPhone8,1"])    return @"iPhone 6s";
    if ([deviceString isEqualToString:@"iPhone8,2"])    return @"iPhone 6s Plus";
    if ([deviceString isEqualToString:@"iPhone8,4"])    return @"iPhone SE";
    // 日行两款手机型号均为日本独占，可能使用索尼FeliCa支付方案而不是苹果支付
    if ([deviceString isEqualToString:@"iPhone9,1"])    return @"iPhone 7";
    if ([deviceString isEqualToString:@"iPhone9,2"])    return @"iPhone 7 Plus";
    if ([deviceString isEqualToString:@"iPhone9,3"])    return @"iPhone 7";
    if ([deviceString isEqualToString:@"iPhone9,4"])    return @"iPhone 7 Plus";
    if ([deviceString isEqualToString:@"iPhone10,1"])   return @"iPhone 8";
    if ([deviceString isEqualToString:@"iPhone10,4"])   return @"iPhone 8";
    if ([deviceString isEqualToString:@"iPhone10,2"])   return @"iPhone 8 Plus";
    if ([deviceString isEqualToString:@"iPhone10,5"])   return @"iPhone 8 Plus";
    if ([deviceString isEqualToString:@"iPhone10,3"])   return @"iPhone X";
    if ([deviceString isEqualToString:@"iPhone10,6"])   return @"iPhone X";
    if ([deviceString isEqualToString:@"iPhone11,2"])   return @"iPhone XS";
    if ([deviceString isEqualToString:@"iPhone11,4"])   return @"iPhone XS Max";
    if ([deviceString isEqualToString:@"iPhone11,6"])   return @"iPhone XS Max";
    if ([deviceString isEqualToString:@"iPhone11,8"])   return @"iPhone XR";
    if ([deviceString isEqualToString:@"iPod1,1"])      return @"iPod Touch 1G";
    if ([deviceString isEqualToString:@"iPod2,1"])      return @"iPod Touch 2G";
    if ([deviceString isEqualToString:@"iPod3,1"])      return @"iPod Touch 3G";
    if ([deviceString isEqualToString:@"iPod4,1"])      return @"iPod Touch 4G";
    if ([deviceString isEqualToString:@"iPod5,1"])      return @"iPod Touch (5 Gen)";
    if ([deviceString isEqualToString:@"iPad1,1"])      return @"iPad";
    if ([deviceString isEqualToString:@"iPad1,2"])      return @"iPad 3G";
    if ([deviceString isEqualToString:@"iPad2,1"])      return @"iPad 2 (WiFi)";
    if ([deviceString isEqualToString:@"iPad2,2"])      return @"iPad 2";
    if ([deviceString isEqualToString:@"iPad2,3"])      return @"iPad 2 (CDMA)";
    if ([deviceString isEqualToString:@"iPad2,4"])      return @"iPad 2";
    if ([deviceString isEqualToString:@"iPad2,5"])      return @"iPad Mini (WiFi)";
    if ([deviceString isEqualToString:@"iPad2,6"])      return @"iPad Mini";
    if ([deviceString isEqualToString:@"iPad2,7"])      return @"iPad Mini (GSM+CDMA)";
    if ([deviceString isEqualToString:@"iPad3,1"])      return @"iPad 3 (WiFi)";
    if ([deviceString isEqualToString:@"iPad3,2"])      return @"iPad 3 (GSM+CDMA)";
    if ([deviceString isEqualToString:@"iPad3,3"])      return @"iPad 3";
    if ([deviceString isEqualToString:@"iPad3,4"])      return @"iPad 4 (WiFi)";
    if ([deviceString isEqualToString:@"iPad3,5"])      return @"iPad 4";
    if ([deviceString isEqualToString:@"iPad3,6"])      return @"iPad 4 (GSM+CDMA)";
    if ([deviceString isEqualToString:@"iPad4,1"])      return @"iPad Air (WiFi)";
    if ([deviceString isEqualToString:@"iPad4,2"])      return @"iPad Air (Cellular)";
    if ([deviceString isEqualToString:@"iPad4,4"])      return @"iPad Mini 2 (WiFi)";
    if ([deviceString isEqualToString:@"iPad4,5"])      return @"iPad Mini 2 (Cellular)";
    if ([deviceString isEqualToString:@"iPad4,6"])      return @"iPad Mini 2";
    if ([deviceString isEqualToString:@"iPad4,7"])      return @"iPad Mini 3";
    if ([deviceString isEqualToString:@"iPad4,8"])      return @"iPad Mini 3";
    if ([deviceString isEqualToString:@"iPad4,9"])      return @"iPad Mini 3";
    if ([deviceString isEqualToString:@"iPad5,1"])      return @"iPad Mini 4 (WiFi)";
    if ([deviceString isEqualToString:@"iPad5,2"])      return @"iPad Mini 4 (LTE)";
    if ([deviceString isEqualToString:@"iPad5,3"])      return @"iPad Air 2";
    if ([deviceString isEqualToString:@"iPad5,4"])      return @"iPad Air 2";
    if ([deviceString isEqualToString:@"iPad6,3"])      return @"iPad Pro 9.7";
    if ([deviceString isEqualToString:@"iPad6,4"])      return @"iPad Pro 9.7";
    if ([deviceString isEqualToString:@"iPad6,7"])      return @"iPad Pro 12.9";
    if ([deviceString isEqualToString:@"iPad6,8"])      return @"iPad Pro 12.9";
    if ([deviceString isEqualToString:@"iPad6,11"])    return @"iPad 5 (WiFi)";
    if ([deviceString isEqualToString:@"iPad6,12"])    return @"iPad 5 (Cellular)";
    if ([deviceString isEqualToString:@"iPad7,1"])     return @"iPad Pro 12.9 inch 2nd gen (WiFi)";
    if ([deviceString isEqualToString:@"iPad7,2"])     return @"iPad Pro 12.9 inch 2nd gen (Cellular)";
    if ([deviceString isEqualToString:@"iPad7,3"])     return @"iPad Pro 10.5 inch (WiFi)";
    if ([deviceString isEqualToString:@"iPad7,4"])     return @"iPad Pro 10.5 inch (Cellular)";
    if ([deviceString isEqualToString:@"iPad7,5"])     return @"iPad 6th generation";
    if ([deviceString isEqualToString:@"iPad7,6"])     return @"iPad 6th generation";
    if ([deviceString isEqualToString:@"iPad8,1"])     return @"iPad Pro (11-inch)";
    if ([deviceString isEqualToString:@"iPad8,2"])     return @"iPad Pro (11-inch)";
    if ([deviceString isEqualToString:@"iPad8,3"])     return @"iPad Pro (11-inch)";
    if ([deviceString isEqualToString:@"iPad8,4"])     return @"iPad Pro (11-inch)";
    if ([deviceString isEqualToString:@"iPad8,5"])     return @"iPad Pro (12.9-inch) (3rd generation)";
    if ([deviceString isEqualToString:@"iPad8,6"])     return @"iPad Pro (12.9-inch) (3rd generation)";
    if ([deviceString isEqualToString:@"iPad8,7"])     return @"iPad Pro (12.9-inch) (3rd generation)";
    if ([deviceString isEqualToString:@"iPad8,8"])     return @"iPad Pro (12.9-inch) (3rd generation)";
    if ([deviceString isEqualToString:@"AppleTV2,1"])    return @"Apple TV 2";
    if ([deviceString isEqualToString:@"AppleTV3,1"])    return @"Apple TV 3";
    if ([deviceString isEqualToString:@"AppleTV3,2"])    return @"Apple TV 3";
    if ([deviceString isEqualToString:@"AppleTV5,3"])    return @"Apple TV 4";
    if ([deviceString isEqualToString:@"i386"])         return @"Simulator";
    if ([deviceString isEqualToString:@"x86_64"])       return @"Simulator";
    return deviceString;
}

/**
 获取原装的设备名称
 */
+ (NSString *)getDeviceStringName {
    struct utsname systemInfo;
    uname(&systemInfo);
    NSString *deviceString = [NSString stringWithCString:systemInfo.machine encoding:NSUTF8StringEncoding];
    return deviceString;
}

/**
 获取设备当前网络IP地址
 */
+ (NSString *)getIPAddress {
    NSArray *searchArray = [self isIpv6] ?
    @[ /*IOS_VPN @"/" IP_ADDR_IPv6, IOS_VPN @"/" IP_ADDR_IPv4,*/ IOS_WIFI @"/" IP_ADDR_IPv6, IOS_WIFI @"/" IP_ADDR_IPv4, IOS_CELLULAR @"/" IP_ADDR_IPv6, IOS_CELLULAR @"/" IP_ADDR_IPv4 ]:
    @[ /*IOS_VPN @"/" IP_ADDR_IPv4, IOS_VPN @"/" IP_ADDR_IPv6,*/ IOS_WIFI @"/" IP_ADDR_IPv4, IOS_WIFI @"/" IP_ADDR_IPv6, IOS_CELLULAR @"/" IP_ADDR_IPv4, IOS_CELLULAR @"/" IP_ADDR_IPv6 ];
    
    NSDictionary *addresses = [self getIPAddresses];
    
    __block NSString *address;
    [searchArray enumerateObjectsUsingBlock:^(NSString *key, NSUInteger idx, BOOL *stop)
     {
         address = addresses[key];
         if([self isValidatIP:address]) *stop = YES;
     } ];
    return address ? address : @"0.0.0.0";
}

+ (BOOL)isValidatIP:(NSString *)ipAddress {
    if (ipAddress.length == 0) {
        return NO;
    }
    NSString *urlRegEx = @"^([01]?\\d\\d?|2[0-4]\\d|25[0-5])\\."
    "([01]?\\d\\d?|2[0-4]\\d|25[0-5])\\."
    "([01]?\\d\\d?|2[0-4]\\d|25[0-5])\\."
    "([01]?\\d\\d?|2[0-4]\\d|25[0-5])$";
    
    NSError *error;
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:urlRegEx options:0 error:&error];
    
    if (regex != nil) {
        NSTextCheckingResult *firstMatch=[regex firstMatchInString:ipAddress options:0 range:NSMakeRange(0, [ipAddress length])];
        
        if (firstMatch) {
            /*
            NSRange resultRange = [firstMatch rangeAtIndex:0];
            NSString *result=[ipAddress substringWithRange:resultRange];
            //输出结果
            NSLog(@"%@",result);
             */
            return YES;
        }
    }
    return NO;
}

/**
 获取所有相关IP信息
 */
+ (NSDictionary *)getIPAddresses {
    NSMutableDictionary *addresses = [NSMutableDictionary dictionaryWithCapacity:8];
    
    // retrieve the current interfaces - returns 0 on success
    struct ifaddrs *interfaces;
    if(!getifaddrs(&interfaces)) {
        // Loop through linked list of interfaces
        struct ifaddrs *interface;
        for(interface=interfaces; interface; interface=interface->ifa_next) {
            if(!(interface->ifa_flags & IFF_UP) /* || (interface->ifa_flags & IFF_LOOPBACK) */ ) {
                continue; // deeply nested code harder to read
            }
            const struct sockaddr_in *addr = (const struct sockaddr_in*)interface->ifa_addr;
            char addrBuf[ MAX(INET_ADDRSTRLEN, INET6_ADDRSTRLEN) ];
            if(addr && (addr->sin_family==AF_INET || addr->sin_family==AF_INET6)) {
                NSString *name = [NSString stringWithUTF8String:interface->ifa_name];
                NSString *type;
                if(addr->sin_family == AF_INET) {
                    if(inet_ntop(AF_INET, &addr->sin_addr, addrBuf, INET_ADDRSTRLEN)) {
                        type = IP_ADDR_IPv4;
                    }
                } else {
                    const struct sockaddr_in6 *addr6 = (const struct sockaddr_in6*)interface->ifa_addr;
                    if(inet_ntop(AF_INET6, &addr6->sin6_addr, addrBuf, INET6_ADDRSTRLEN)) {
                        type = IP_ADDR_IPv6;
                    }
                }
                if(type) {
                    NSString *key = [NSString stringWithFormat:@"%@/%@", name, type];
                    addresses[key] = [NSString stringWithUTF8String:addrBuf];
                }
            }
        }
        // Free memory
        freeifaddrs(interfaces);
    }
    return [addresses count] ? addresses : nil;
}

/**
 判断当前网络是否为ipv6
 */
+ (BOOL)isIpv6 {
    NSArray *searchArray =
    @[ IOS_VPN @"/" IP_ADDR_IPv6,
       IOS_VPN @"/" IP_ADDR_IPv4,
       IOS_WIFI @"/" IP_ADDR_IPv6,
       IOS_WIFI @"/" IP_ADDR_IPv4,
       IOS_CELLULAR @"/" IP_ADDR_IPv6,
       IOS_CELLULAR @"/" IP_ADDR_IPv4 ] ;
    
    NSDictionary *addresses = [self getIPAddresses];
    
    __block BOOL isIpv6 = NO;
    [searchArray enumerateObjectsUsingBlock:^(NSString *key, NSUInteger idx, BOOL *stop)
     {
         
         if ([key rangeOfString:@"ipv6"].length > 0  && ![[NSString stringWithFormat:@"%@",addresses[key]] hasPrefix:@"(null)"] ) {
             
             if ( ![addresses[key] hasPrefix:@"fe80"]) {
                 isIpv6 = YES;
             }
         }
         
     } ];
    return isIpv6;
}

/**
 获取外网地址
 获取失败返回内网地址
 
 */
+ (NSString *)getWANIPAddress {
    NSError *error;
    NSURL *ipURL = [NSURL URLWithString:@"http://pv.sohu.com/cityjson?ie=utf-8"];
    NSMutableString *ip = [NSMutableString stringWithContentsOfURL:ipURL encoding:NSUTF8StringEncoding error:&error];
    //判断返回字符串是否为所需数据
    if ([ip hasPrefix:@"var returnCitySN = "]) {
        //对字符串进行处理，然后进行json解析
        //删除字符串多余字符串
        NSRange range = NSMakeRange(0, 19);
        [ip deleteCharactersInRange:range];
        NSString * nowIp =[ip substringToIndex:ip.length-1];
        //将字符串转换成二进制进行Json解析
        NSData * data = [nowIp dataUsingEncoding:NSUTF8StringEncoding];
        NSDictionary * dict = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
        return dict[@"cip"] ? dict[@"cip"] : [self getIPAddress];
    }
    return [self getIPAddress];
}

/**
 获取UUID
 
 @return UUID
 */
+ (NSString *)getDeviceUUID {
    CFUUIDRef new_uuid = CFUUIDCreate(nil);
    CFStringRef uuidString = CFUUIDCreateString(nil, new_uuid);
    NSString * result = (NSString *)CFBridgingRelease(CFStringCreateCopy( NULL, uuidString));
    CFRelease(new_uuid);
    CFRelease(uuidString);
    NSString *UUID  = [[result description] stringByReplacingOccurrencesOfString:@"-" withString:@""];
    return UUID;
}

/**
 获取广告标识符
 
 @return IDFA
 */
+ (NSString *)getIDFA {
    return [[[ASIdentifierManager sharedManager] advertisingIdentifier] UUIDString];
}

/**
 系统版本
 */
+ (NSString *)systemVersion {
    UIDevice *device = [UIDevice currentDevice];
    return device.systemVersion;
}

/**
 判断系统版本
 */
+ (BOOL)systemVersion_iOS_8_AndLater {
    return [[UIDevice  systemVersion] floatValue] >= 8.0;
}

/**
 判断系统版本
 */
+ (BOOL)systemVersion_iOS_9_AndLater {
    return [[UIDevice  systemVersion] floatValue] >= 9.0;
}

/**
 判断系统版本
 */
+ (BOOL)systemVersion_iOS_10_AndLater {
    return [[UIDevice  systemVersion] floatValue] >= 10.0;
}

/**
 判断系统版本
 */
+ (BOOL)systemVersion_iOS_11_AndLater {
    return [[UIDevice  systemVersion] floatValue] >= 11.0;
}

/**
 判断系统版本
 */
+ (BOOL)systemVersion_iOS_12_AndLater {
    return [[UIDevice  systemVersion] floatValue] >= 12.0;
}

/**
 获取区域标志符（非语言标志）
 */
+ (NSString *)localeIdentifier {
    NSLocale *frLocale = [NSLocale autoupdatingCurrentLocale];
    return frLocale.localeIdentifier;
}

/**
 判断设备是否为iPhone
 */
+ (BOOL)isIPhone {
    return (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone);
}

/**
 判断设备是否为iPhoneX系列
 */
+ (BOOL)isIPhoneX {
    NSString   *deviceStr = [self getDeviceStringName];
    if ([deviceStr isEqualToString:@"iPhone10,3"] ||
        [deviceStr isEqualToString:@"iPhone10,6"] ||
        [deviceStr isEqualToString:@"iPhone11,2"] ||
        [deviceStr isEqualToString:@"iPhone11,4"] ||
        [deviceStr isEqualToString:@"iPhone11,6"] ||
        [deviceStr isEqualToString:@"iPhone11,8"])  {
        return YES;
    }
    return NO;
}
/**
 判断设备是否为iPad
 */
+ (BOOL)isIPad {
    return (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad);
}

/**
 是否为视网膜屏幕
 */
+ (BOOL)isRetina {
    return ([UIScreen mainScreen].scale > 1.0);
}

/**
 电量
 */
+ (float)batteryLevel {
    return [[UIDevice currentDevice] batteryLevel];
}

/**
 电池状态
 */
+ (UIDeviceBatteryState)batteryState {
    return [[UIDevice currentDevice] batteryState];
}

/**
 系统上次启动时间
 */
+ (NSDate *)getSystemUptime {
    NSTimeInterval time = [[NSProcessInfo processInfo] systemUptime];
    return [[NSDate alloc] initWithTimeIntervalSinceNow:(0 - time)];
}

/**
 获取CPU总数
 */
+ (NSUInteger)getCPUCount {
    return [NSProcessInfo processInfo].activeProcessorCount;
}

/**
 CPU使用总比例
 */
+ (float)getCPUUsage {
    float cpu = 0;
    NSArray *cpus = [self getPerCPUUsage];
    if (cpus.count == 0) return -1;
    for (NSNumber *n in cpus) {
        cpu += n.floatValue;
    }
    return cpu;
}

//每个CPU使用比例
+ (NSArray *)getPerCPUUsage {
    processor_info_array_t _cpuInfo, _prevCPUInfo = nil;
    mach_msg_type_number_t _numCPUInfo, _numPrevCPUInfo = 0;
    unsigned _numCPUs;
    NSLock *_cpuUsageLock;
    
    int _mib[2U] = { CTL_HW, HW_NCPU };
    size_t _sizeOfNumCPUs = sizeof(_numCPUs);
    int _status = sysctl(_mib, 2U, &_numCPUs, &_sizeOfNumCPUs, NULL, 0U);
    if (_status)
        _numCPUs = 1;
    
    _cpuUsageLock = [[NSLock alloc] init];
    
    natural_t _numCPUsU = 0U;
    kern_return_t err = host_processor_info(mach_host_self(), PROCESSOR_CPU_LOAD_INFO, &_numCPUsU, &_cpuInfo, &_numCPUInfo);
    if (err == KERN_SUCCESS) {
        [_cpuUsageLock lock];
        
        NSMutableArray *cpus = [NSMutableArray new];
        for (unsigned i = 0U; i < _numCPUs; ++i) {
            Float32 _inUse, _total;
            if (_prevCPUInfo) {
                _inUse = (
                          (_cpuInfo[(CPU_STATE_MAX * i) + CPU_STATE_USER]   - _prevCPUInfo[(CPU_STATE_MAX * i) + CPU_STATE_USER])
                          + (_cpuInfo[(CPU_STATE_MAX * i) + CPU_STATE_SYSTEM] - _prevCPUInfo[(CPU_STATE_MAX * i) + CPU_STATE_SYSTEM])
                          + (_cpuInfo[(CPU_STATE_MAX * i) + CPU_STATE_NICE]   - _prevCPUInfo[(CPU_STATE_MAX * i) + CPU_STATE_NICE])
                          );
                _total = _inUse + (_cpuInfo[(CPU_STATE_MAX * i) + CPU_STATE_IDLE] - _prevCPUInfo[(CPU_STATE_MAX * i) + CPU_STATE_IDLE]);
            } else {
                _inUse = _cpuInfo[(CPU_STATE_MAX * i) + CPU_STATE_USER] + _cpuInfo[(CPU_STATE_MAX * i) + CPU_STATE_SYSTEM] + _cpuInfo[(CPU_STATE_MAX * i) + CPU_STATE_NICE];
                _total = _inUse + _cpuInfo[(CPU_STATE_MAX * i) + CPU_STATE_IDLE];
            }
            [cpus addObject:@(_inUse / _total)];
        }
        
        [_cpuUsageLock unlock];
        if (_prevCPUInfo) {
            size_t prevCpuInfoSize = sizeof(integer_t) * _numPrevCPUInfo;
            vm_deallocate(mach_task_self(), (vm_address_t)_prevCPUInfo, prevCpuInfoSize);
        }
        return cpus;
    } else {
        return nil;
    }
}

/**
 获取总磁盘空间
 */
+ (long long)totalDiskSpace {
    NSString *str = @"~/Documents";
    long long size = 0;
    struct statfs diskInfo;
    if(statfs([[str stringByExpandingTildeInPath] fileSystemRepresentation], &diskInfo) == 0) {
        //每个block里包含的字节数
        long long blocksize = diskInfo.f_bsize;
        
        //总的字节数，f_blocks为block的数目
        long long totalsize = blocksize * diskInfo.f_blocks;
        size = totalsize;
    }
    return size;
}

/**
 获取剩余磁盘空间
 */
+ (long long)freeDiskSpace {
    NSString *str = @"~/Documents";
    long long size = 0;
    struct statfs diskInfo;
    if(statfs([[str stringByExpandingTildeInPath] fileSystemRepresentation], &diskInfo) == 0) {
        //每个block里包含的字节数
        uint64_t blocksize = diskInfo.f_bsize;
        //可用空间大小
        uint64_t availableDisk = diskInfo.f_bavail * blocksize;
        size = availableDisk;
    }
    
    return size;
}

/**
 获取已使用磁盘空间
 */
+ (long long)usedDiskSpace {
    long long totalDisk = [self totalDiskSpace];
    long long freeDisk = [self freeDiskSpace];
    if (totalDisk < 0 || freeDisk < 0) return -1;
    long long usedDisk = totalDisk - freeDisk;
    if (usedDisk < 0) usedDisk = -1;
    return usedDisk;
}

/**
 获取系统总内存空间
 */
+ (long long)totalMemorySpace {
    long long totalMemory = [[NSProcessInfo processInfo] physicalMemory];
    if (totalMemory < -1) totalMemory = -1;
    return totalMemory;
}

/**
 获取系统活跃内存空间
 */
+ (long long)activeMemorySpace {
    return [self frg_memoryWithType:FRGMemoryTypeActive];
}

/**
 获取系统不活跃内存空间
 */
+ (long long)inactiveMemorySpace {
    return [self frg_memoryWithType:FRGMemoryTypeInactive];
}

/**
 获取系统空闲的内存空间
 */
+ (long long)freeMemorySpace {
    return [self frg_memoryWithType:FRGMemoryTypeFree];
}

/**
 用户可使用内存
 */
+ (float)canUserMemorySpace {
    return [self frg_sysInfo:HW_USERMEM];
}

/**
 获取系统已使用的内存空间
 */
+ (long long)usedMemorySpace {
    return [self frg_memoryWithType:FRGMemoryTypeUsed];
}

/**
 获取用来存放内核和数据结构的内存
 */
+ (long long)wiredMemorySpace {
    return [self frg_memoryWithType:FRGMemoryTypeWired];
}

/**
 可释放的内存空间：内存吃紧自动释放
 */
+ (long long)purgeableMemorySpace {
    return [self frg_memoryWithType:FRGMemoryTypePurgeable];
}

+ (long long)frg_memoryWithType:(FRGMemoryType)type{
    mach_port_t host_port = mach_host_self();
    mach_msg_type_number_t host_size = sizeof(vm_statistics_data_t) / sizeof(integer_t);
    vm_size_t page_size;
    vm_statistics_data_t vm_stat;
    kern_return_t kern;
    kern = host_page_size(host_port, &page_size);
    if (kern != KERN_SUCCESS) return -1;
    kern = host_statistics(host_port, HOST_VM_INFO, (host_info_t)&vm_stat, &host_size);
    if (kern != KERN_SUCCESS) return -1;
    int64_t count = 0;
    switch (type) {
        case FRGMemoryTypeFree:
            count = vm_stat.free_count;
            break;
            
        case FRGMemoryTypePurgeable:
            count = vm_stat.purgeable_count;
            break;
            
        case FRGMemoryTypeActive:
            count = vm_stat.active_count;
            break;
            
        case FRGMemoryTypeInactive:
            count = vm_stat.inactive_count;
            break;
            
        case FRGMemoryTypeWired:
            count = vm_stat.wire_count;
            break;
            
        case FRGMemoryTypeUsed:
            count = vm_stat.active_count + vm_stat.inactive_count + vm_stat.wire_count;
            break;
            
        default:
            break;
    }
    return count * page_size;
}

/**
 CPU使用频率
 */
+ (float)cpuFrequency {
    return [self frg_sysInfo:HW_CPU_FREQ];
}

/**
 CPU总线频率
 */
+ (float)cpuBusFrequency {
    return [self frg_sysInfo:HW_BUS_FREQ];
}

/**
 最大Socket缓存区大小
 */
+ (float)maxSocketBufferSize {
    return [self frg_sysInfo:KIPC_MAXSOCKBUF];
}

+ (float)frg_sysInfo:(uint)typeSpecifier {
    size_t size = sizeof(int);
    int results;
    int mib[2] = {CTL_HW, typeSpecifier};
    sysctl(mib, 2, &results, &size, NULL, 0);
    return (NSUInteger) results * 1.0;
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
