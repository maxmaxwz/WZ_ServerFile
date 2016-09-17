//
//  ViewController.m
//  异步加载网络图片
//
//  Created by 汪舟 on 16/9/17.
//  Copyright © 2016年 wangzhou. All rights reserved.
//	https://raw.githubusercontent.com/maxmaxwz/WZ_ServerFile/master/apps.json

#import "ViewController.h"
#import "AFNetworking.h"
#import "appModel.h"
#import "UIImageView+WebCache.h"
#import "appCell.h"

@interface ViewController ()
@property (nonatomic, strong) NSArray *appList;




@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	[self loadImage];
}

- (void)loadImage
{
//	创建网络请求者
	AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
//发送get接受json数据
	[manager GET:@"https://raw.githubusercontent.com/zhangxiaochuZXC/ServerFile01/master/apps.json" parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, NSArray * responseObject) {
//	NSLog(@"%@--",responseObject);
		NSMutableArray *arrM = [NSMutableArray arrayWithCapacity:responseObject.count];
		[responseObject enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
//			字典转模型
			appModel *app = [appModel appModelWithDict:obj];
			[arrM addObject:app];
		}];
		_appList = arrM.copy;
//		刷新列表
		[self.tableView reloadData];

} failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
//	NSLog(@"%@",error);
}];

}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
	return _appList.count;

}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
	appCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellID" forIndexPath:indexPath];
	appModel *model = _appList[indexPath.row];
	/*  使用系统cell
	 cell.textLabel.text = model.name;
	 cell.detailTextLabel.text = model.download;
	 [cell.imageView sd_setImageWithURL:[NSURL URLWithString:model.icon] placeholderImage:[UIImage imageNamed:@"user_default"]];
	 */
	cell.model = model;


	return cell;
}


- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

@end
