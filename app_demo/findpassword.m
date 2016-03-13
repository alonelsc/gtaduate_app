//
//  findpassword.m
//  app_demo
//
//  Created by 林少川 on 16/2/1.
//  Copyright © 2016年 oc. All rights reserved.
//

#import "findpassword.h"
#define findViewWidth [UIScreen mainScreen].bounds.size.width
#define findVIewHeight [UIScreen mainScreen].bounds.size.height
@interface findpassword ()

@end

@implementation findpassword

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
 
    
}
#pragma mark 返回登录界面
- (IBAction)back:(id)sender {
    [self dismissViewControllerAnimated:YES completion:^{
        NSLog(@"findpassword");
    }];
}
#pragma mark 点击屏幕空白处键盘消失
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    
    [self._passwordText resignFirstResponder];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
