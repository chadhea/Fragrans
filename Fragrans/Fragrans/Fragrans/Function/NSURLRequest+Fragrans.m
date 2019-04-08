//
//  NSURLRequest+Fragrans.m
//  Fragrans
//
//  Created by qmz on 2019/3/29.
//

#import "NSURLRequest+Fragrans.h"
#import "FunctionBridge.h"

@implementation NSURLRequest (Fragrans)

/**
 发送GET请求
 */
+ (void)get_requestWithURL:(NSString *)url completionHandler:(void(^)(NSDictionary *response, NSError *error))completionHandler {
    [self get_requestWithURL:url params:nil completionHandler:completionHandler];
}

/**
 发送GET请求
 */
+ (void)get_requestWithURL:(NSString *)url params:(nullable NSDictionary *)params completionHandler:(void(^)(NSDictionary *response, NSError *error))completionHandler {
    NSURLSession  *session = [NSURLSession sharedSession];
    NSString   *new_url = [FunctionBridge safeString:url];
    if (![FunctionBridge isEmpty:params]) {
        for (int i = 0;i < params.allKeys.count;i ++) {
            NSString  *key = [FunctionBridge stringToUrlStringEncoding:[FunctionBridge safeString:params.allKeys[i]]];
            NSString  *value = [FunctionBridge stringToUrlStringEncoding:[FunctionBridge safeString:params[key]]];
            if (i == 0) {
                new_url = [NSString stringWithFormat:@"%@?%@=%@",new_url,key,value];
            }else {
                new_url = [NSString stringWithFormat:@"%@&%@=%@",new_url,key,value];
            }
        }
    }
    dispatch_frg_global_async_safe(^{
        NSURLSessionDataTask  *task = [session dataTaskWithURL:[NSURL URLWithString:new_url] completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
            dispatch_frg_main_async_safe(^{
                NSDictionary *responseDic = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
                if (completionHandler) {
                    completionHandler(responseDic,error);
                }
            });
        }];
        [task resume];
    });
    
}

/**
 发送POST请求
 */
+ (void)post_requestWithURL:(NSString *)url params:(nullable NSDictionary *)params completionHandler:(void(^)(NSDictionary *response, NSError *error))completionHandler {
    NSURLSession  *session = [NSURLSession sharedSession];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:url]];
    request.HTTPMethod = @"POST";
    NSString  *new_parastr = @"";
    NSInteger  index = 0;
    for (NSString *key in params.allKeys) {
        NSString  *nkey = [FunctionBridge stringToUrlStringEncoding:[FunctionBridge safeString:key]];
        NSString  *value = [FunctionBridge stringToUrlStringEncoding:[FunctionBridge safeString:params[key]]];
        if (index == 0) {
            new_parastr = [NSString stringWithFormat:@"%@=%@",nkey,value];
        }else {
            new_parastr = [NSString stringWithFormat:@"%@&%@=%@",new_parastr,nkey,value];
        }
        index ++;
    }
    request.HTTPBody = [new_parastr dataUsingEncoding:NSUTF8StringEncoding];
    dispatch_frg_global_async_safe(^{
        NSURLSessionDataTask  *task = [session dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
            dispatch_frg_main_async_safe(^{
                NSDictionary *responseDic = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
                if (completionHandler) {
                    completionHandler(responseDic,error);
                }
            });
        }];
        [task resume];
    });
}

@end
