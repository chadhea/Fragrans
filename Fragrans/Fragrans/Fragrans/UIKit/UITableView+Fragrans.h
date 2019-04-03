//
//  UITableView+Fragrans.h
//  Fragrans
//
//  Created by qmz on 2019/3/11.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UITableView (Fragrans)

/**
 create tableView by UITableViewStyle
 
 */
- (UITableView *)initWithStyle:(UITableViewStyle)style;

/**
 create tableView by UITableViewStyle
 
 */
+ (UITableView *)tableViewWithStyle:(UITableViewStyle)style;

/**
 create tableView by UITableViewStyle + UITableViewCellSeparatorStyle
 
 */
- (UITableView *)initWithStyle:(UITableViewStyle)style separatorStyle:(UITableViewCellSeparatorStyle)separatorStyle;

/**
 create tableView by UITableViewStyle + UITableViewCellSeparatorStyle
 
 */
+ (UITableView *)tableViewWithStyle:(UITableViewStyle)style separatorStyle:(UITableViewCellSeparatorStyle)separatorStyle;

/**
 create tableView by UITableViewStyle + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITableView *)initWithStyle:(UITableViewStyle)style backgroundColor:(id)backgroundColor;

/**
 create tableView by UITableViewStyle + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITableView *)tableViewWithStyle:(UITableViewStyle)style backgroundColor:(id)backgroundColor;

/**
 create tableView by UITableViewStyle + UITableViewCellSeparatorStyle + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITableView *)initWithStyle:(UITableViewStyle)style separatorStyle:(UITableViewCellSeparatorStyle)separatorStyle backgroundColor:(id)backgroundColor;

/**
 create tableView by UITableViewStyle + UITableViewCellSeparatorStyle + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITableView *)tableViewWithStyle:(UITableViewStyle)style separatorStyle:(UITableViewCellSeparatorStyle)separatorStyle backgroundColor:(id)backgroundColor;

/**
 create tableView by UITableViewStyle + delegateAndDataSource
 
 */
- (UITableView *)initWithStyle:(UITableViewStyle)style delegateAndDataSource:(id)delegateAndDataSource;

/**
 create tableView by UITableViewStyle + delegateAndDataSource
 
 */
+ (UITableView *)tableViewWithStyle:(UITableViewStyle)style delegateAndDataSource:(id)delegateAndDataSource;

/**
 create tableView by UITableViewStyle + UITableViewCellSeparatorStyle + delegateAndDataSource
 
 */
- (UITableView *)initWithStyle:(UITableViewStyle)style separatorStyle:(UITableViewCellSeparatorStyle)separatorStyle delegateAndDataSource:(id)delegateAndDataSource;

/**
 create tableView by UITableViewStyle + UITableViewCellSeparatorStyle + delegateAndDataSource
 
 */
+ (UITableView *)tableViewWithStyle:(UITableViewStyle)style separatorStyle:(UITableViewCellSeparatorStyle)separatorStyle delegateAndDataSource:(id)delegateAndDataSource;

/**
 create tableView by UITableViewStyle + backgroundColor + delegateAndDataSource
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITableView *)initWithStyle:(UITableViewStyle)style backgroundColor:(id)backgroundColor delegateAndDataSource:(id)delegateAndDataSource;

/**
 create tableView by UITableViewStyle + backgroundColor + delegateAndDataSource
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITableView *)tableViewWithStyle:(UITableViewStyle)style backgroundColor:(id)backgroundColor delegateAndDataSource:(id)delegateAndDataSource;

/**
 create tableView by UITableViewStyle + UITableViewCellSeparatorStyle
 + backgroundColor + delegateAndDataSource
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITableView *)initWithStyle:(UITableViewStyle)style separatorStyle:(UITableViewCellSeparatorStyle)separatorStyle backgroundColor:(id)backgroundColor delegateAndDataSource:(id)delegateAndDataSource;

/**
 create tableView by UITableViewStyle + UITableViewCellSeparatorStyle
 + backgroundColor + delegateAndDataSource
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITableView *)tableViewWithStyle:(UITableViewStyle)style separatorStyle:(UITableViewCellSeparatorStyle)separatorStyle backgroundColor:(nullable id)backgroundColor delegateAndDataSource:(nullable id)delegateAndDataSource;

/**
 create tableView by frame + UITableViewStyle + UITableViewCellSeparatorStyle
 
 */
