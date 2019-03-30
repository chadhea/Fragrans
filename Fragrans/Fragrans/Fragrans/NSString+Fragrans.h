//
//  NSString+Fragrans.h
//  Fragrans
//
//  Created by qmz on 2019/1/30.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN

@interface NSString (Fragrans)
/**
 返回安全字符串
 针对NSNumber类型转字符串，针对nil、Nil、NULL、NSNull对象转成空字符串。
 @param string 字符串
 @return safe String
 */
+ (NSString *)safeString:(NSString *)string;

/**
 判断字符串是否为空
 
 @param string 字符串
 @return 字符串是否为空值
 */
+ (BOOL)isBlankString:(NSString *)string;

/**
 生成随机字符
 默认长度为1
 @return 随机字符
 */
+ (NSString *)randomString;

/**
 生成随机字符
 @param length 随机的长度
 @return 随机字符
 */
+ (NSString *)randomStringWithlength:(NSInteger)length;

/**
 生成随机字符
 @param length 随机的长度
 @param unique 同一时间内，随机出的字符串是否唯一
 @return 随机字符
 */
+ (NSString *)randomStringWithlength:(NSInteger)length unique:(BOOL)unique;

/**
 判断手机号码是否合法
 
 @return 返回判断结果
 */
- (BOOL)isPhoneNumberValid;

/**
 判断邮箱是否合法
 
 @return 返回判断结果
 */
- (BOOL)isEmailValidate;

/**
 判断是否是中英文
 
 @return 返回判断结果
 */
- (BOOL)isEnglishAndChinese;

/**
 判断是否是中文
 
 @return 返回判断结果
 */
- (BOOL)isChinese;

/**
 判断是否是纯数字
 
 @return 返回判断结果
 */
- (BOOL)isNumberText;

/**
 判断密码是否合法
 6-20位数字和字母组合
 
 @return 返回判断结果
 */
- (BOOL)isPassword;

/**
 判断用户昵称是否合法
 10位中英文
 
 @return 返回判断结果
 */
- (BOOL)isUsername;

/**
 判断用户身份证号是否合法
 
 @return 返回判断结果
 */
- (BOOL)isUserIdCard;

/**
 判断url是否合法
 
 @return 返回判断结果
 */
- (BOOL)isURL;

/**
 是否为整数
 
 @return 返回判断结果
 */
- (BOOL)isPureInt;

/**
 是否为浮点数
 
 @return 返回判断结果
 */
- (BOOL)isPureFloat;

/**
 判断是否包含html

 @return 返回判断结果
 */
- (BOOL)isContainHtml;

/**
 判断是否包含Emoji表情
 
 @return 返回判断结果
 */
- (BOOL)isContainEmoji;

/**
 过滤空格
 
 @return 处理后的字符串
 */
- (NSString *)trimSpaceString;

/**
 多个空格归为一个空格
 
 @return 处理后的字符串
 */
- (NSString *)stripBlankSpaceString;

/**
 移除最后一个字符
 
 @return 返回处理后的字符串
 */
- (NSString *)removeLastChar;

/**
 提取字符串中的数字
 
 @return 返回处理后的字符串
 */
- (NSString *)extractNumber;

/**
 计算字节，中文两个字节，英文一个字节
 
 @return 字节长度
 */
- (NSUInteger)unicodeLength;

/**
 根据字体和展示范围计算size
 
 @param font 字体 UIFont或者NSString或者NSNumber格式
 @param size 大小
 @param lineBreakModel 换行方式
 @param spacing 行间距
 @return 文本size
 */
- (CGSize)boundingRectWithFont:(id)font size:(CGSize)size mode:(NSLineBreakMode)lineBreakModel lineSpacing:(CGFloat)spacing;

/**
 多行文本计算高度
 
 @param font 字体 UIFont或者NSString或者NSNumber格式
 @param width 宽度
 @return 高度
 */
- (CGFloat)boundingHeightForFont:(id)font width:(CGFloat)width;

/**
 单行文本计算宽度
 
 @param font 字体 UIFont或者NSString或者NSNumber格式
 @return 宽度
 */
- (CGFloat)boundingWidthForFont:(id)font;

/**
 单行文本计算高度
 
 @param font 字体 UIFont或者NSString或者NSNumber格式
 @return 高度
 */
- (CGFloat)boundingHeightForFont:(id)font;

/**
 单行文本计算宽高
 
 @param font 字体 UIFont或者NSString或者NSNumber格式
 @return 高度
 */
- (CGSize)boundingSizeForFont:(id)font;

/**
 字符串转数组
 
 @return 转化的数组
 */
- (NSArray *)toArray;

/**
 字符串转NSData
 */
- (NSData *)toData;

/**
 json字符串转字典
 */
- (NSDictionary *)toDictionary;

/**
 字符串转char *
 */
- (const char *)toChar:(NSString *)string;

/**
 char *转NSString
 */
+ (NSString *)stringFromChar:(char *)cha;

/**
 去除字符串中的html标签对
 */
+ (NSString *)filterHTML:(NSString *)htmlString;

/**
 取出html的图片资源
 
 @return 返回数组
 */
+ (NSArray *)fromHTMLGetImageSourceWith:(NSString *)string;

/**
 去除字符串中的Emoji表情
 */
+ (NSString *)filterEmoji:(NSString *)emojiString;

/**
 md5 加密
 */
+ (NSString *)encrypt_md5With:(NSString *)encryptString;

/**
 AES 对string加密
 
 @param encryptString   需要加密的string
 @param secretKeyString 解密的string（解密时需要的string）
 @return 返回加密后的string
*/
+ (NSString *)encryptAESWithString:(NSString *)encryptString secretKey:(NSString *)secretKeyString;

/**
 给AES加密后的string解密

 @param decryptString 需要解密的string
 @param secretKeyString 解密的string（需要与加密时的secretKeyString一致）
 @return 返回解密后的字符串
*/
+ (NSString *)decryptAESWithString:(NSString *)decryptString secretKey:(NSString *)secretKeyString;

/**
 AES 对NSData加密
 
 @param encryptData   需要加密的data
 @param secretKeyString 解密的string（解密时需要的string）
 @return 返回加密后的data
 */
+ (NSData *)encryptAESWithData:(NSData *)encryptData secretKey:(NSString *)secretKeyString;

/**
 AES 对NSData解密
 
 @param decryptData   需要解密的data
 @param secretKeyString 解密的string (需要与加密时的secretKeyString一致）
 @return 返回解密后的data
 */
+ (NSData *)decryptAESWithData:(NSData *)decryptData secretKey:(NSString *)secretKeyString;

/**
 url中的字符串转化
 将字符串以URL格式编码
 
 @param string 传入urlString
 @return 转义后的urlString
 */
+ (NSString *)stringToUrlStringEncoding:(NSString *)string;



@end

NS_ASSUME_NONNULL_END
