//
//  NSString+Fragrans.m
//  Fragrans
//
//  Created by qmz on 2019/1/30.
//

#import "NSString+Fragrans.h"
#import "NSObject+Fragrans.h"
#import <objc/runtime.h>
#import <CommonCrypto/CommonDigest.h>
#import <CommonCrypto/CommonCryptor.h>
#import "UIFont+Fragrans.h"
@implementation NSString (Fragrans)

+(void)load {
    [super load];
    //保证方法只交换一次
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        //交换NSString中的characterAtIndex:方法
        [objc_getClass("__NSCFConstantString") exchangeInstanceMethod:@selector(characterAtIndex:) targetMethod:@selector(frg_characterAtIndex:) error:nil];
        //交换NSString中的substringFromIndex:方法
        [objc_getClass("__NSCFConstantString") exchangeInstanceMethod:@selector(substringFromIndex:) targetMethod:@selector(frg_substringFromIndex:) error:nil];
        //交换NSString中的substringToIndex:方法
        [objc_getClass("__NSCFConstantString") exchangeInstanceMethod:@selector(substringToIndex:) targetMethod:@selector(frg_substringToIndex:) error:nil];
        //交换NSString中的substringWithRange:方法
        [objc_getClass("__NSCFConstantString") exchangeInstanceMethod:@selector(substringWithRange:) targetMethod:@selector(frg_substringWithRange:) error:nil];
        //交换NSString中的stringByReplacingCharactersInRange:withString:方法
        [objc_getClass("__NSCFConstantString") exchangeInstanceMethod:@selector(stringByReplacingCharactersInRange:withString:) targetMethod:@selector(frg_stringByReplacingCharactersInRange:withString:) error:nil];
    });
}

- (unichar)frg_characterAtIndex:(NSUInteger)index {
    if (index > self.length) {
        unichar characterChar = 0;
        NSString *errorInfo = @"*** -[__NSCFConstantString characterAtIndex:]: index out of bounds";
        NSLog(@"%@",errorInfo);
        return characterChar;
    }
    return [self frg_characterAtIndex:index];
}

- (NSString *)frg_substringFromIndex:(NSUInteger)from {
    if (from > self.length) {
        NSString *errorInfo = @"*** -[__NSCFConstantString substringFromIndex:]: index out of bounds";
        NSLog(@"%@",errorInfo);
        return @"";
    }
    return [self frg_substringFromIndex:from];
}

- (NSString *)frg_substringToIndex:(NSUInteger)to {
    if (to > self.length) {
        NSString *errorInfo = @"*** -[__NSCFConstantString substringToIndex:]: index out of bounds";
        NSLog(@"%@",errorInfo);
        return @"";
    }
    return [self frg_substringToIndex:to];
}

- (NSString *)frg_substringWithRange:(NSRange)range {
    if (range.location+range.length > self.length) {
        NSString *errorInfo = @"*** -[__NSCFConstantString substringWithRange:]: range out of bounds";
        NSLog(@"%@",errorInfo);
        return @"";
    }
    return [self frg_substringWithRange:range];
}

- (NSString *)frg_stringByReplacingCharactersInRange:(NSRange)range withString:(NSString *)replacement {
    if (range.location+range.length > self.length) {
        NSString *errorInfo = [NSString stringWithFormat:@"*** -[__NSCFConstantString replaceCharactersInRange:withString:]: range out of bounds"];
        NSLog(@"%@",errorInfo);
        return @"";
    }
    return [self frg_stringByReplacingCharactersInRange:range withString:replacement];
}

/**
 返回安全字符串
 针对NSNumber类型转字符串，针对nil、Nil、NULL、NSNull对象转成空字符串。
 @param string 字符串
 @return safe String
 */
+ (NSString *)safeString:(NSString *)string {
    if ([string isKindOfClass:[NSNumber class]]) {
        NSNumber   *numStr = (NSNumber *)string;
        return [numStr stringValue];
    }else if ([NSObject isEmpty:string] ||
              [string isEqualToString:@"null"] ||
              [string isEqualToString:@"<null>"] ||
              [string isEqualToString:@"(null)"]) {
        return @"";
    }
    return [NSString stringWithFormat:@"%@",string];
}

/**
 判断字符串是否为空
 
 @param string 字符串
 @return 字符串是否为空值
 */
