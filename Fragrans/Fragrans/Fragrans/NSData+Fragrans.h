//
//  NSData+Fragrans.h
//  Fragrans
//
//  Created by qmz on 2019/2/28.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSData (Fragrans)

/**
 是否为空
 */
- (BOOL)isEmpty;

/**
 NSData转NSString
 */
- (NSString *)toString;

/**
 NSData转NSString
 */
+ (NSString *)dataToString:(NSData *)data;

/**
 NSData转char *
 */
- (const char *)toChar;

/**
 char *转NSData
 */
+ (NSData *)dataFromChar:(char *)cha;

/**
 修复破损的data数据
 */
+ (NSData *)replaceNoUTF_8Data:(NSData *)data;


@end

NS_ASSUME_NONNULL_END
