//
//  changData.h
//  app_demo
//
//  Created by 林少川 on 16/2/17.
//  Copyright © 2016年 oc. All rights reserved.
//
#import "checkoutDelegate.h"
#import "checkout.h"
#import <UIKit/UIKit.h>

@interface changData : UIViewController

@property (strong, nonatomic) IBOutlet UIButton *changDataButton;
@property (strong, nonatomic) IBOutlet UIDatePicker *dataPicker;
@property(assign ,nonatomic) NSObject<checkoutDelegate> *_checkOutDelegate;
@property(copy,nonatomic) NSString *dataString;
@property(assign,nonatomic)NSInteger startMonthtag;
@end
