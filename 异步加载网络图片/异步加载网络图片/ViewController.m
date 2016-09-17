//
//  ViewController.m
//  异步加载网络图片
//
//  Created by 汪舟 on 16/9/17.
//  Copyright © 2016年 wangzhou. All rights reserved.
//

#import "ViewController.h"
#import "AFNetworking.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	[self loadImage];
}

- (void)loadImage
{
	AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
[manager GET:@"https://raw.githubusercontent.com/zhangxiaochuZXC/ServerFile01/master/apps.json" parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
	
} failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
	
}];






}


- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

@end
