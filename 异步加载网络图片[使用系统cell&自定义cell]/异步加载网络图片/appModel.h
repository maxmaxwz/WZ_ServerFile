//
//  appModel.h
//  异步加载网络图片
//
//  Created by 汪舟 on 16/9/17.
//  Copyright © 2016年 wangzhou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface appModel : NSObject
/**
 *   download = "10311\U4e07";
 icon = "http://p16.qhimg.com/dr/48_48_/t0125e8d438ae9d2fbb.png";
 name
 */

///app名称
@property (nonatomic, copy) NSString *name;
///图片
@property (nonatomic, copy) NSString *icon;
///下载量
@property (nonatomic, copy) NSString *download;

+(instancetype)appModelWithDict:(NSDictionary *)dict;

@end
