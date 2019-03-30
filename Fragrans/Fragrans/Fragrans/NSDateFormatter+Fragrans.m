//
//  NSDateFormatter+Fragrans.m
//  Fragrans
//
//  Created by qmz on 2019/3/19.
//

#import "NSDateFormatter+Fragrans.h"
#import "NSDate+Fragrans.h"
@implementation NSDateFormatter (Fragrans)

/**
 获取当前系统时间戳
 */
+ (NSString *)getCurrentTimeStamp {
    NSDate  *date = [NSDate dateWithTimeIntervalSinceNow:0];
    NSTimeInterval time = [date timeIntervalSince1970];
    NSString  *timeString = [NSString stringWithFormat:@"%f", time];
    return timeString;
}

/**
 获取当前系统时间戳
 */
+ (CGFloat)getCurrentTimeFloatStamp {
    return [[self getCurrentTimeStamp]doubleValue];
}

/**
 时间转时间戳
 */
+ (NSString *)timeStampWithTime:(NSString *)time formatter:(NSString *)formatter {
    NSDate *date = [NSDate dataWithTime:time formatter:formatter];
    NSString *timeSp = [NSString stringWithFormat:@"%ld", (long)[date timeIntervalSince1970]];
    return timeSp;
}

/**
 时间戳转时间 + 格式
 */
+ (NSString *)timeWithTimeStamp:(NSString *)timeStamp formatter:(NSString *)formatter {
    NSDateFormatter *dataFormatter = [[NSDateFormatter alloc]init];
    [dataFormatter setDateFormat:formatter];
    NSDate *confromTimesp = [NSDate dateWithTimeIntervalSince1970:[timeStamp doubleValue]];
    NSString *confromTimespStr = [dataFormatter stringFromDate:confromTimesp];
    return confromTimespStr;
}

/**
 格式转化
 */
+ (NSDateFormatter *)dateFormatter:(NSString *)dateString {
    NSDateFormatter    *formatter = [[NSDateFormatter alloc]init];
    [formatter setDateFormat:dateString];
    return formatter;
}

/**
 时间转化
 
 @param date 需要转化的时间
 @return 返回formater格式：yyyy-MM-dd HH:mm:ss
 */
+ (NSString *)timeWithDate:(NSDate *)date {
    return [NSDateFormatter timeWithDate:date format:@"yyyy-MM-dd HH:mm:ss"];
}

/**
 时间转化
 
 @param date 需要转化的时间
 @param formater 格式，如：yyyy-MM-dd
 */
+ (NSString *)timeWithDate:(NSDate *)date format:(NSString *)formater {
    NSDateFormatter   *dateFormatter = [self dateFormatter:formater];
    return [dateFormatter stringFromDate:date];
}

/**
 当前的时间
 
 @param formater 格式，如：yyyy-MM-dd
 */
+ (NSString *)timeWithDateFormat:(NSString *)formater {
    NSDateFormatter *dateFormatter = [self dateFormatter:formater];
    NSString *destDateString = [dateFormatter stringFromDate:[NSDate date]];
    return destDateString;
}

/**
 获取当前时间（24小时）
 
 @return yyyy年MM月dd日 HH:mm:ss
 */
+ (NSString *)currentTime {
    return [self timeWithDateFormat:@"yyyy年MM月dd日 HH:mm:ss"];
}

/**
 获取当前时间（上午+下午）
 */
+ (NSString *)timeShangXiaWu {
    NSDateFormatter     *formatter = [self dateFormatter:@"yyyy年MM月dd日 ahh:mm:ss"];
    [formatter setAMSymbol:@"上午"];
    [formatter setPMSymbol:@"下午"];
    NSString   *currentTime = [formatter stringFromDate:[NSDate date]];
    return currentTime;
}

/**
 获取当前时间（AM+PM）
 */
+ (NSString *)timeAM_PM {
    NSDateFormatter     *formatter = [self dateFormatter:@"yyyy年MM月dd日 ahh:mm:ss"];
    NSString   *currentTime = [formatter stringFromDate:[NSDate date]];
    return currentTime;
}