- (UITableView *)initWithFrame:(CGRect)frame style:(UITableViewStyle)style separatorStyle:(UITableViewCellSeparatorStyle)separatorStyle;

/**
 create tableView by frame + UITableViewStyle + UITableViewCellSeparatorStyle
 
 */
+ (UITableView *)tableViewWithFrame:(CGRect)frame style:(UITableViewStyle)style separatorStyle:(UITableViewCellSeparatorStyle)separatorStyle;

/**
 create tableView by frame + UITableViewStyle + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITableView *)initWithFrame:(CGRect)frame style:(UITableViewStyle)style backgroundColor:(id)backgroundColor;

/**
 create tableView by frame + UITableViewStyle + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITableView *)tableViewWithFrame:(CGRect)frame style:(UITableViewStyle)style backgroundColor:(id)backgroundColor;

/**
 create tableView by frame + UITableViewStyle + UITableViewCellSeparatorStyle + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITableView *)initWithFrame:(CGRect)frame style:(UITableViewStyle)style separatorStyle:(UITableViewCellSeparatorStyle)separatorStyle backgroundColor:(id)backgroundColor;

/**
 create tableView by frame + UITableViewStyle + UITableViewCellSeparatorStyle + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITableView *)tableViewWithFrame:(CGRect)frame style:(UITableViewStyle)style separatorStyle:(UITableViewCellSeparatorStyle)separatorStyle backgroundColor:(id)backgroundColor;

/**
 create tableView by frame + UITableViewStyle + delegateAndDataSource
 
 */
- (UITableView *)initWithFrame:(CGRect)frame style:(UITableViewStyle)style delegateAndDataSource:(id)delegateAndDataSource;

/**
 create tableView by frame + UITableViewStyle + delegateAndDataSource
 
 */
+ (UITableView *)tableViewWithFrame:(CGRect)frame style:(UITableViewStyle)style delegateAndDataSource:(id)delegateAndDataSource;

/**
 create tableView by frame + UITableViewStyle + UITableViewCellSeparatorStyle
 + delegateAndDataSource
 
 */
- (UITableView *)initWithFrame:(CGRect)frame style:(UITableViewStyle)style separatorStyle:(UITableViewCellSeparatorStyle)separatorStyle delegateAndDataSource:(id)delegateAndDataSource;

/**
 create tableView by frame + UITableViewStyle + UITableViewCellSeparatorStyle
 + delegateAndDataSource
 
 */
+ (UITableView *)tableViewWithFrame:(CGRect)frame style:(UITableViewStyle)style separatorStyle:(UITableViewCellSeparatorStyle)separatorStyle delegateAndDataSource:(id)delegateAndDataSource;

/**
 create tableView by frame + UITableViewStyle + backgroundColor + delegateAndDataSource
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITableView *)initWithFrame:(CGRect)frame style:(UITableViewStyle)style backgroundColor:(id)backgroundColor delegateAndDataSource:(id)delegateAndDataSource;

/**
 create tableView by frame + UITableViewStyle + backgroundColor + delegateAndDataSource
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITableView *)tableViewWithFrame:(CGRect)frame style:(UITableViewStyle)style backgroundColor:(id)backgroundColor delegateAndDataSource:(id)delegateAndDataSource;

/**
 create tableView by frame + UITableViewStyle + UITableViewCellSeparatorStyle
 + backgroundColor + delegateAndDataSource
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITableView *)initWithFrame:(CGRect)frame style:(UITableViewStyle)style separatorStyle:(UITableViewCellSeparatorStyle)separatorStyle backgroundColor:(id)backgroundColor delegateAndDataSource:(id)delegateAndDataSource;

/**
 create tableView by frame + UITableViewStyle + UITableViewCellSeparatorStyle
 + backgroundColor + delegateAndDataSource
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITableView *)tableViewWithFrame:(CGRect)frame style:(UITableViewStyle)style separatorStyle:(UITableViewCellSeparatorStyle)separatorStyle backgroundColor:(nullable id)backgroundColor delegateAndDataSource:(nullable id)delegateAndDataSource;

/**
 create tableView by center and bounds
 
 */
