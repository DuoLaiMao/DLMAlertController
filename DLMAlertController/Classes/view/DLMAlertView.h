//
//  DLMAlertView.h
//  DLMAlertController
//
//  Created by YangJian on 2017/12/10.
//

#import <UIKit/UIKit.h>
#import "DLMConstant.h"

@interface DLMAlertView : UIView

+ (instancetype)alertViewWithCustomerView:(UIView *)customerView actionArray:(NSArray *)actionArray;

- (instancetype)initWithCustomerView:(UIView *)customerView actionArray:(NSArray *)actionArray;

@end
