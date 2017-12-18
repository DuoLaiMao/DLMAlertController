//
//  DLMAlertAction+Private.h
//  DLMAlertController
//
//  Created by YangJian on 2017/12/11.
//

#import <DLMAlertController/DLMAlertController.h>

@interface DLMAlertAction (Private)

@property (copy, nonatomic, readonly) NSString *title;
@property (assign, nonatomic, readonly) DLMAlertActionStyle style;
@property (copy, nonatomic, readonly) DLMActionHandler handler;

@end
