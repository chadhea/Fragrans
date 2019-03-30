//
//  UITableView+Fragrans.m
//  Fragrans
//
//  Created by qmz on 2019/3/11.
//

#import "UITableView+Fragrans.h"
#import "UIColor+Fragrans.h"
@implementation UITableView (Fragrans)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wobjc-designated-initializers"

/**
 create tableView by UITableViewStyle
 
 */
- (UITableView *)initWithStyle:(UITableViewStyle)style {
    return [UITableView tableViewWithFrame:CGRectZero style:style separatorStyle:UITableViewCellSeparatorStyleNone backgroundColor:nil delegateAndDataSource:nil];
}

/**
 create tableView by UITableViewStyle
 
 */
+ (UITableView *)tableViewWithStyle:(UITableViewStyle)style {
    return [UITableView tableViewWithFrame:CGRectZero style:style separatorStyle:UITableViewCellSeparatorStyleNone backgroundColor:nil delegateAndDataSource:nil];
}

/**
 create tableView by UITableViewStyle + UITableViewCellSeparatorStyle
 
 */
- (UITableView *)initWithStyle:(UITableViewStyle)style separatorStyle:(UITableViewCellSeparatorStyle)separatorStyle {
    return [UITableView tableViewWithFrame:CGRectZero style:style separatorStyle:separatorStyle backgroundColor:nil delegateAndDataSource:nil];
}

/**
 create tableView by UITableViewStyle + UITableViewCellSeparatorStyle
 
 */
+ (UITableView *)tableViewWithStyle:(UITableViewStyle)style separatorStyle:(UITableViewCellSeparatorStyle)separatorStyle {
    return [UITableView tableViewWithFrame:CGRectZero style:style separatorStyle:separatorStyle backgroundColor:nil delegateAndDataSource:nil];
}

/**
 create tableView by UITableViewStyle + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITableView *)initWithStyle:(UITableViewStyle)style backgroundColor:(id)backgroundColor {
    return [UITableView tableViewWithFrame:CGRectZero style:style separatorStyle:UITableViewCellSeparatorStyleNone backgroundColor:backgroundColor delegateAndDataSource:nil];
}

/**
 create tableView by UITableViewStyle + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITableView *)tableViewWithStyle:(UITableViewStyle)style backgroundColor:(id)backgroundColor {
    return [UITableView tableViewWithFrame:CGRectZero style:style separatorStyle:UITableViewCellSeparatorStyleNone backgroundColor:backgroundColor delegateAndDataSource:nil];
}

/**
 create tableView by UITableViewStyle + UITableViewCellSeparatorStyle + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITableView *)initWithStyle:(UITableViewStyle)style separatorStyle:(UITableViewCellSeparatorStyle)separatorStyle backgroundColor:(id)backgroundColor {
    return [UITableView tableViewWithFrame:CGRectZero style:style separatorStyle:separatorStyle backgroundColor:backgroundColor delegateAndDataSource:nil];
}

/**
 create tableView by UITableViewStyle + UITableViewCellSeparatorStyle + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITableView *)tableViewWithStyle:(UITableViewStyle)style separatorStyle:(UITableViewCellSeparatorStyle)separatorStyle backgroundColor:(id)backgroundColor {
    return [UITableView tableViewWithFrame:CGRectZero style:style separatorStyle:separatorStyle backgroundColor:backgroundColor delegateAndDataSource:nil];
}

/**
 create tableView by UITableViewStyle + delegateAndDataSource
 
 */
- (UITableView *)initWithStyle:(UITableViewStyle)style delegateAndDataSource:(id)delegateAndDataSource {
    return [UITableView tableViewWithFrame:CGRectZero style:style separatorStyle:UITableViewCellSeparatorStyleNone backgroundColor:nil delegateAndDataSource:delegateAndDataSource];
}

/**
 create tableView by UITableViewStyle + delegateAndDataSource
 
 */
+ (UITableView *)tableViewWithStyle:(UITableViewStyle)style delegateAndDataSource:(id)delegateAndDataSource {
    return [UITableView tableViewWithFrame:CGRectZero style:style separatorStyle:UITableViewCellSeparatorStyleNone backgroundColor:nil delegateAndDataSource:delegateAndDataSource];
}

/**
 create tableView by UITableViewStyle + UITableViewCellSeparatorStyle + delegateAndDataSource
 
 */
- (UITableView *)initWithStyle:(UITableViewStyle)style separatorStyle:(UITableViewCellSeparatorStyle)separatorStyle delegateAndDataSource:(id)delegateAndDataSource {
    return [UITableView tableViewWithFrame:CGRectZero style:style separatorStyle:separatorStyle backgroundColor:nil delegateAndDataSource:delegateAndDataSource];
}