+ (BOOL)isBlankString:(NSString *)string {
    if (string == NULL ||
        [string isEqual:nil] ||
        [string isEqual:Nil]) {
        return YES;
    }else if ([string isEqual:[NSNull null]]) {
        return YES;
    }else if ([string length] == 0 ||
              [[string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]]length] == 0) {
        return YES;
    }else if ([string isEqualToString:@"null"] ||
              [string isEqualToString:@"<null>"] ||
              [string isEqualToString:@"(null)"]) {
        return YES;
    }
    return NO;
}

/**
 生成随机字符
 默认长度为1
 @return 随机字符
 */
+ (NSString *)randomString {
    return [self randomStringWithlength:1 unique:NO];
}

/**
 生成随机字符
 @param length 随机的长度
 @return 随机字符
 */
+ (NSString *)randomStringWithlength:(NSInteger)length {
    return [self randomStringWithlength:length unique:NO];
}

/**
 生成随机字符
 @param length 随机的长度
 @param unique 同一时间内，随机出的字符串是否唯一
 @return 随机字符
 */
+ (NSString *)randomStringWithlength:(NSInteger)length unique:(BOOL)unique {
    NSString *sourceStr = @"0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
    NSMutableString *resultStr = [[NSMutableString alloc] init];
    if (unique) {
        srand((unsigned)time(0));//同一时间内随机出的字符串唯一
    }
    for (int i = 0; i < length; i++) {
        unsigned index = rand() % [sourceStr length];
        NSString *oneStr = [sourceStr substringWithRange:NSMakeRange(index, 1)];
        [resultStr appendString:oneStr];
    }
    return resultStr;
}

/**
 判断手机号码是否合法
 
 @return 返回判断结果
 */
- (BOOL)isPhoneNumberValid {
    NSString   *mobileRegex = @"^1+[0-9]{1}+[0-9]{9}$";
    NSPredicate   *mobilePredicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",mobileRegex];
    BOOL   isValid = [mobilePredicate evaluateWithObject:self];
    return isValid;
}

/**
 判断邮箱是否合法
 
 @return 返回判断结果
 */
- (BOOL)isEmailValidate {
    NSString   *emailRegex = @"[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
    NSPredicate   *emailPredicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",emailRegex];
    BOOL  isValid = [emailPredicate evaluateWithObject:self];
    return isValid;
}

/**
 判断是否是中英文
 
 @return 返回判断结果
 */
- (BOOL)isEnglishAndChinese {
    NSString   *regex = @"^[A-Za-z\u4E00-\u9FA5]*$";
    NSPredicate   *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex];
    BOOL isValid = [predicate evaluateWithObject:self];
    return isValid;
}

/**
 判断是否是中文
 
 @return 返回判断结果
 */
- (BOOL)isChinese {
    NSString   *regex = @"^[\u4E00-\u9FA5]*$";
    NSPredicate   *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex];
    BOOL isValid = [predicate evaluateWithObject:self];
    return isValid;
}

/**
 判断是否是纯数字
 
 @return 返回判断结果
 */
- (BOOL)isNumberText {
    NSString   *numStr = [self stringByTrimmingCharactersInSet:[NSCharacterSet decimalDigitCharacterSet]];
    if ([numStr stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]].length > 0) {
        return NO;
    }else {
        return YES;
    }
}

/**
 判断密码是否合法
 6-20位数字和字母组合
 
 @return 返回判断结果
 */
- (BOOL)isPassword {
    NSString   *regex = @"^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6,20}$";
    NSPredicate   *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex];
    BOOL isValid = [predicate evaluateWithObject:self];
    return isValid;
}

/**
 判断用户昵称是否合法
 10位中英文
 
 @return 返回判断结果
 */
- (BOOL)isUsername {
    NSString   *regex = @"^[a-zA-Z一-龥]{1,10}";
    NSPredicate   *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex];
    BOOL isValid = [predicate evaluateWithObject:self];
    return isValid;
}

/**
 判断用户身份证号是否合法
 
 @return 返回判断结果
 */
- (BOOL)isUserIdCard {
    NSString   *regex = @"(^[0-9]{15}$) | ([0-9]{17}([0-9] |X|x)$)";
    NSPredicate   *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex];
    BOOL isValid = [predicate evaluateWithObject:self];
    return isValid;
}

/**
 判断url是否合法
 
 @return 返回判断结果
 */
