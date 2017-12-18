//
//  DLMConstant.h
//  DLMAlertController
//
//  Created by YangJian on 2017/12/16.
//

#ifndef DLMConstant_h
#define DLMConstant_h

typedef NS_ENUM(NSInteger, DLMAlertActionStyle) {
    DLMAlertActionStyleDefault,
    DLMAlertActionStyleCancel,
    DLMAlertActionStyleDestructive,
};

typedef NS_ENUM(NSInteger, DLMAlertControllerStyle) {
    DLMAlertControllerStyleActionSheet = 0,
    DLMAlertControllerStyleAlert
};

#define DLMActionButtonDefaultColor @"#37a4f5"
#define DLMActionButtonCancelColor @""
#define DLMActionButtonDestructiveColor @"#f95e5e"

#define DLMTitleColor @"#283038"
#define DLMMessageColor @"#3c3d3d"

#endif /* DLMConstant_h */
