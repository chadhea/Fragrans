//
//  UICollectionViewCell+Fragrans.m
//  Fragrans
//
//  Created by qmz on 2019/1/31.
//

#import "UICollectionViewCell+Fragrans.h"
#import <objc/message.h>

@implementation UICollectionViewCell (Fragrans)
static char *SectionKey = "SectionKey";
static char *RowKey = "RowKey";
static char *GroupNameKey = "GroupNameKey";

- (void)setSection:(NSString *)section {
    objc_setAssociatedObject(self, SectionKey, section, OBJC_ASSOCIATION_COPY_NONATOMIC);
}
- (NSString *)section {
    return objc_getAssociatedObject(self, SectionKey);
}
- (void)setRow:(NSString *)row {
    objc_setAssociatedObject(self, RowKey, row, OBJC_ASSOCIATION_COPY_NONATOMIC);
}
- (NSString *)row {
    return objc_getAssociatedObject(self, RowKey);
}
- (void)setGroupName:(NSString *)groupName {
    objc_setAssociatedObject(self, GroupNameKey, groupName, OBJC_ASSOCIATION_COPY_NONATOMIC);
}
- (NSString *)groupName {
    return objc_getAssociatedObject(self, GroupNameKey);
}

@end
