//
//  DLMActionView.h
//  DLMAlertController
//
//  Created by YangJian on 2017/12/11.
//

#import <UIKit/UIKit.h>

@interface DLMActionView : UIView

+ (instancetype)actionViewWithCustomerView:(UIView *)customerView actionArray:(NSArray *)actionHandlerArray;
@end