- (BOOL)isURL {
    NSString   *regex = @"\\bhttps?://[a-zA-Z0-9\\-.]+(?::(\\d+))?(?:(?:/[a-zA-Z0-9\\-._?,'+\\&%$=~*!():@\\\\]*)+)?";
    NSPredicate   *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex];
    BOOL isValid = [predicate evaluateWithObject:self];
    return isValid;
}

/**
 是否为整数
 
 @return 返回判断结果
 */
- (BOOL)isPureInt {
    NSScanner   *intScan = [NSScanner scannerWithString:self];
    int val;
    return [intScan scanInt:&val] && [intScan isAtEnd];
}

/**
 是否为浮点数
 
 @return 返回判断结果
 */
- (BOOL)isPureFloat {
    NSScanner   *floatScan = [NSScanner scannerWithString:self];
    float  val;
    return [floatScan scanFloat:&val] && [floatScan isAtEnd];
}

/**
 判断是否包含html
 
 @return 返回判断结果
 */
- (BOOL)isContainHtml {
    if([self rangeOfString:@"<"].location == NSNotFound && [self rangeOfString:@"/>"].location == NSNotFound) {
        return NO;
    }
    return YES;
}

/**
 判断是否包含Emoji表情
 
 @return 返回判断结果
 */
- (BOOL)isContainEmoji {
    __block BOOL returnValue = NO;
    [self enumerateSubstringsInRange:NSMakeRange(0, [self length]) options:NSStringEnumerationByComposedCharacterSequences usingBlock:^(NSString *substring, NSRange substringRange, NSRange enclosingRange, BOOL *stop) {
        const unichar hs = [substring characterAtIndex:0];
        // surrogate pair
        if (0xd800 <= hs && hs <= 0xdbff) {
            if (substring.length > 1) {
                const unichar ls = [substring characterAtIndex:1];
                const int uc = ((hs - 0xd800) * 0x400) + (ls - 0xdc00) + 0x10000;
                if (0x1d000 <= uc && uc <= 0x1f77f) {
                    returnValue = YES;
                }
            }
        } else if (substring.length > 1) {
            const unichar ls = [substring characterAtIndex:1];
            if (ls == 0x20e3) {
                returnValue = YES;
            }
        }
    }];
    return returnValue;
}

/**
 过滤空格
 
 @return 处理后的字符串
 */
