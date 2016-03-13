//
//  ViewController.h
//  app_demo
//
//  Created by 林少川 on 16/1/31.
//  Copyright © 2016年 oc. All rights reserved.
//
#import <JavaScriptCore/JavaScriptCore.h>
#import <UIKit/UIKit.h>
//#import <AFNetworking.h>
#import "loginview.h"
#import "findpassword.h"
#import "tabBarController.h"

@interface ViewController : UIViewController


@property (strong,nonatomic) IBOutlet UITextField *UserName;
@property (strong,nonatomic) IBOutlet UITextField *PassWord;
@property (strong,nonatomic) IBOutlet UIImageView *UserImage;
@property (strong,nonatomic) IBOutlet UIButton *LoginBtton;

@property (strong,nonatomic) IBOutlet UIButton *findPasswdBtton;
@property (strong,nonatomic) IBOutlet UIButton *registerBtton;




@property (strong,nonatomic) IBOutlet UIToolbar *toorBar;
@property (strong,nonatomic) NSUserDefaults *user;
@end

