//
//  NSDateFormatter+Fragrans.h
//  Fragrans
//
//  Created by qmz on 2019/3/19.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN

@interface NSDateFormatter (Fragrans)

/**
 获取当前系统时间戳
 */
+ (NSString *)getCurrentTimeStamp;

/**
 获取当前系统时间戳
 */
+ (CGFloat)getCurrentTimeFloatStamp;

/**
 时间转时间戳
 */
+ (NSString *)timeStampWithTime:(NSString *)time formatter:(NSString *)formatter;

/**
 时间戳转时间 + 格式
 */
+ (NSString *)timeWithTimeStamp:(NSString *)timeStamp formatter:(NSString *)formatter;

/**
 格式转化
 */
+ (NSDateFormatter *)dateFormatter:(NSString *)dateString;

/**
 时间转化
 
 @param date 需要转化的时间
 @return 返回formater格式：yyyy-MM-dd HH:mm:ss
 */
+ (NSString *)timeWithDate:(NSDate *)date;

/**
 时间转化
 
 @param date 需要转化的时间
 @param formater 格式，如：yyyy-MM-dd
 */
+ (NSString *)timeWithDate:(NSDate *)date format:(NSString *)formater;

#pragma mark --- 获取本地时间
/**
 当前的时间
 
 @param formater 格式，如：yyyy-MM-dd
 */
+ (NSString *)timeWithDateFormat:(NSString *)formater;

/**
 获取当前时间（24小时）
 
 @return yyyy年MM月dd日 HH:mm:ss
 */
+ (NSString *)currentTime;

/**
 获取当前时间（上午+下午）
 */
+ (NSString *)timeShangXiaWu;

/**
 获取当前时间（AM+PM）
 */
+ (NSString *)timeAM_PM;

/**
 获取当前时间（yyyy-MM-dd）
 */
+ (NSString *)timeYMD;

/**
 获取当前时间（yyyy-MM-dd hh:mm:ss）
 */
+ (NSString *)timeYMD_Hms;

/**
 获取当前时间（yyyy-MM-dd hh:mm:ss.SSS）
 */
+ (NSString *)timeYMD_Hms_S;

/**
 获取当前星期
 */
+ (NSString *)currentWeekTime;

/**
 获取当前小时
 */
+ (NSString *)currentHourTime;

/**
 获取当前几号
 */
+ (NSString *)currentDataTime;

#pragma mark --- 获取网上时间

/**
 获取当前网上时间（24小时）
 */
+ (NSString *)internetCurrentTime;

/**
 获取当前网上时间（上午+下午）
 */
+ (NSString *)internetTimeShangXiaWu;

/**
 获取当前网上时间（AM+PM）
 */
+ (NSString *)internetTimeAM_PM;

/**
 获取当前网上时间（yyyy-MM-dd）
 */
+ (NSString *)internetTimeYMD;

/**
 获取当前网上时间（yyyy-MM-dd hh:mm:ss）
 */
+ (NSString *)internetTimeYMD_Hms;

/**
 获取当前网上星期
 */
+ (NSString *)internetCurrentWeekTime;

/**
 获取当前网上小时
 */
+ (NSString *)internetCurrentHourTime;

/**
 获取当前网上几号
 */
+ (NSString *)internetCurrentDataTime;


@end

NS_ASSUME_NONNULL_END
