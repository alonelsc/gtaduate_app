//
//  checkoutDelegate.h
//  app_demo
//
//  Created by 林少川 on 16/3/12.
//  Copyright © 2016年 oc. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol checkoutDelegate <NSObject>
-(NSString*)passDataValue:(NSString *)value;
-(NSString*)passEndDataValue:(NSString *)Endvalue;
@end