- (NSString *)trimSpaceString {
    return [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
}

/**
 多个空格归为一个空格
 
 @return 处理后的字符串
 */
- (NSString *)stripBlankSpaceString {
    if (self.length) {
        NSMutableString   *mutableStr = [NSMutableString stringWithString:self];
        NSRegularExpression   *regular = [NSRegularExpression regularExpressionWithPattern:@" +" options:NSRegularExpressionCaseInsensitive error:nil];
        [regular replaceMatchesInString:mutableStr options:NSMatchingReportProgress range:NSMakeRange(0, mutableStr.length) withTemplate:@" "];
        return mutableStr;
    }else {
        return self;
    }
}

/**
 移除最后一个字符
 
 @return 返回处理后的字符串
 */
- (NSString *)removeLastChar {
    NSString   *cutStr;
    if (self.length >= 1) {
        cutStr = [self substringToIndex:([self length] - 1)];
    }else {
        cutStr = self;
    }
    return cutStr;
}

/**
 提取字符串中的数字
 
 @return 返回处理后的字符串
 */
- (NSString *)extractNumber {
    NSCharacterSet *nonDigitCharacterSet = [[NSCharacterSet decimalDigitCharacterSet] invertedSet];
    return [[[NSString safeString:self] componentsSeparatedByCharactersInSet:nonDigitCharacterSet] componentsJoinedByString:@""];
}

/**
 计算字节，中文两个字节，英文一个字节
 
 @return 字节长度
 */
- (NSUInteger)unicodeLength {
    NSUInteger  asciiLength = 0;
    for (NSUInteger i = 0; i < self.length; i ++) {
        unichar uChar = [self characterAtIndex:i];
        asciiLength += isascii(uChar) ? 1 : 2;
    }
     
    NSUInteger  unicodeLength = asciiLength / 2;
    if (asciiLength % 2) {
        unicodeLength ++;
    }
    return unicodeLength;
}

/**
 根据字体和展示范围计算size
 
 @param font 字体 UIFont或者NSString或者NSNumber格式
 @param size 大小
 @param lineBreakModel 换行方式
 @param spacing 行间距
 @return 文本size
 */
- (CGSize)boundingRectWithFont:(id)font size:(CGSize)size mode:(NSLineBreakMode)lineBreakModel lineSpacing:(CGFloat)spacing {
    NSMutableDictionary   *mutableDic = [NSMutableDictionary dictionary];
    mutableDic[NSFontAttributeName] = [UIFont safeFont:font baseFont:@17];
    if (lineBreakModel != NSLineBreakByWordWrapping) {
        NSMutableParagraphStyle   *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
        paragraphStyle.lineSpacing = spacing;
        paragraphStyle.lineBreakMode = lineBreakModel;
        mutableDic[NSParagraphStyleAttributeName] = paragraphStyle;
    }
    CGRect   rect = [self boundingRectWithSize:size
                                       options:NSStringDrawingUsesLineFragmentOrigin |
                                               NSStringDrawingUsesFontLeading
                                       attributes:mutableDic
                                       context:nil];
    return rect.size;
    
}

/**
 多行文本计算高度
 
 @param font 字体 UIFont或者NSString或者NSNumber格式
 @param width 宽度
 @return 高度
 */
- (CGFloat)boundingHeightForFont:(id)font width:(CGFloat)width {
    CGSize  size = [self boundingRectWithFont:font size:CGSizeMake(width, MAXFLOAT) mode:NSLineBreakByWordWrapping lineSpacing:0];
    return size.height;
}

/**
 单行文本计算宽度
 
 @param font 字体 UIFont或者NSString或者NSNumber格式
 @return 宽度
 */
- (CGFloat)boundingWidthForFont:(id)font {
    CGSize  size = [self boundingRectWithFont:font size:CGSizeMake(MAXFLOAT, MAXFLOAT) mode:NSLineBreakByWordWrapping lineSpacing:0];
    return size.width;
}

/**
 单行文本计算高度
 
 @param font 字体 UIFont或者NSString或者NSNumber格式
 @return 高度
 */
- (CGFloat)boundingHeightForFont:(id)font {
    CGSize  size = [self boundingRectWithFont:font size:CGSizeMake(MAXFLOAT, MAXFLOAT) mode:NSLineBreakByWordWrapping lineSpacing:0];
    return size.height;
}

/**
 单行文本计算宽高
 
 @param font 字体 UIFont或者NSString或者NSNumber格式
 @return 高度
 */
- (CGSize)boundingSizeForFont:(id)font {
    CGSize  size = [self boundingRectWithFont:font size:CGSizeMake(MAXFLOAT, MAXFLOAT) mode:NSLineBreakByWordWrapping lineSpacing:0];
    return size;
}

/**
 字符串转数组
 
 @return 转化的数组
 */
- (NSArray *)toArray {
    if ([NSString safeString:self].length <= 0) {
        return @[];
    }
    NSMutableArray   *array = [NSMutableArray array];
    for (int i = 0; i < [NSString safeString:self].length; i ++) {
        NSString  *member = [[NSString safeString:self] substringWithRange:NSMakeRange(i, 1)];
        [array addObject:member];
    }
    return array;
}

/**
 字符串转NSData
 */
- (NSData *)toData {
    NSString  *string = [NSString safeString:self];
    return [string dataUsingEncoding:NSUTF8StringEncoding];
}

/**
 json字符串转字典
 */
- (NSDictionary *)toDictionary {
    if ([NSObject isEmpty:self]) {
        return nil;
    }
    NSString  *jsonString = [NSString safeString:self];
    NSData *jsonData = [jsonString dataUsingEncoding:NSUTF8StringEncoding];
    NSError *err;
    NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingMutableContainers error:&err];
    if(err) {
        NSLog(@"json解析失败：%@",err);
        return nil;
    }
    return dic;
}

/**
 字符串转char *
 */
- (const char *)toChar:(NSString *)string {
    string = [NSString safeString:string];
    return [string UTF8String];
}

/**
 char *转NSString
 */
+ (NSString *)stringFromChar:(char *)cha {
    if (!cha) {
        return @"";
    }
    return [NSString stringWithCString:cha encoding:NSUTF8StringEncoding];
}

/**C
 去除字符串中的html标签对
 */
