//
//  checkDataEnd.m
//  app_demo
//
//  Created by 林少川 on 16/3/12.
//  Copyright © 2016年 oc. All rights reserved.
//

#import "checkDataEnd.h"

@interface checkDataEnd ()

@end

@implementation checkDataEnd

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
#pragma mark 发送-结束-日和月数据
- (IBAction)sendEndData:(id)sender {
    NSDate *choose = [self.dataPicker2 date];
    NSDateFormatter * formatters = [[NSDateFormatter alloc]init];
    
    NSLog(@"monthtag==%ld",(long)self.endMonthtag);
    if (!self.endMonthtag==1) {
        [formatters setDateFormat:@"yyyy-MM-dd"];
    }else{
        
        [formatters setDateFormat:@"yyyy-MM"];
    }
    
    NSTimeZone* sourceTimeZone = [NSTimeZone systemTimeZone];
    
    formatters.timeZone = sourceTimeZone;
    _dataString2 = [formatters stringFromDate:choose];
    [self._checkOutDelegate2 passEndDataValue:_dataString2 ];
    NSLog(@"结束时间==%@",_dataString2);
    
    
    
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
