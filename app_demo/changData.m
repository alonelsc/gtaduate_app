//
//  changData.m
//  app_demo
//
//  Created by 林少川 on 16/2/17.
//  Copyright © 2016年 oc. All rights reserved.
//

#import "changData.h"

@interface changData ()

@end

@implementation changData

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
   
    
    
}
#pragma mark 发送-开始-日和月数据
- (IBAction)sendData:(id)sender {
    
//    checkout *out = [[checkout alloc]init];
//    self._checkOutDelegate = out;
    
      NSDate *choose = [self.dataPicker date];
        NSDateFormatter * formatters = [[NSDateFormatter alloc]init];
    
    NSLog(@"monthtag==%ld",(long)self.startMonthtag);
    if (!self.startMonthtag==1) {
        [formatters setDateFormat:@"yyyy-MM-dd"];
    }else{
        
        [formatters setDateFormat:@"yyyy-MM"];
    }
    
    
//      NSTimeZone* sourceTimeZone = [NSTimeZone systemTimeZone];
//    
//    formatters.timeZone = sourceTimeZone;

   _dataString = [formatters stringFromDate:choose];
    
   
    

  [self._checkOutDelegate passDataValue:_dataString ];
     NSLog(@"开始时间==%@",_dataString);
    
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
