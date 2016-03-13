//
//  checkDataEnd.h
//  app_demo
//
//  Created by 林少川 on 16/3/12.
//  Copyright © 2016年 oc. All rights reserved.
//
#import "checkoutDelegate.h"
#import <UIKit/UIKit.h>

@interface checkDataEnd : UIViewController
@property (strong, nonatomic) IBOutlet UIDatePicker *dataPicker2;
@property (strong, nonatomic) IBOutlet UIButton *changDataEndButton;

@property(assign ,nonatomic) NSObject<checkoutDelegate> *_checkOutDelegate2;
@property(copy,nonatomic) NSString *dataString2;
@property(assign,nonatomic)NSInteger endMonthtag;
@end
