//
//  ViewController.m
//  app_demo
//
//  Created by 林少川 on 16/1/31.
//  Copyright © 2016年 oc. All rights reserved.
//

#import "ViewController.h"
#define width [UIScreen mainScreen].bounds.size.width
#define height [UIScreen mainScreen].bounds.size.height
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //  暂时指定用户信息
    NSString *username = @"demo1@demo.com";
    NSString *password = @"demodemo";
    NSString *grant_type = @"password";
    NSString *client_secret = @"IZgwaBTZ2EdtT3hT7UzG2rLQ8S0Vmu9GDxeHwcPz";
    NSInteger client_id =42;
    
    self.user  = [NSUserDefaults standardUserDefaults];
    [self.user setObject:username forKey:@"username"];
    [self.user setObject:password forKey:@"password"];
    [self.user setObject:grant_type forKey:@"grant_type"];
    [self.user setObject:client_secret forKey:@"client_secret"];
    [self.user setInteger:client_id forKey:@"client_id"];

    
//    创建用户登录头像
    self.UserImage = [[UIImageView alloc]initWithFrame:CGRectMake(width/2-40, 100, 80, 80)];

    self.UserImage.image = [UIImage imageNamed:@"UserImage"];
    [self.view addSubview:self.UserImage];
    
    
//    创建用户名
    self.UserName = [[UITextField alloc]initWithFrame:CGRectMake(40, 250, width-80, 50)];
    self.UserName.clearButtonMode = UITextFieldViewModeWhileEditing;
//    self.UserName.backgroundColor = [UIColor redColor];
    self.UserName.borderStyle = UITextBorderStyleLine;
    self.UserName.placeholder =@"请输入用户名";
    
    self.UserName.textColor =[UIColor colorWithWhite:0.5 alpha:0.8];
    [self.view addSubview:self.UserName];
    
//    创建密码
    
    self.PassWord = [[UITextField alloc]initWithFrame:CGRectMake(40,  330, width-80, 50)];
    self.PassWord.clearButtonMode = UITextFieldViewModeWhileEditing;
//    self.PassWord.backgroundColor = [UIColor blueColor ];
    self.PassWord.borderStyle =UITextBorderStyleLine;
    self.PassWord.placeholder =@"请输入密码";
    self.PassWord.textColor =[UIColor colorWithWhite:0.5 alpha:0.8];
    [self.view addSubview:self.PassWord];
    
//    创建登录按钮
    self.LoginBtton = [[UIButton alloc]initWithFrame:CGRectMake(60, 470, width-120, 40)];
    self.LoginBtton.backgroundColor =[UIColor colorWithRed:0 green:0.5 blue:1 alpha:1];
   
        
//       NSLog(@"%@",[self.user objectForKey:@"username"]);
    [self.LoginBtton addTarget: self action:@selector(go) forControlEvents: UIControlEventTouchUpInside];

    
     [self.LoginBtton setTitle:@"登录" forState:UIControlStateNormal];
    [self.view addSubview:self.LoginBtton];
    
// 创建找回密码
    self.findPasswdBtton = [[UIButton alloc]initWithFrame:CGRectMake(0, height-60, 90, 60)];
    [self.findPasswdBtton setTitleColor:[UIColor colorWithRed:0 green:0.5 blue:1 alpha:1 ] forState:UIControlStateNormal];
//    self.findPasswdBtton.backgroundColor = [UIColor redColor];
    [self.findPasswdBtton addTarget: self action:@selector(findPass) forControlEvents:UIControlEventTouchUpInside];
    [self.findPasswdBtton setTitle:@"找回密码" forState:UIControlStateNormal];
    [self.view addSubview:self.findPasswdBtton];
    
//    注册
    self.registerBtton = [[UIButton alloc]initWithFrame:CGRectMake(width-90, height-60, 90, 60)];
    [self.registerBtton setTitleColor:[UIColor colorWithRed:0 green:0.5 blue:1 alpha:1 ] forState:UIControlStateNormal];
    [self.registerBtton addTarget: self action:@selector(registerbutton) forControlEvents:UIControlEventTouchUpInside];