+ (NSString *)filterHTML:(NSString *)htmlString {
    htmlString = [NSString safeString:htmlString];
    if (![htmlString isContainHtml]) {
        return htmlString;
    }
    NSScanner * scanner_l = [NSScanner scannerWithString:htmlString];
    NSString * text_l = nil;
    while([scanner_l isAtEnd]==NO) {
        //找到标签的起始位置
        [scanner_l scanUpToString:@"<" intoString:nil];
        //找到标签的结束位置
        [scanner_l scanUpToString:@">" intoString:&text_l];
        //替换字符
        htmlString = [htmlString stringByReplacingOccurrencesOfString:[NSString stringWithFormat:@"%@>",text_l] withString:@""];
    }
    NSScanner * scanner_m = [NSScanner scannerWithString:htmlString];
    NSString * text_m = nil;
    while([scanner_m isAtEnd]==NO) {
        //找到标签的起始位置
        [scanner_m scanUpToString:@"&" intoString:nil];
        //找到标签的结束位置
        [scanner_m scanUpToString:@";" intoString:&text_m];
        //替换字符
        htmlString = [htmlString stringByReplacingOccurrencesOfString:[NSString stringWithFormat:@"%@;",text_m] withString:@""];
    }
    return htmlString;
}

/**
 取出html的图片资源
 
 @return 返回数组
 */
+ (NSArray *)fromHTMLGetImageSourceWith:(NSString *)string {
    NSRegularExpression *imgRegular = [[NSRegularExpression alloc] initWithPattern:@"<(img|IMG)[^\\<\\>]*>" options:0 error:nil];
    NSArray *regulars = [imgRegular matchesInString:string options:NSMatchingReportProgress range:NSMakeRange(0, string.length)];
    NSMutableArray *mutArr = [NSMutableArray arrayWithCapacity:1];
    for (NSTextCheckingResult *match in regulars) {
        NSRange matchRange = [match range];//返回的是每个imgb标签的位置
        NSString *imgDivStr = [string substringWithRange:matchRange];//根据位置找对应img标签
        imgDivStr = [imgDivStr stringByReplacingOccurrencesOfString:@" " withString:@""];
        NSString *imgUrl = [[imgDivStr componentsSeparatedByString:@"src=\""] lastObject];
        imgUrl = [[imgUrl componentsSeparatedByString:@"\""] firstObject];
        if ([imgUrl containsString:@"http://"]) {
            [mutArr addObject:imgUrl];
        }
    }
    return [NSArray arrayWithArray:mutArr];
}

/**
 去除字符串中的Emoji表情
 */
+ (NSString *)filterEmoji:(NSString *)emojiString {
    NSString   *tempStr = [[NSString alloc]init];
    NSMutableString *filterString = [[NSMutableString alloc]init];
    NSMutableArray *array = [NSMutableArray arrayWithCapacity:10];
    NSMutableString *strMu = [[NSMutableString alloc]init];
    for(int i =0; i < [emojiString length]; i++)
    {
        tempStr = [emojiString substringWithRange:NSMakeRange(i, 1)];
        [strMu appendString:tempStr];
        if ([strMu isContainEmoji]) {
            strMu = [[strMu substringToIndex:([strMu length]-2)] mutableCopy];
            [array removeLastObject];
            continue;
        }else
            [array addObject:tempStr];
    }
    for (NSString *strs in array) {
        [filterString appendString:strs];
    }
    return filterString;
}

/**
 md5 加密
 */
+ (NSString *)encrypt_md5With:(NSString *)encryptString {
    const char  *cStr = [encryptString UTF8String];
    unsigned char result[CC_MD5_DIGEST_LENGTH];
    CC_MD5(cStr, (uint32_t)strlen(cStr), result);
    NSMutableString *ret = [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH];
    for (NSInteger i=0; i<CC_MD5_DIGEST_LENGTH; i++) {
        [ret appendFormat:@"%02x", result[i]];
    }
    return ret;
}

/**
 AES 对string加密
 
 @param encryptString   需要加密的string
 @param secretKeyString 解密的string（解密时需要的string）
 @return 返回加密后的string
 */
+ (NSString *)encryptAESWithString:(NSString *)encryptString secretKey:(NSString *)secretKeyString {
    const char  *cStr = [encryptString cStringUsingEncoding:NSUTF8StringEncoding];
    NSData  *data = [NSData dataWithBytes:cStr length:[encryptString length]];
    //对数据进行加密
    NSData *result = [self encryptAESWithData:data secretKey:secretKeyString];
    //转换为2进制字符串
    if(result && result.length > 0) {
        Byte *datas = (Byte *)[result bytes];
        NSMutableString *outPut = [NSMutableString stringWithCapacity:result.length];
        for(int i = 0 ; i < result.length ; i++) {
            [outPut appendFormat:@"%02x",datas[i]];
        }
        return outPut;
    }
    return nil;
}

