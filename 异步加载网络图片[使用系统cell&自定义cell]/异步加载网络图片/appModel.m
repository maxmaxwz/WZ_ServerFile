//
//  appModel.m
//  异步加载网络图片
//
//  Created by 汪舟 on 16/9/17.
//  Copyright © 2016年 wangzhou. All rights reserved.
//

#import "appModel.h"

@implementation appModel
+(instancetype)appModelWithDict:(NSDictionary *)dict
{
	appModel *app = [[appModel alloc]init];
	[app setValuesForKeysWithDictionary:dict];
	return app;
}
@end