- (UITableView *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds;

/**
 create tableView by center and bounds
 
 */
+ (UITableView *)tableViewWithCenter:(CGPoint)center bounds:(CGRect)bounds;

/**
 create tableView by center and bounds + UITableViewStyle
 
 */
- (UITableView *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds style:(UITableViewStyle)style;

/**
 create tableView by center and bounds + UITableViewStyle
 
 */
+ (UITableView *)tableViewWithCenter:(CGPoint)center bounds:(CGRect)bounds style:(UITableViewStyle)style;

/**
 create tableView by center and bounds + UITableViewStyle + UITableViewCellSeparatorStyle
 
 */
- (UITableView *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds style:(UITableViewStyle)style separatorStyle:(UITableViewCellSeparatorStyle)separatorStyle;

/**
 create tableView by center and bounds + UITableViewStyle + UITableViewCellSeparatorStyle
 
 */
+ (UITableView *)tableViewWithCenter:(CGPoint)center bounds:(CGRect)bounds style:(UITableViewStyle)style separatorStyle:(UITableViewCellSeparatorStyle)separatorStyle;

/**
 create tableView by center and bounds + UITableViewStyle + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITableView *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds style:(UITableViewStyle)style backgroundColor:(id)backgroundColor;

/**
 create tableView by center and bounds + UITableViewStyle + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITableView *)tableViewWithCenter:(CGPoint)center bounds:(CGRect)bounds style:(UITableViewStyle)style backgroundColor:(id)backgroundColor;

/**
 create tableView by center and bounds + UITableViewStyle + UITableViewCellSeparatorStyle
 + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITableView *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds style:(UITableViewStyle)style separatorStyle:(UITableViewCellSeparatorStyle)separatorStyle backgroundColor:(id)backgroundColor;

/**
 create tableView by center and bounds + UITableViewStyle + UITableViewCellSeparatorStyle
 + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITableView *)tableViewWithCenter:(CGPoint)center bounds:(CGRect)bounds style:(UITableViewStyle)style separatorStyle:(UITableViewCellSeparatorStyle)separatorStyle backgroundColor:(id)backgroundColor;

/**
 create tableView by center and bounds + UITableViewStyle + delegateAndDataSource
 
 */
- (UITableView *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds style:(UITableViewStyle)style delegateAndDataSource:(id)delegateAndDataSource;

/**
 create tableView by center and bounds + UITableViewStyle + delegateAndDataSource
 
 */
+ (UITableView *)tableViewWithCenter:(CGPoint)center bounds:(CGRect)bounds style:(UITableViewStyle)style delegateAndDataSource:(id)delegateAndDataSource;

/**
 create tableView by center and bounds + UITableViewStyle
 + UITableViewCellSeparatorStyle + delegateAndDataSource
 
 */
- (UITableView *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds style:(UITableViewStyle)style separatorStyle:(UITableViewCellSeparatorStyle)separatorStyle delegateAndDataSource:(id)delegateAndDataSource;

/**
 create tableView by center and bounds + UITableViewStyle + UITableViewCellSeparatorStyle
 + delegateAndDataSource
 
 */
+ (UITableView *)tableViewWithCenter:(CGPoint)center bounds:(CGRect)bounds style:(UITableViewStyle)style separatorStyle:(UITableViewCellSeparatorStyle)separatorStyle delegateAndDataSource:(id)delegateAndDataSource;

/**
 create tableView by center and bounds + UITableViewStyle + backgroundColor
 + delegateAndDataSource
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITableView *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds style:(UITableViewStyle)style backgroundColor:(id)backgroundColor delegateAndDataSource:(id)delegateAndDataSource;

/**
 create tableView by center and bounds + UITableViewStyle + backgroundColor
 + delegateAndDataSource
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITableView *)tableViewWithCenter:(CGPoint)center bounds:(CGRect)bounds style:(UITableViewStyle)style backgroundColor:(id)backgroundColor delegateAndDataSource:(id)delegateAndDataSource;

/**
 create tableView by center and bounds + UITableViewStyle + UITableViewCellSeparatorStyle
 + backgroundColor + delegateAndDataSource
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITableView *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds style:(UITableViewStyle)style separatorStyle:(UITableViewCellSeparatorStyle)separatorStyle backgroundColor:(id)backgroundColor delegateAndDataSource:(id)delegateAndDataSource;

/**
 create tableView by center and bounds + UITableViewStyle + UITableViewCellSeparatorStyle
 + backgroundColor + delegateAndDataSource
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITableView *)tableViewWithCenter:(CGPoint)center bounds:(CGRect)bounds style:(UITableViewStyle)style separatorStyle:(UITableViewCellSeparatorStyle)separatorStyle backgroundColor:(nullable id)backgroundColor delegateAndDataSource:(nullable id)delegateAndDataSource;



@end

NS_ASSUME_NONNULL_END