/**
 create tableView by UITableViewStyle + UITableViewCellSeparatorStyle + delegateAndDataSource
 
 */
+ (UITableView *)tableViewWithStyle:(UITableViewStyle)style separatorStyle:(UITableViewCellSeparatorStyle)separatorStyle delegateAndDataSource:(id)delegateAndDataSource {
    return [UITableView tableViewWithFrame:CGRectZero style:style separatorStyle:separatorStyle backgroundColor:nil delegateAndDataSource:delegateAndDataSource];
}

/**
 create tableView by UITableViewStyle + backgroundColor + delegateAndDataSource
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITableView *)initWithStyle:(UITableViewStyle)style backgroundColor:(id)backgroundColor delegateAndDataSource:(id)delegateAndDataSource {
    return [UITableView tableViewWithFrame:CGRectZero style:style separatorStyle:UITableViewCellSeparatorStyleNone backgroundColor:backgroundColor delegateAndDataSource:delegateAndDataSource];
}

/**
 create tableView by UITableViewStyle + backgroundColor + delegateAndDataSource
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITableView *)tableViewWithStyle:(UITableViewStyle)style backgroundColor:(id)backgroundColor delegateAndDataSource:(id)delegateAndDataSource {
    return [UITableView tableViewWithFrame:CGRectZero style:style separatorStyle:UITableViewCellSeparatorStyleNone backgroundColor:backgroundColor delegateAndDataSource:delegateAndDataSource];
}

/**
 create tableView by UITableViewStyle + UITableViewCellSeparatorStyle
 + backgroundColor + delegateAndDataSource
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITableView *)initWithStyle:(UITableViewStyle)style separatorStyle:(UITableViewCellSeparatorStyle)separatorStyle backgroundColor:(id)backgroundColor delegateAndDataSource:(id)delegateAndDataSource {
    return [UITableView tableViewWithFrame:CGRectZero style:style separatorStyle:separatorStyle backgroundColor:backgroundColor delegateAndDataSource:delegateAndDataSource];
}

/**
 create tableView by UITableViewStyle + UITableViewCellSeparatorStyle
 + backgroundColor + delegateAndDataSource
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITableView *)tableViewWithStyle:(UITableViewStyle)style separatorStyle:(UITableViewCellSeparatorStyle)separatorStyle backgroundColor:(nullable id)backgroundColor delegateAndDataSource:(nullable id)delegateAndDataSource {
    UITableView   *tableView = [[UITableView alloc] initWithFrame:CGRectZero style:style];
    if (separatorStyle >= UITableViewCellSeparatorStyleNone && separatorStyle <= UITableViewCellSeparatorStyleSingleLineEtched) {
        tableView.separatorStyle = separatorStyle;
    }else {
        tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    }
    tableView.backgroundColor = [UIColor safeColor:backgroundColor baseColor:[UIColor whiteColor]];
    if (delegateAndDataSource) {
        tableView.delegate = delegateAndDataSource;
        tableView.dataSource = delegateAndDataSource;
    }
    return tableView;
}

/**
 create tableView by frame + UITableViewStyle + UITableViewCellSeparatorStyle
 
 */
- (UITableView *)initWithFrame:(CGRect)frame style:(UITableViewStyle)style separatorStyle:(UITableViewCellSeparatorStyle)separatorStyle {
    return [UITableView tableViewWithFrame:frame style:style separatorStyle:separatorStyle backgroundColor:nil delegateAndDataSource:nil];
}

/**
 create tableView by frame + UITableViewStyle + UITableViewCellSeparatorStyle
 
 */
+ (UITableView *)tableViewWithFrame:(CGRect)frame style:(UITableViewStyle)style separatorStyle:(UITableViewCellSeparatorStyle)separatorStyle {
    return [UITableView tableViewWithFrame:frame style:style separatorStyle:separatorStyle backgroundColor:nil delegateAndDataSource:nil];
}

