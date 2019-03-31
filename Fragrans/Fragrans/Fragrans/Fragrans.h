//
//  Fragrans.h
//  Fragrans
//
//  Created by qmz on 2019/1/30.
//

#ifndef Fragrans_h
#define Fragrans_h

#import "CALayer+Fragrans.h"
#import "NSArray+Fragrans.h"
#import "NSMutableArray+Fragrans.h"
#import "NSDictionary+Fragrans.h"
#import "NSMutableDictionary+Fragrans.h"
#import "NSBundle+Fragrans.h"
#import "NSFileManager+Fragrans.h"
#import "NSObject+Fragrans.h"
#import "NSURLSession+Fragrans.h"
#import "NSURLRequest+Fragrans.h"
#import "NSNetService+Fragrans.h"
#import "NSNetServiceBrowser+Fragrans.h"
#import "UIFont+Fragrans.h"
#import "UIColor+Fragrans.h"
#import "UIScreen+Fragrans.h"
#import "UIDevice+Fragrans.h"
#import "NSDate+Fragrans.h"
#import "NSDateFormatter+Fragrans.h"
#import "NSData+Fragrans.h"
#import "NSString+Fragrans.h"
#import "NSMutableString+Fragrans.h"
#import "NSMutableAttributedString+Fragrans.h"
#import "UIView+Fragrans.h"
#import "UILabel+Fragrans.h"
#import "UIButton+Fragrans.h"
#import "UISlider+Fragrans.h"
#import "UISwitch+Fragrans.h"
#import "UIImage+Fragrans.h"
#import "UIImageView+Fragrans.h"
#import "UITextField+Fragrans.h"
#import "UITextView+Fragrans.h"
#import "UIScrollView+Fragrans.h"
#import "UITableView+Fragrans.h"
#import "UIPageControl+Fragrans.h"
#import "UIBarButtonItem+Fragrans.h"
#import "UICollectionViewCell+Fragrans.h"
#import "UITapGestureRecognizer+Fragrans.h"
#import "UIAlertController+Fragrans.h"
#import "UIViewController+Fragrans.h"
#import "CABasicAnimation+Fragrans.h"


#endif /* Fragrans_h */

#pragma mark --- define

#define FRG_WEAKSELF(OBJC,NAME) typeof(OBJC) __weak NAME = OBJC;
#define FRG_STRONGSELF(OBJC,NAME) typeof(OBJC) __strong NAME = OBJC;

#ifndef dispatch_frg_queue_async_safe
#define dispatch_frg_queue_async_safe(queue, block)\
if (dispatch_queue_get_label(DISPATCH_CURRENT_QUEUE_LABEL) == dispatch_queue_get_label(queue)) {\
block();\
} else {\
dispatch_async(queue, block);\
}
#endif

#ifndef dispatch_frg_main_async_safe
#define dispatch_frg_main_async_safe(block) dispatch_frg_queue_async_safe(dispatch_get_main_queue(), block)
#endif

#ifndef dispatch_frg_global_async_safe
#define dispatch_frg_global_async_safe(block)  dispatch_frg_queue_async_safe(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), block)
#endif