/**
 给AES加密后的string解密
 
 @param decryptString 需要解密的string
 @param secretKeyString 解密的string（需要与加密时的secretKeyString一致）
 @return 返回解密后的字符串
 */
+ (NSString *)decryptAESWithString:(NSString *)decryptString secretKey:(NSString *)secretKeyString {
    NSMutableData *data = [NSMutableData dataWithCapacity:decryptString.length/2.0];
    unsigned char whole_bytes;
    char byte_chars[3] = {'\0','\0','\0'};
    int i;
    for(i = 0 ; i < [decryptString length]/2 ; i++) {
        byte_chars[0] = [decryptString characterAtIndex:i * 2];
        byte_chars[1] = [decryptString characterAtIndex:i * 2 + 1];
        whole_bytes = strtol(byte_chars, NULL, 16);
        [data appendBytes:&whole_bytes length:1];
    }
    NSData *result = [self decryptAESWithData:data secretKey:secretKeyString];
    if(result && result.length > 0) {
        return [[NSString alloc] initWithData:result encoding:NSUTF8StringEncoding];
    }
    return nil;
}

/**
 AES 对NSData加密
 
 @param encryptData   需要加密的data
 @param secretKeyString 解密的string（解密时需要的string）
 @return 返回加密后的data
 */
+ (NSData *)encryptAESWithData:(NSData *)encryptData secretKey:(NSString *)secretKeyString {
    char keyPtr[kCCKeySizeAES128 + 1];
    bzero(keyPtr, sizeof(keyPtr));
    [secretKeyString getCString:keyPtr maxLength:sizeof(secretKeyString) encoding:NSUTF8StringEncoding];
    NSUInteger dataLength = [encryptData length];
    size_t bufferSize = dataLength + kCCBlockSizeAES128;
    void *buffer = malloc(bufferSize);
    size_t numBytesEncrypted = 0;
    CCCryptorStatus cryptStatus = CCCrypt(kCCEncrypt,
                                          kCCAlgorithmAES128,
                                          kCCOptionPKCS7Padding | kCCOptionECBMode,
                                          keyPtr,
                                          kCCBlockSizeAES128,
                                          NULL,
                                          [encryptData bytes],
                                          dataLength,
                                          buffer,
                                          bufferSize,
                                          &numBytesEncrypted);
    
    if(cryptStatus == kCCSuccess) {
        return [NSData dataWithBytesNoCopy:buffer length:numBytesEncrypted];
    }
    free(buffer);
    return nil;
}

/**
 AES 对NSData解密
 
 @param decryptData   需要解密的data
 @param secretKeyString 解密的string (需要与加密时的secretKeyString一致）
 @return 返回解密后的data
 */
+ (NSData *)decryptAESWithData:(NSData *)decryptData secretKey:(NSString *)secretKeyString {
    char keyPtr[kCCKeySizeAES128 + 1];
    bzero(keyPtr, sizeof(keyPtr));
    [secretKeyString getCString:keyPtr maxLength:sizeof(keyPtr) encoding:NSUTF8StringEncoding];
    NSUInteger dataLength = [decryptData length];
    size_t bufferSize = dataLength + kCCBlockSizeAES128;
    void *buffer = malloc(bufferSize);
    size_t numBytesDecrypted = 0;
    CCCryptorStatus cryptStatus = CCCrypt(kCCDecrypt, kCCAlgorithmAES128, kCCOptionPKCS7Padding | kCCOptionECBMode, keyPtr, kCCBlockSizeAES128, NULL, [decryptData bytes], dataLength, buffer, bufferSize, &numBytesDecrypted);
    if(cryptStatus == kCCSuccess) {
        return [NSData dataWithBytesNoCopy:buffer length:numBytesDecrypted];
    }
    free(buffer);
    return nil;
    
}

/**
 url中的字符串转化
 将字符串以URL格式编码
 
 @param string 传入urlString
 @return 转义后的urlString
 */
+ (NSString *)stringToUrlStringEncoding:(NSString *)string {
    NSString *encodedString = (NSString *)CFBridgingRelease(CFURLCreateStringByAddingPercentEscapes(kCFAllocatorDefault,(CFStringRef)string,(CFStringRef)@"!$&'()*+,-./:;=?@_~%#[]", NULL,kCFStringEncodingUTF8));
    return encodedString;
}




@end
