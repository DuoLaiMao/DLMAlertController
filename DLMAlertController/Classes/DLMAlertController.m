//
//  DLMAlertViewController.m
//  DLMAlertController
//
//  Created by YangJian on 2017/12/9.
//

#import "DLMAlertController.h"
#import "DLMTitleMessageView.h"
#import "DLMAlertView.h"
#import "DLMActionView.h"
#import "DLMAlertActionButton.h"

@interface DLMAlertAction ()
@property (copy, nonatomic, readwrite) NSString *title;
@property (assign, nonatomic, readwrite) DLMAlertActionStyle style;
@property (copy, nonatomic, readwrite) DLMActionHandler handler;
@end
@implementation DLMAlertAction
+ (instancetype)alertActionWithTitle:(NSString *)title style:(DLMAlertActionStyle)style handler:(DLMActionHandler)handler
{
    DLMAlertAction *action = [[DLMAlertAction alloc] init];
    action.title = title;
    action.style = style;
    action.handler = handler;

    return action;
}
@end

@interface DLMAlertController ()
@property (strong, nonatomic) NSMutableArray *actionHandlerArray;
@property (strong, nonatomic) UIView *customerView;
@property (assign, nonatomic) DLMAlertControllerStyle style;
@end

@implementation DLMAlertController

+ (instancetype)alertControllerWithCustomView:(UIView *)customView preferredStyle:(DLMAlertControllerStyle)style
{
    return [[DLMAlertController alloc] initWithCustomView:customView preferredStyle:style];
}

+ (instancetype)alertControllerWithCustomerViewController:(UIViewController *)vc preferredStyle:(DLMAlertControllerStyle)style
{
    return [[DLMAlertController alloc] initWithCustomerViewController:vc preferredStyle:style];
}

+ (instancetype)alertControllerWithTitle:(NSString *)title message:(NSString *)message preferredStyle:(DLMAlertControllerStyle)style
{
    return [[DLMAlertController alloc] initWithTitle:title message:message preferredStyle:style];
}

- (instancetype)initWithTitle:(NSString *)title message:(NSString *)message preferredStyle:(DLMAlertControllerStyle)style
{
    DLMTitleMessageView *titleMessageView = [[DLMTitleMessageView alloc] initWithTitle:title message:message preferredStyle:style];
    return [self initWithCustomView:titleMessageView preferredStyle:style];
}

- (instancetype)initWithCustomerViewController:(UIViewController *)vc preferredStyle:(DLMAlertControllerStyle)style
{
    return [self initWithCustomView:vc.view preferredStyle:style];
}

- (instancetype)initWithCustomView:(UIView *)customView preferredStyle:(DLMAlertControllerStyle)style
{
    self = [super init];
    if (self) {
        self.definesPresentationContext = true;
        self.modalPresentationStyle = UIModalPresentationOverCurrentContext;
        self.view.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.4];
        self.actionHandlerArray = [NSMutableArray new];
        self.customerView = customView;
        self.style = style;
    }
    
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    if (self.style == DLMAlertControllerStyleAlert) {
        DLMAlertView *alertView = [DLMAlertView alertViewWithCustomerView:self.customerView actionArray:self.actionHandlerArray];
        [self.view addSubview:alertView];
    }
    else if (self.style == DLMAlertControllerStyleActionSheet) {
        DLMActionView *actionView = [DLMActionView actionViewWithCustomerView:self.customerView actionArray:self.actionHandlerArray];
        [self.view addSubview:actionView];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)addAction:(DLMAlertAction *)action
{
    [self.actionHandlerArray addObject:action];
}

- (void)insertAction:(DLMAlertAction *)action atIndex:(NSInteger)index
{
    [self.actionHandlerArray insertObject:action atIndex:index];
}

- (void)presentFromViewController:(UIViewController *)vc animation:(BOOL)animation completion:(void (^ __nullable)(void))completion
{
    [vc presentViewController:self animated:animation completion:completion];
}

- (void)presentWithAnimation:(BOOL)animation completion:(void (^ __nullable)(void))completion
{
    UIViewController *rootVC = [UIApplication sharedApplication].keyWindow.rootViewController;
    [rootVC presentViewController:self animated:animation completion:completion];
}
@end
