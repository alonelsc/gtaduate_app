//
//  checkout.m
//  app_demo
//
//  Created by 林少川 on 16/2/17.
//  Copyright © 2016年 oc. All rights reserved.
//

#import "checkout.h"

@interface checkout (){
  
}

@end

@implementation checkout


- (void)viewDidLoad {
    [super viewDidLoad];

   
   [self._checkOutSegment addTarget:self  action:@selector(checkOutchang) forControlEvents:UIControlEventValueChanged];
    
    
  
}
#pragma mark 传递开始日期数据
-(NSString*)passDataValue:(NSString *)value
{
    if ([self.checkOutStartLable.text isEqual:@"Label"])
    {
        self.checkOutStartLable.text=value;
    }else
    {
        self._stardatatemp =value;
        self.checkOutStartLable.text=self._stardatatemp;
        NSLog(@"日期的值是：%@",value);
        
    }
    
    return self._stardatatemp;
}
#pragma mark 传递结束日期数据
-(NSString*)passEndDataValue:(NSString *)Endvalue
{
    
    if ([self.checkOutEndlable.text isEqual:@"Label"])
    {
        self.checkOutEndlable.text=Endvalue;
    }else
    {
        self._enddatatemp =Endvalue;
        self.checkOutEndlable.text=self._enddatatemp;
        NSLog(@"日期的值是：%@",Endvalue);
        
    }
    return Endvalue;
}

#pragma mark 点击开始按钮更改开始日期
- (IBAction)changData:(id)sender {
    
    changData * chang =[self.storyboard instantiateViewControllerWithIdentifier:@"changdata"];
            chang._checkOutDelegate = self;
           chang.startMonthtag =self.segementindex ;
            [self presentViewController:chang animated:YES completion:nil];
    
}

#pragma mark 点击结束按钮更改结束日期
- (IBAction)changEndData:(id)sender {
 

    checkDataEnd *changend = [self.storyboard instantiateViewControllerWithIdentifier:@"changdataend"];
    changend._checkOutDelegate2 =self;
    changend.endMonthtag = self.segementindex;
    [self presentViewController:changend animated:YES completion:nil];
    
}

#pragma mark 选择日或月日期
-(void)checkOutchang
{
    switch (self._checkOutSegment.selectedSegmentIndex) {
        case 0:
            self.segementindex =0;
            NSLog(@"选择更改日日期");
            break;
        case 1:
            self.segementindex = 1;
            NSLog(@"选择更改月日期");
            break;
        
    }
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
