//
//  zhuye.m
//  app_demo
//
//  Created by 林少川 on 16/2/16.
//  Copyright © 2016年 oc. All rights reserved.
//

#import "zhuye.h"

@interface zhuye ()

@end

@implementation zhuye

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    self._peoplelable = [[UILabel alloc]initWithFrame:CGRectMake( 160, 140, 100, 50)
                      ];
    self._peoplelable.backgroundColor = [UIColor redColor];
    [self._peoplelable setText:@"8888"];
    self._peoplelable.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:self._peoplelable];
    
    self._segemenlable = [[UILabel alloc]initWithFrame:CGRectMake(160, 200, 100, 30)];
    self._segemenlable.backgroundColor=[UIColor greenColor];
    self._segemenlable.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:self._segemenlable];
    
    [self.segment addTarget:self action:@selector(chang) forControlEvents:UIControlEventValueChanged];
}
-(void)chang
{
    switch (self.segment.selectedSegmentIndex) {
        case 0:
            self._segemenlable.text =[self.segment titleForSegmentAtIndex:0];
            NSLog(@"日客流");
            break;
        case 1:
            self._segemenlable.text =[self.segment titleForSegmentAtIndex:1];
            NSLog(@"周客流");
            break;
        case 2:
            self._segemenlable.text =[self.segment titleForSegmentAtIndex:2];
            NSLog(@"月客流");
            break;
    }
}

#pragma mark 主页的back按钮返回登录界面
- (IBAction)backtologin:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
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
