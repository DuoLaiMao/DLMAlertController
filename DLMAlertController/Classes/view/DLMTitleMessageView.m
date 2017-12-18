//
//  DLMTitleMessageView.m
//  DLMAlertController
//
//  Created by YangJian on 2017/12/16.
//

#import "DLMTitleMessageView.h"

@interface DLMTitleMessageView ()
@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSString *message;
@property (assign, nonatomic) DLMAlertControllerStyle style;

@end

@implementation DLMTitleMessageView

- (instancetype)initWithTitle:(NSString *)title message:(NSString *)message preferredStyle:(DLMAlertControllerStyle)style
{
    self = [super init];
    if (self) {
        
    }
    
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
