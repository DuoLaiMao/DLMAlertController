//
//  DLMTitleMessageView.h
//  DLMAlertController
//
//  Created by YangJian on 2017/12/16.
//

#import <UIKit/UIKit.h>
#import "DLMConstant.h"

@interface DLMTitleMessageView : UIView

- (instancetype)initWithTitle:(NSString *)title message:(NSString *)message preferredStyle:(DLMAlertControllerStyle)style;

@end
