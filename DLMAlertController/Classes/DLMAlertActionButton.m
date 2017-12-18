//
//  DLMAlertActionButton.m
//  DLMAlertController
//
//  Created by YangJian on 2017/12/11.
//

#import "DLMAlertActionButton.h"
#import "DLMAlertAction+Private.h"
#import "DLMConstant.h"
#import <DLMKit/DLMKit.h>
#import <DLMFoundation/DLMFoundation.h>

#define DLMActionDefaultColor @""
#define DLMActionCancelColor @""
#define DLMActionDestructiveColor @""

@interface DLMAlertActionButton ()
@property (strong, nonatomic) DLMAlertAction *action;
@property (strong, nonatomic) NSString *title;
@property (copy, nonatomic) DLMActionHandler handler;
@property (assign, nonatomic) DLMAlertActionStyle style;
@end

@implementation DLMAlertActionButton

+ (instancetype)alertActionButton:(DLMAlertAction *)action
{
    return [[self alloc] initWithAction:action];
    
    return nil;
}

- (instancetype)initWithAction:(DLMAlertAction *)action
{
    self = [super init];
    if (self) {
        _handler = action.handler;
        _style = action.style;
        
        [self setTitle:action.title];
        [self setTitleColorWithStyle:_style];
        [self addTarget:self action:@selector(buttonPressed) forControlEvents:UIControlEventTouchUpInside];
    }
    
    return self;
}

- (void)setTitleColorWithStyle:(DLMAlertActionStyle)style
{
    UIColor *titleColor = [UIColor colorWithHexString:DLMActionButtonDefaultColor];
    UIFont *titleFont = [UIFont systemFontOfSize:15];
    switch (_style) {
        case DLMAlertActionStyleDefault:
        {
            titleColor = [UIColor colorWithHexString:DLMActionButtonDefaultColor];
            titleFont = [UIFont systemFontOfSize:15];
            break;
        }
            
        case DLMAlertActionStyleDestructive:
        {
            titleColor = [UIColor colorWithHexString:DLMActionButtonDestructiveColor];
            titleFont = [UIFont systemFontOfSize:15];
            break;
        }
            
        case DLMAlertActionStyleCancel:
        {
            titleColor = [UIColor colorWithHexString:DLMActionButtonCancelColor];
            titleFont = [UIFont boldSystemFontOfSize:15];
            break;
        }
            
        default:
            break;
    }
    [self setTitleColor:titleColor forState:UIControlStateNormal];
    [self.titleLabel setFont:titleFont];
}

- (CGFloat)minWidth
{
    CGSize maxSize = CGSizeMake(DEVICE_WIDTH, 44);
    CGSize size = [self.title dlm_sizeWithFont:self.titleLabel.font containerSize:maxSize breakMode:NSLineBreakByWordWrapping];
    
    return size.width + 20;
}
//- (CGSize)intrinsicContentSize
//{
//    CGSize size = [super intrinsicContentSize];
//
//    return CGSizeMake(size.width + 20, 44);
//}

- (void)buttonPressed
{
    if (self.handler) {
        self.handler(self.style);
    }
}

@end