//        self.registerBtton.backgroundColor = [UIColor blueColor ];
    [self.registerBtton setTitle:@"注册" forState:UIControlStateNormal];
    [self.view addSubview:self.registerBtton];
    
    
    
}
#pragma mark 登录按钮
-(void)go{
    NSLog(@"denglu");
   
//    if([self.UserName.text isEqualToString:@"demo1@demo.com"] && [self.PassWord.text isEqualToString:@"demodemo"] ){
//        NSLog(@"%@", self.UserName.text);
//        NSLog(@"%@",self.PassWord.text);
//    
    tabBarController *tabbar =[self.storyboard instantiateViewControllerWithIdentifier:@"tabbarcontroller"];
    [self presentViewController:tabbar animated:YES completion:nil];
//        
//    }else{
//        NSLog(@"请输入用户名和密码");
//    }
//    

    
//    
//    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
//    
//    manager.responseSerializer = [AFJSONResponseSerializer serializer];
//    
//    NSDictionary *dic = @{@"username":@"demo1@demo.com",
//                          @"password":@"demodemo",
//                          @"grant_type":@"password",
//                          @"client_secret":@"IZgwaBTZ2EdtT3hT7UzG2rLQ8S0Vmu9GDxeHwcPz",
//                          @"client_id":@"42"};
//    
//    
//    if (![NSJSONSerialization isValidJSONObject:dic]) {
//        NSLog(@"不能转化为Jason数据");
//    }
//    
//    
//    [manager POST:@"https://api.xitech.cn/oauth/1/login" parameters:dic
//         progress:^(NSProgress * _Nonnull uploadProgress) {
//             NSLog(@"这个是Progress---%@",uploadProgress);
//         } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
//             NSLog(@"这个是responseObject1%--@",responseObject);
//             
//             
//             
//             //        NSDictionary * object=(NSDictionary *)responseObject;
//             //        NSString * access_token = object[@"access_token"];
//             
//             
//             //        for (NSDictionary * key1 in object[@"storeInfo"]) {
//             //            NSLog(@"value:%@", [key1 objectForKey:@"access_token"]);
//             //
//             //        }
//             
//             
//             
//         } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
//             NSLog(@"请求失败--%@", [error localizedDescription]);
//         }];
//
////    ------------------------------------------------------------------------------
//    
//    AFHTTPSessionManager *manager2 = [AFHTTPSessionManager manager];
//    
//    manager2.responseSerializer = [AFJSONResponseSerializer serializer];
//    
//    NSDictionary *dic2 = @{@"time":@"2016-01-02",
//                           @"store_id":@"9B7BFBD7-094E-4F3E-D66D-EF8345097D4F",
//                           @"access_token":@"wOe6I9rLlEXPFGZxoeE8qbFvQsSib6qSpuOXuDAh",
//                           
//                           };
//    
//    
//    if (![NSJSONSerialization isValidJSONObject:dic2]) {
//        NSLog(@"不能转化为Jason数据");
//    }
//    
//    
//    [manager2 POST:@"https://api.xitech.cn/oauth/1/1001" parameters:dic2
//          progress:^(NSProgress * _Nonnull uploadProgress) {
//              NSLog(@"这个是Progress---%@",uploadProgress);
//          } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
//              NSLog(@"这个是responseObject2%--@",responseObject);
//              
//
//              //
//              //             NSDictionary * object=(NSDictionary *)responseObject;
//              //             for (NSDictionary * key1 in object[@"storeInfo"]) {
//              //                 NSLog(@"value:%@", [key1 objectForKey:@"city_name"]);
//              //
//              //             }
//              NSDictionary * object2=(NSDictionary *)responseObject;
//              for (NSDictionary * key2 in object2)
//              {  if([[key2 objectForKey:@"start_time"] isEqualToString:@"2016-01-03 08:30:00"] )
//              {
//                  NSLog(@" value2 is --%@,%@,%@",[key2 objectForKey:@"in"],[key2 objectForKey:@"out"],[key2 objectForKey:@"time"]);
//              }
//              }
//              ;
//              
//          } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
//              NSLog(@"请求失败--%@", [error localizedDescription]);
//          }];
//
  
}
#pragma mark 找回密码按钮
-(void)findPass{
    NSLog(@"findPass");
    
    findpassword *find = [self.storyboard instantiateViewControllerWithIdentifier:@"findpassword"];
   [self presentViewController:find animated:YES completion:nil];
    
    
    
    
}
#pragma mark 注册按钮
-(void)registerbutton{
    NSLog(@"register");
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.UserName resignFirstResponder];
    [self.PassWord resignFirstResponder];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
