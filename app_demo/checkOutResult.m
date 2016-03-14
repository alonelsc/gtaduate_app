//
//  checkOutResult.m
//  app_demo
//
//  Created by 林少川 on 16/2/20.
//  Copyright © 2016年 oc. All rights reserved.
//

#import "checkOutResult.h"

@interface checkOutResult ()

@end

@implementation checkOutResult

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
 
//    _webview.delegate = self;
//    
//    
//    
//    NSString *path = [[NSBundle mainBundle]bundlePath];
//    NSURL *baseurl = [NSURL fileURLWithPath:path];
//    NSString *htmlPath = [[NSBundle mainBundle]pathForResource:@"Echart" ofType:@"html"];
////    NSLog(@"echart load id -- %@",htmlPath);
//    NSStringEncoding encoding = NSUTF8StringEncoding;
//    
//    NSError *error1 = nil;
//    NSString  *html = [NSString stringWithContentsOfFile:htmlPath encoding:encoding error:&error1];
//    [self.webview loadHTMLString:html baseURL:baseurl];
//    [self.view addSubview:_webview];
    
//   [self sendPost];
//   [self sendJson];
    
//    self.automaticallyAdjustsScrollViewInsets =NO;
}
//
//-(void)sendJson
//{
//    NSDictionary * d = @{ @"time":@"2016-01-09",
//                        };
//    NSError *e2=nil;
//    NSData *jsondata = [NSJSONSerialization dataWithJSONObject:d options:0 error:&e2];
//    NSString *jsonString =[[NSString alloc] initWithData:jsondata encoding:NSUTF8StringEncoding];
//    NSString *jsCommand =[NSString stringWithFormat:@"setdata()"];
//    [_webview stringByEvaluatingJavaScriptFromString:jsCommand];
//    
//}
//
//-(void)sendPost
//{
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
//             NSLog(@"responseObject1请求失败--%@", [error localizedDescription]);
//         }];
//
//    //---------------------------------------------------------------------------------
//    AFHTTPSessionManager *manager2 = [AFHTTPSessionManager manager];
//    
//    manager2.responseSerializer = [AFJSONResponseSerializer serializer];
//    
//    NSDictionary *dic2 = @{@"time":@"2016-01-02",
//                           @"store_id":@"9B7BFBD7-094E-4F3E-D66D-EF8345097D4F",
//                           @"access_token":@"bUcpEHGE1H31CQg4TRD2qIaNoRYnHC9GOncDE2O8",
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
//
//
//}
//
//-(BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType
//{
//    NSString *requestURLString = [[[request URL] absoluteString]stringByRemovingPercentEncoding];
//    NSLog(@"requestURLString 是 ---%@",requestURLString);
//  
//    if ([requestURLString hasPrefix:@"textapp:"])
//    {
//        NSArray *contents=[requestURLString componentsSeparatedByString:@":"];
//        NSString *content_one = [contents objectAtIndex:1] ;
//        NSString *content_two = [contents objectAtIndex:2];
//        
//        NSLog(@"js to oc data is -- %@,%@",content_one,content_two);
//        return NO;
//    }
//    
//      return YES;
//}
//
//-(void)webViewDidFinishLoad:(UIWebView *)webView
//{
//    
//    NSDictionary * d = @{ @"time":@"2016-03-02",
//                          @"store_id":@"9B7BFBD7-094E-4F3E-D66D-EF8345097D4F",
//                          @"access_token":@"owqS7VdMn8oMVzeL7rEha1XhTbsFODOTRJGrPA0C"
//                          };
//    NSError *e2=nil;
//    NSData *jsondata = [NSJSONSerialization dataWithJSONObject:d options:0 error:&e2];
//    NSString *jsonString =[[NSString alloc] initWithData:jsondata encoding:NSUTF8StringEncoding];
//    NSString *jsCommand =[NSString stringWithFormat:@"setdata(%@)",jsonString];
//    [_webview stringByEvaluatingJavaScriptFromString:jsCommand];
//}
//

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
