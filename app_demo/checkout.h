//
//  checkout.h
//  app_demo
//
//  Created by 林少川 on 16/2/17.
//  Copyright © 2016年 oc. All rights reserved.
//

#import "checkoutDelegate.h"
#import "changData.h"
#import "checkDataEnd.h"

#import <UIKit/UIKit.h>


@interface checkout : UIViewController<checkoutDelegate>
@property (strong, nonatomic) IBOutlet UISegmentedControl *_checkOutSegment;
@property (strong, nonatomic) IBOutlet UILabel *checkOutStartLable;
@property (strong, nonatomic) IBOutlet UILabel *checkOutEndlable;
@property (strong, nonatomic) IBOutlet UITextField *_checkOutText;
@property (strong, nonatomic) IBOutlet UIView *view2;
@property (strong, nonatomic) IBOutlet UIButton *_checkOutChangButton;
@property(assign,nonatomic)  NSString *_stardatatemp;
@property(assign,nonatomic)  NSString *_enddatatemp;
@property(assign,nonatomic)  NSInteger segementindex;


@end
