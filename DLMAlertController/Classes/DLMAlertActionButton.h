//
//  DLMAlertActionButton.h
//  DLMAlertController
//
//  Created by YangJian on 2017/12/11.
//

#import <UIKit/UIKit.h>

@class DLMAlertAction;

@interface DLMAlertActionButton : UIButton

+ (instancetype)alertActionButton:(DLMAlertAction *)action;

- (CGFloat)minWidth;
@end
