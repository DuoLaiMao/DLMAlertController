//
//  DLMAlertView.m
//  DLMAlertController
//
//  Created by YangJian on 2017/12/10.
//

#import "DLMAlertView.h"

@interface DLMAlertView ()
@property (strong, nonatomic) UIView *customerView;
@property (copy, nonatomic) NSArray *actionArray;
@end

@implementation DLMAlertView

+ (instancetype)alertViewWithCustomerView:(UIView *)customerView actionArray:(NSArray *)actionArray
{
    return [[self alloc] initWithCustomerView:customerView actionArray:actionArray];
}

- (instancetype)initWithCustomerView:(UIView *)customerView actionArray:(NSArray *)actionArray
{
    self = [super init];
    if (self) {
        _customerView = customerView;
        _actionArray = actionArray;
        
        [self setupSubviews];
    }
    
    return self;
}

- (void)setupSubviews
{
    [self addSubview:self.customerView];
    
    self addSubview:
}
@end