/**
 create tableView by frame + UITableViewStyle + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITableView *)initWithFrame:(CGRect)frame style:(UITableViewStyle)style backgroundColor:(id)backgroundColor {
    return [UITableView tableViewWithFrame:frame style:style separatorStyle:UITableViewCellSeparatorStyleNone backgroundColor:backgroundColor delegateAndDataSource:nil];
}

/**
 create tableView by frame + UITableViewStyle + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITableView *)tableViewWithFrame:(CGRect)frame style:(UITableViewStyle)style backgroundColor:(id)backgroundColor {
    return [UITableView tableViewWithFrame:frame style:style separatorStyle:UITableViewCellSeparatorStyleNone backgroundColor:backgroundColor delegateAndDataSource:nil];
}

/**
 create tableView by frame + UITableViewStyle + UITableViewCellSeparatorStyle + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITableView *)initWithFrame:(CGRect)frame style:(UITableViewStyle)style separatorStyle:(UITableViewCellSeparatorStyle)separatorStyle backgroundColor:(id)backgroundColor {
    return [UITableView tableViewWithFrame:frame style:style separatorStyle:separatorStyle backgroundColor:backgroundColor delegateAndDataSource:nil];
}

/**
 create tableView by frame + UITableViewStyle + UITableViewCellSeparatorStyle + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITableView *)tableViewWithFrame:(CGRect)frame style:(UITableViewStyle)style separatorStyle:(UITableViewCellSeparatorStyle)separatorStyle backgroundColor:(id)backgroundColor {
    return [UITableView tableViewWithFrame:frame style:style separatorStyle:separatorStyle backgroundColor:backgroundColor delegateAndDataSource:nil];
}

/**
 create tableView by frame + UITableViewStyle + delegateAndDataSource
 
 */
- (UITableView *)initWithFrame:(CGRect)frame style:(UITableViewStyle)style delegateAndDataSource:(id)delegateAndDataSource {
    return [UITableView tableViewWithFrame:frame style:style separatorStyle:UITableViewCellSeparatorStyleNone backgroundColor:nil delegateAndDataSource:delegateAndDataSource];
}

/**
 create tableView by frame + UITableViewStyle + delegateAndDataSource
 
 */
+ (UITableView *)tableViewWithFrame:(CGRect)frame style:(UITableViewStyle)style delegateAndDataSource:(id)delegateAndDataSource {
    return [UITableView tableViewWithFrame:frame style:style separatorStyle:UITableViewCellSeparatorStyleNone backgroundColor:nil delegateAndDataSource:delegateAndDataSource];
}

/**
 create tableView by frame + UITableViewStyle + UITableViewCellSeparatorStyle
 + delegateAndDataSource
 
 */
- (UITableView *)initWithFrame:(CGRect)frame style:(UITableViewStyle)style separatorStyle:(UITableViewCellSeparatorStyle)separatorStyle delegateAndDataSource:(id)delegateAndDataSource {
    return [UITableView tableViewWithFrame:frame style:style separatorStyle:separatorStyle backgroundColor:nil delegateAndDataSource:delegateAndDataSource];
}

/**
 create tableView by frame + UITableViewStyle + UITableViewCellSeparatorStyle
 + delegateAndDataSource
 
 */
+ (UITableView *)tableViewWithFrame:(CGRect)frame style:(UITableViewStyle)style separatorStyle:(UITableViewCellSeparatorStyle)separatorStyle delegateAndDataSource:(id)delegateAndDataSource {
    return [UITableView tableViewWithFrame:frame style:style separatorStyle:separatorStyle backgroundColor:nil delegateAndDataSource:delegateAndDataSource];
}

/**
 create tableView by frame + UITableViewStyle + backgroundColor + delegateAndDataSource
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITableView *)initWithFrame:(CGRect)frame style:(UITableViewStyle)style backgroundColor:(id)backgroundColor delegateAndDataSource:(id)delegateAndDataSource {
    return [UITableView tableViewWithFrame:frame style:style separatorStyle:UITableViewCellSeparatorStyleNone backgroundColor:backgroundColor delegateAndDataSource:delegateAndDataSource];
}

/**
 create tableView by frame + UITableViewStyle + backgroundColor + delegateAndDataSource
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITableView *)tableViewWithFrame:(CGRect)frame style:(UITableViewStyle)style backgroundColor:(id)backgroundColor delegateAndDataSource:(id)delegateAndDataSource {
    return [UITableView tableViewWithFrame:frame style:style separatorStyle:UITableViewCellSeparatorStyleNone backgroundColor:backgroundColor delegateAndDataSource:delegateAndDataSource];
}

/**
 create tableView by frame + UITableViewStyle + UITableViewCellSeparatorStyle
 + backgroundColor + delegateAndDataSource
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITableView *)initWithFrame:(CGRect)frame style:(UITableViewStyle)style separatorStyle:(UITableViewCellSeparatorStyle)separatorStyle backgroundColor:(id)backgroundColor delegateAndDataSource:(id)delegateAndDataSource {
    return [UITableView tableViewWithFrame:frame style:style separatorStyle:separatorStyle backgroundColor:backgroundColor delegateAndDataSource:delegateAndDataSource];
}

/**
 create tableView by frame + UITableViewStyle + UITableViewCellSeparatorStyle
 + backgroundColor + delegateAndDataSource
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITableView *)tableViewWithFrame:(CGRect)frame style:(UITableViewStyle)style separatorStyle:(UITableViewCellSeparatorStyle)separatorStyle backgroundColor:(nullable id)backgroundColor delegateAndDataSource:(nullable id)delegateAndDataSource {
    UITableView   *tableView = [UITableView tableViewWithStyle:style separatorStyle:separatorStyle backgroundColor:backgroundColor delegateAndDataSource:delegateAndDataSource];
    tableView.frame = frame;
    return tableView;
}

/**
 create tableView by center and bounds
 
 */
