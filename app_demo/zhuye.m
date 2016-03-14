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
    NSLog(@"nihao");
    
//    self._peoplelable = [[UILabel alloc]initWithFrame:CGRectMake( 160, 140, 100, 50)
//                      ];
//    self._peoplelable.backgroundColor = [UIColor redColor];
//    [self._peoplelable setText:@"8888"];
//    self._peoplelable.textAlignment = NSTextAlignmentCenter;
//    [self.view addSubview:self._peoplelable];
//    
//    self._segemenlable = [[UILabel alloc]initWithFrame:CGRectMake(160, 200, 100, 30)];
//    self._segemenlable.backgroundColor=[UIColor greenColor];
//    self._segemenlable.textAlignment = NSTextAlignmentCenter;
//    [self.view addSubview:self._segemenlable];
//
    
    _webview.delegate = self;
    
    
    //获得app的本地路径
    NSString *path = [[NSBundle mainBundle]bundlePath];
   
    //将path 转化为文件路径
    NSURL *baseurl = [NSURL fileURLWithPath:path];
    
   //获取本地html文件
    NSString *htmlPath = [[NSBundle mainBundle]pathForResource:@"Echart" ofType:@"html"];
    NSLog(@"parh is --%@",htmlPath);
    //字符串用UTF8格式
    NSStringEncoding encoding = NSUTF8StringEncoding;
    NSError *error1 = nil;
    //通过指定的文件路劲和编码格式 读取数据
    NSString  *html = [NSString stringWithContentsOfFile:htmlPath encoding:encoding error:&error1];
   //在webview上加载数据
    [self.webview loadHTMLString:html baseURL:baseurl];
    [self.view addSubview:_webview];
    //防止初始化加载scorrllview时随意乱动导致的布局嵌套
    self.automaticallyAdjustsScrollViewInsets =NO;
   
    [self sendPost];

    
    [self.segment addTarget:self action:@selector(chang) forControlEvents:UIControlEventValueChanged];
}
#pragma mark 判断选择哪个segemen _segemenlable.text跟着变化
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


#pragma mark 调用第三方框架AFNetWorking 向服务器发送请求
-(void)sendPost
{
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    
    manager.responseSerializer = [AFJSONResponseSerializer serializer];
    
    NSDictionary *dic = @{@"username":@"demo1@demo.com",
                          @"password":@"demodemo",
                          @"grant_type":@"password",
                          @"client_secret":@"IZgwaBTZ2EdtT3hT7UzG2rLQ8S0Vmu9GDxeHwcPz",
                          @"client_id":@"42"};
    
    
    if (![NSJSONSerialization isValidJSONObject:dic]) {
        NSLog(@"不能转化为Jason数据");
    }
    
    
    [manager POST:@"https://api.xitech.cn/oauth/1/login" parameters:dic
         progress:^(NSProgress * _Nonnull uploadProgress) {
             NSLog(@"这个是Progress---%@",uploadProgress);
         } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
             NSLog(@"这个是responseObject1%--@",responseObject);
             
             
             
             //        NSDictionary * object=(NSDictionary *)responseObject;
             //        NSString * access_token = object[@"access_token"];
             
             
             //        for (NSDictionary * key1 in object[@"storeInfo"]) {
             //            NSLog(@"value:%@", [key1 objectForKey:@"access_token"]);
             //
             //        }
             
             
             
         } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
             NSLog(@"responseObject1请求失败--%@", [error localizedDescription]);
         }];
    
    //---------------------------------------------------------------------------------
    AFHTTPSessionManager *manager2 = [AFHTTPSessionManager manager];
    
    manager2.responseSerializer = [AFJSONResponseSerializer serializer];
    
    NSDictionary *dic2 = @{@"time":@"2016-01-02",
                           @"store_id":@"9B7BFBD7-094E-4F3E-D66D-EF8345097D4F",
                           @"access_token":@"bUcpEHGE1H31CQg4TRD2qIaNoRYnHC9GOncDE2O8",
                           
                           };
    
    
    if (![NSJSONSerialization isValidJSONObject:dic2]) {
        NSLog(@"不能转化为Jason数据");
    }
    
    
    [manager2 POST:@"https://api.xitech.cn/oauth/1/1001" parameters:dic2
          progress:^(NSProgress * _Nonnull uploadProgress) {
              NSLog(@"这个是Progress---%@",uploadProgress);
          } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
              NSLog(@"这个是responseObject2%--@",responseObject);
              
              
              //
              //             NSDictionary * object=(NSDictionary *)responseObject;
              //             for (NSDictionary * key1 in object[@"storeInfo"]) {
              //                 NSLog(@"value:%@", [key1 objectForKey:@"city_name"]);
              //
              //             }
              NSDictionary * object2=(NSDictionary *)responseObject;
              for (NSDictionary * key2 in object2)
              {  if([[key2 objectForKey:@"start_time"] isEqualToString:@"2016-01-03 08:30:00"] )
                  {
                      NSLog(@" value2 is --%@,%@,%@",[key2 objectForKey:@"in"],[key2 objectForKey:@"out"],[key2 objectForKey:@"time"]);
                  }
              }
              ;
              
          } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
              NSLog(@"请求失败--%@", [error localizedDescription]);
          }];
    
    
    
}
#pragma mark UIWebview的代理方法shouldStartLoadWithRequest 同时也是实现 js向OC传递数据
-(BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType
{
    NSString *requestURLString = [[[request URL] absoluteString]stringByRemovingPercentEncoding];
    NSLog(@"requestURLString 是 ---%@",requestURLString);
    
    if ([requestURLString hasPrefix:@"textapp:"])
    {
        NSArray *contents=[requestURLString componentsSeparatedByString:@":"];
        NSString *content_one = [contents objectAtIndex:1] ;
        NSString *content_two = [contents objectAtIndex:2];
        
        NSLog(@"js to oc data is -- %@,%@",content_one,content_two);
        return NO;
    }
    
    return YES;
}
#pragma mark UIWebview的代理方法webViewDidFinishLoad 同时也是实现 OC向js发送数据
-(void)webViewDidFinishLoad:(UIWebView *)webView
{
    
    NSDictionary * d = @{ @"time":@"2016-03-02",
                          @"store_id":@"9B7BFBD7-094E-4F3E-D66D-EF8345097D4F",
                          @"access_token":@"owqS7VdMn8oMVzeL7rEha1XhTbsFODOTRJGrPA0C"
                          };
    NSError *e2=nil;
    NSData *jsondata = [NSJSONSerialization dataWithJSONObject:d options:0 error:&e2];
    NSString *jsonString =[[NSString alloc] initWithData:jsondata encoding:NSUTF8StringEncoding];
    NSString *jsCommand =[NSString stringWithFormat:@"setdata(%@)",jsonString];
    [_webview stringByEvaluatingJavaScriptFromString:jsCommand];
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
