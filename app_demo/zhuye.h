//
//  zhuye.h
//  app_demo
//
//  Created by 林少川 on 16/2/16.
//  Copyright © 2016年 oc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AFNetworking.h>

@interface zhuye : UIViewController<UIWebViewDelegate>
@property (strong, nonatomic) IBOutlet UILabel *_peoplelable;
@property (strong, nonatomic) IBOutlet UILabel *_segemenlable;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segment;
@property int i;

@property (strong, nonatomic) IBOutlet UIWebView *webview;
@end
