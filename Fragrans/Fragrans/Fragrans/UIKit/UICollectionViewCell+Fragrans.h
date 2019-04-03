//
//  UICollectionViewCell+Fragrans.h
//  Fragrans
//
//  Created by qmz on 2019/1/31.
//

#import <UIKit/UIKit.h>

//NS_ASSUME_NONNULL_BEGIN

@interface UICollectionViewCell (Fragrans)
@property(nonatomic,copy )NSString   *section;/** 所在section */
@property(nonatomic,copy )NSString   *row;/** 所在row */
@property(nonatomic,copy )NSString   *groupName;/** 队名 */
@end

//NS_ASSUME_NONNULL_END
