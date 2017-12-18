//
//  DLMAlertViewController.h
//  DLMAlertController
//
//  Created by YangJian on 2017/12/9.
//

#import <UIKit/UIKit.h>
#import "DLMConstant.h"

NS_ASSUME_NONNULL_BEGIN

typedef void(^DLMActionHandler)(DLMAlertActionStyle style);

@interface DLMAlertAction : NSObject
+ (instancetype)alertActionWithTitle:(NSString *)title style:(DLMAlertActionStyle)style handler:(DLMActionHandler)handler;
@end

@interface DLMAlertController : UIViewController

- (instancetype)initWithTitle:(NSString *)title message:(NSString *)message preferredStyle:(DLMAlertControllerStyle)style;

- (instancetype)initWithCustomView:(UIView *)customView preferredStyle:(DLMAlertControllerStyle)style;

- (instancetype)initWithCustomerViewController:(UIViewController *)vc preferredStyle:(DLMAlertControllerStyle)style;

+ (instancetype)alertControllerWithTitle:(NSString *)title message:(NSString *)message preferredStyle:(DLMAlertControllerStyle)style;

+ (instancetype)alertControllerWithCustomView:(UIView *)customView preferredStyle:(DLMAlertControllerStyle)style;

+ (instancetype)alertControllerWithCustomerViewController:(UIViewController *)vc preferredStyle:(DLMAlertControllerStyle)style;

- (void)addAction:(DLMAlertAction *)action;

- (void)insertAction:(DLMAlertAction *)action atIndex:(NSInteger)index;

- (void)presentFromViewController:(UIViewController *)vc animation:(BOOL)animation completion:(void (^ __nullable)(void))completion;

- (void)presentWithAnimation:(BOOL)animation completion:(void (^ __nullable)(void))completion;

@end
NS_ASSUME_NONNULL_END
