//
//  NSDate+Fragrans.h
//  Fragrans
//
//  Created by qmz on 2019/3/19.
//


#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN

@interface NSDate (Fragrans)

/**
 获取上一天的时间
 */
+ (NSDate *)lastDayDate;

/**
 获取下一天的时间
 */
+ (NSDate *)nextDayDate;

/**
 获取当前时间所在月的开始和结束时间
 */
+ (NSArray *)monthBeginAndEnd;

/**
 时间转date
 */
+ (NSDate *)dataWithTime:(NSString *)time formatter:(NSString *)formatter;

/**
 获取网上时间
 */
+ (NSDate *)getInternetDate;


@end

NS_ASSUME_NONNULL_END
