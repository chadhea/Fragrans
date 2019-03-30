//
//  NSURLRequest+Fragrans.h
//  Fragrans
//
//  Created by qmz on 2019/3/29.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSURLRequest (Fragrans)

/**
 发送GET请求
 */
+ (void)get_requestWithURL:(NSString *)url completionHandler:(void(^)(NSDictionary *response, NSError *error))completionHandler;

/**
 发送GET请求
 */
+ (void)get_requestWithURL:(NSString *)url params:(nullable NSDictionary *)params completionHandler:(void(^)(NSDictionary *response, NSError *error))completionHandler;

/**
 发送POST请求
 */
+ (void)post_requestWithURL:(NSString *)url params:(nullable NSDictionary *)params completionHandler:(void(^)(NSDictionary *response, NSError *error))completionHandler;


@end

NS_ASSUME_NONNULL_END