/**
 获取当前时间（yyyy-MM-dd）
 */
+ (NSString *)timeYMD {
    NSString   *currentTime = [[self dateFormatter:@"yyyy-MM-dd"] stringFromDate:[NSDate date]];
    return currentTime;
}

/**
 获取当前时间（yyyy-MM-dd hh:mm:ss）
 */
+ (NSString *)timeYMD_Hms {
    NSString   *currentTime = [[self dateFormatter:@"yyyy-MM-dd HH:mm:ss"] stringFromDate:[NSDate date]];
    return currentTime;
}

/**
 获取当前时间（yyyy-MM-dd hh:mm:ss.SSS）
 */
+ (NSString *)timeYMD_Hms_S {
    NSString   *currentTime = [[self dateFormatter:@"yyyy-MM-dd HH:mm:ss.SSS"] stringFromDate:[NSDate date]];
    return currentTime;
}

/**
 获取当前星期
 */
+ (NSString *)currentWeekTime {
    NSString   *currentTime = [[self dateFormatter:@"EEEE"] stringFromDate:[NSDate date]];
    return currentTime;
}

/**
 获取当前小时
 */
+ (NSString *)currentHourTime {
    NSString   *currentTime = [[self dateFormatter:@"HH"] stringFromDate:[NSDate date]];
    return currentTime;
}

/**
 获取当前几号
 */
+ (NSString *)currentDataTime {
    NSString   *currentTime = [[self dateFormatter:@"dd"] stringFromDate:[NSDate date]];
    return currentTime;
}

/**
 获取当前网上时间（24小时）
 */
+ (NSString *)internetCurrentTime {
    NSString   *currentTime = [[self dateFormatter:@"yyyy年MM月dd日 HH:mm:ss"] stringFromDate:[NSDate getInternetDate]];
    return currentTime;
}

/**
 获取当前网上时间（上午+下午）
 */
+ (NSString *)internetTimeShangXiaWu {
    NSDateFormatter     *formatter = [self dateFormatter:@"yyyy年MM月dd日 ahh:mm:ss"];
    [formatter setAMSymbol:@"上午"];
    [formatter setPMSymbol:@"下午"];
    NSString   *currentTime = [formatter stringFromDate:[NSDate getInternetDate]];
    return currentTime;
    
}

/**
 获取当前网上时间（AM+PM）
 */
+ (NSString *)internetTimeAM_PM {
    NSDateFormatter     *formatter = [self dateFormatter:@"yyyy年MM月dd日 ahh:mm:ss"];
    NSString   *currentTime = [formatter stringFromDate:[NSDate getInternetDate]];
    return currentTime;
    
}

/**
 获取当前网上时间（yyyy-MM-dd）
 */
+ (NSString *)internetTimeYMD {
    NSString   *currentTime = [[self dateFormatter:@"yyyy-MM-dd"] stringFromDate:[NSDate getInternetDate]];
    return currentTime;
}

/**
 获取当前网上时间（yyyy-MM-dd hh:mm:ss）
 */
+ (NSString *)internetTimeYMD_Hms {
    NSString   *currentTime = [[self dateFormatter:@"yyyy-MM-dd HH:mm:ss"] stringFromDate:[NSDate getInternetDate]];
    return currentTime;
}

/**
 获取当前网上星期
 */
+ (NSString *)internetCurrentWeekTime {
    NSString   *currentTime = [[self dateFormatter:@"EEEE"] stringFromDate:[NSDate getInternetDate]];
    return currentTime;
}

/**
 获取当前网上小时
 */
+ (NSString *)internetCurrentHourTime {
    NSString   *currentTime = [[self dateFormatter:@"HH"] stringFromDate:[NSDate getInternetDate]];
    return currentTime;
}

/**
 获取当前网上几号
 */
+ (NSString *)internetCurrentDataTime {
    NSString   *currentTime = [[self dateFormatter:@"dd"] stringFromDate:[NSDate getInternetDate]];
    return currentTime;
}

@end