- (UITableView *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds {
    return [UITableView tableViewWithCenter:center bounds:bounds style:UITableViewStylePlain separatorStyle:UITableViewCellSeparatorStyleNone backgroundColor:nil delegateAndDataSource:nil];
}

/**
 create tableView by center and bounds
 
 */
+ (UITableView *)tableViewWithCenter:(CGPoint)center bounds:(CGRect)bounds {
    return [UITableView tableViewWithCenter:center bounds:bounds style:UITableViewStylePlain separatorStyle:UITableViewCellSeparatorStyleNone backgroundColor:nil delegateAndDataSource:nil];
}

/**
 create tableView by center and bounds + UITableViewStyle
 
 */
- (UITableView *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds style:(UITableViewStyle)style {
    return [UITableView tableViewWithCenter:center bounds:bounds style:style separatorStyle:UITableViewCellSeparatorStyleNone backgroundColor:nil delegateAndDataSource:nil];
}

/**
 create tableView by center and bounds + UITableViewStyle
 
 */
+ (UITableView *)tableViewWithCenter:(CGPoint)center bounds:(CGRect)bounds style:(UITableViewStyle)style {
    return [UITableView tableViewWithCenter:center bounds:bounds style:style separatorStyle:UITableViewCellSeparatorStyleNone backgroundColor:nil delegateAndDataSource:nil];
}

/**
 create tableView by center and bounds + UITableViewStyle + UITableViewCellSeparatorStyle
 
 */
- (UITableView *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds style:(UITableViewStyle)style separatorStyle:(UITableViewCellSeparatorStyle)separatorStyle {
    return [UITableView tableViewWithCenter:center bounds:bounds style:style separatorStyle:separatorStyle backgroundColor:nil delegateAndDataSource:nil];
}

/**
 create tableView by center and bounds + UITableViewStyle + UITableViewCellSeparatorStyle
 
 */
+ (UITableView *)tableViewWithCenter:(CGPoint)center bounds:(CGRect)bounds style:(UITableViewStyle)style separatorStyle:(UITableViewCellSeparatorStyle)separatorStyle {
    return [UITableView tableViewWithCenter:center bounds:bounds style:style separatorStyle:separatorStyle backgroundColor:nil delegateAndDataSource:nil];
}

/**
 create tableView by center and bounds + UITableViewStyle + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITableView *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds style:(UITableViewStyle)style backgroundColor:(id)backgroundColor {
    return [UITableView tableViewWithCenter:center bounds:bounds style:style separatorStyle:UITableViewCellSeparatorStyleNone backgroundColor:backgroundColor delegateAndDataSource:nil];
}

/**
 create tableView by center and bounds + UITableViewStyle + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITableView *)tableViewWithCenter:(CGPoint)center bounds:(CGRect)bounds style:(UITableViewStyle)style backgroundColor:(id)backgroundColor {
    return [UITableView tableViewWithCenter:center bounds:bounds style:style separatorStyle:UITableViewCellSeparatorStyleNone backgroundColor:backgroundColor delegateAndDataSource:nil];
}

/**
 create tableView by center and bounds + UITableViewStyle + UITableViewCellSeparatorStyle + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITableView *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds style:(UITableViewStyle)style separatorStyle:(UITableViewCellSeparatorStyle)separatorStyle backgroundColor:(id)backgroundColor {
    return [UITableView tableViewWithCenter:center bounds:bounds style:style separatorStyle:separatorStyle backgroundColor:backgroundColor delegateAndDataSource:nil];
}

/**
 create tableView by center and bounds + UITableViewStyle + UITableViewCellSeparatorStyle + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITableView *)tableViewWithCenter:(CGPoint)center bounds:(CGRect)bounds style:(UITableViewStyle)style separatorStyle:(UITableViewCellSeparatorStyle)separatorStyle backgroundColor:(id)backgroundColor {
    return [UITableView tableViewWithCenter:center bounds:bounds style:style separatorStyle:separatorStyle backgroundColor:backgroundColor delegateAndDataSource:nil];
}

/**
 create tableView by center and bounds + UITableViewStyle + delegateAndDataSource
 
 */
- (UITableView *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds style:(UITableViewStyle)style delegateAndDataSource:(id)delegateAndDataSource {
    return [UITableView tableViewWithCenter:center bounds:bounds style:style separatorStyle:UITableViewCellSeparatorStyleNone backgroundColor:nil delegateAndDataSource:delegateAndDataSource];
}

/**
 create tableView by center and bounds + UITableViewStyle + delegateAndDataSource
 
 */
+ (UITableView *)tableViewWithCenter:(CGPoint)center bounds:(CGRect)bounds style:(UITableViewStyle)style delegateAndDataSource:(id)delegateAndDataSource {
    return [UITableView tableViewWithCenter:center bounds:bounds style:style separatorStyle:UITableViewCellSeparatorStyleNone backgroundColor:nil delegateAndDataSource:delegateAndDataSource];
}

/**
 create tableView by center and bounds + UITableViewStyle + UITableViewCellSeparatorStyle
 + delegateAndDataSource
 
 */
- (UITableView *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds style:(UITableViewStyle)style separatorStyle:(UITableViewCellSeparatorStyle)separatorStyle delegateAndDataSource:(id)delegateAndDataSource {
    return [UITableView tableViewWithCenter:center bounds:bounds style:style separatorStyle:separatorStyle backgroundColor:nil delegateAndDataSource:delegateAndDataSource];
}

/**
 create tableView by center and bounds + UITableViewStyle + UITableViewCellSeparatorStyle
 + delegateAndDataSource
 
 */
+ (UITableView *)tableViewWithCenter:(CGPoint)center bounds:(CGRect)bounds style:(UITableViewStyle)style separatorStyle:(UITableViewCellSeparatorStyle)separatorStyle delegateAndDataSource:(id)delegateAndDataSource {
    return [UITableView tableViewWithCenter:center bounds:bounds style:style separatorStyle:separatorStyle backgroundColor:nil delegateAndDataSource:delegateAndDataSource];
}

/**
 create tableView by center and bounds + UITableViewStyle + backgroundColor
 + delegateAndDataSource
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITableView *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds style:(UITableViewStyle)style backgroundColor:(id)backgroundColor delegateAndDataSource:(id)delegateAndDataSource {
    return [UITableView tableViewWithCenter:center bounds:bounds style:style separatorStyle:UITableViewCellSeparatorStyleNone backgroundColor:backgroundColor delegateAndDataSource:delegateAndDataSource];
}

/**
 create tableView by center and bounds + UITableViewStyle + backgroundColor
 + delegateAndDataSource
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITableView *)tableViewWithCenter:(CGPoint)center bounds:(CGRect)bounds style:(UITableViewStyle)style backgroundColor:(id)backgroundColor delegateAndDataSource:(id)delegateAndDataSource {
    return [UITableView tableViewWithCenter:center bounds:bounds style:style separatorStyle:UITableViewCellSeparatorStyleNone backgroundColor:backgroundColor delegateAndDataSource:delegateAndDataSource];
}

/**
 create tableView by center and bounds + UITableViewStyle + UITableViewCellSeparatorStyle
 + backgroundColor + delegateAndDataSource
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UITableView *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds style:(UITableViewStyle)style separatorStyle:(UITableViewCellSeparatorStyle)separatorStyle backgroundColor:(id)backgroundColor delegateAndDataSource:(id)delegateAndDataSource {
    return [UITableView tableViewWithCenter:center bounds:bounds style:style separatorStyle:separatorStyle backgroundColor:backgroundColor delegateAndDataSource:delegateAndDataSource];
}

/**
 create tableView by center and bounds + UITableViewStyle + UITableViewCellSeparatorStyle
 + backgroundColor + delegateAndDataSource
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UITableView *)tableViewWithCenter:(CGPoint)center bounds:(CGRect)bounds style:(UITableViewStyle)style separatorStyle:(UITableViewCellSeparatorStyle)separatorStyle backgroundColor:(nullable id)backgroundColor delegateAndDataSource:(nullable id)delegateAndDataSource {
    UITableView   *tableView = [UITableView tableViewWithStyle:style separatorStyle:separatorStyle backgroundColor:backgroundColor delegateAndDataSource:delegateAndDataSource];
    tableView.center = center;
    tableView.bounds = bounds;
    return tableView;
}


#pragma clang diagnostic pop

@end
