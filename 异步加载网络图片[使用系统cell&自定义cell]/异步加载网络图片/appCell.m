//
//  appCell.m
//  异步加载网络图片
//
//  Created by 汪舟 on 16/9/18.
//  Copyright © 2016年 wangzhou. All rights reserved.
//

#import "appCell.h"
#import "UIImageView+WebCache.h"

@interface appCell ()
@property (weak, nonatomic) IBOutlet UIImageView *iconImage;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *downLoadLabel;

@end

@implementation appCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setModel:(appModel *)model
{
	_model = model;
	self.nameLabel.text = model.name;
	self.downLoadLabel.text = model.download;
	[self.iconImage sd_setImageWithURL:[NSURL URLWithString:model.icon] placeholderImage:[UIImage imageNamed:@"user_default"]];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
