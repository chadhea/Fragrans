//
//  NSData+Fragrans.m
//  Fragrans
//
//  Created by qmz on 2019/2/28.
//

#import "NSData+Fragrans.h"
#import "NSObject+Fragrans.h"
@implementation NSData (Fragrans)

/**
 是否为空
 */
- (BOOL)isEmpty {
    return [NSObject isEmpty:self];
}

/**
 NSData转NSString
 */
- (NSString *)toString {
    if ([self isEmpty]) {
        return @"";
    }
    return [[NSString alloc] initWithData:self encoding:NSUTF8StringEncoding];
}

/**
 NSData转NSString
 */
+ (NSString *)dataToString:(NSData *)data {
    if ([data isEmpty]) {
        return @"";
    }
    return [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
}

/**
 NSData转char *
 */
- (const char *)toChar {
    if ([self isEmpty]) {
        return nil;
    }
    return [self bytes];
}

/**
 char *转NSData
 */
+ (NSData *)dataFromChar:(char *)cha {
    if (!cha) {
        return [NSData data];
    }
    Byte  *byteData = malloc(sizeof(cha)*16);
    return [NSData dataWithBytes:byteData length:16];
}

/**
 修复破损的data数据
 */
+ (NSData *)replaceNoUTF_8Data:(NSData *)data {
    char aa[] = {'A','A','A','A','A','A'}; //utf8最多6个字符，当前方法未使用
    NSMutableData *md = [NSMutableData dataWithData:data];
    int loc = 0;
    while (loc < [md length])
    {
        char buffer;
        [md getBytes:&buffer range:NSMakeRange(loc, 1)];
        if ((buffer & 0x80) == 0) //0xxx xxxx 1个Byte
        {
            loc++;
            continue;
        }
        else if ((buffer & 0xE0) == 0xC0) //110x xxxx 2个Byte
        {
            loc++; //此处可能越界，要判断
            if (loc >= md.length) { //此时的buffer已经是最后一个Byte
                loc--;
                //非法字符，将这个字符（一个byte）替换为A
                [md replaceBytesInRange:NSMakeRange(loc, 1) withBytes:aa length:1];
                break;
            }
            [md getBytes:&buffer range:NSMakeRange(loc, 1)];
            if ((buffer & 0xC0) == 0x80) //10xx xxxx 第2个Byte
            {
                loc++;
                continue;
            }
            loc--;
            //非法字符，将这个字符（一个byte）替换为A
            [md replaceBytesInRange:NSMakeRange(loc, 1) withBytes:aa length:1];
            loc++;
            continue;
        }
        else if ((buffer & 0xF0) == 0xE0) //1110 xxxx 3个Byte
        {
            loc++; //此处可能越界，要判断
            if (loc >= md.length) { //此时的buffer已经是最后一个Byte
                loc--;
                //非法字符，将这个字符（一个byte）替换为A
                [md replaceBytesInRange:NSMakeRange(loc, 1) withBytes:aa length:1];
                break;
            }
            [md getBytes:&buffer range:NSMakeRange(loc, 1)];
            if ((buffer & 0xC0) == 0x80) //10xx xxxx 第2个Byte
            {
                loc++; //此处可能越界，要判断
                if (loc >= md.length) { //此时的buffer已经是最后一个Byte
                    loc--;
                    //非法字符，将这个字符（一个byte）替换为A
                    [md replaceBytesInRange:NSMakeRange(loc, 1) withBytes:aa length:1];
                    break;
                }
                [md getBytes:&buffer range:NSMakeRange(loc, 1)];
                if ((buffer & 0xC0) == 0x80) //10xx xxxx 第3个Byte
                {
                    loc++;
                    continue;
                }
                loc--;
            }
            loc--;
            //非法字符，将这个字符（一个byte）替换为A
            [md replaceBytesInRange:NSMakeRange(loc, 1) withBytes:aa length:1];
            loc++;
            continue;
        }
        else
        {
            //非法字符，将这个字符（一个byte）替换为A
            [md replaceBytesInRange:NSMakeRange(loc, 1) withBytes:aa length:1];
            loc++;
            continue;
        }
    }
    return md;
}

@end
