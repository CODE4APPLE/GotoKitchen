//
//  FirstRowTableViewCell.m
//  xiachufang
//
//  Created by 臧其龙 on 15/11/25.
//  Copyright © 2015年 邓岚锋. All rights reserved.
//

#import "FirstRowTableViewCell.h"
#import "HomePageNavContent.h"
#import "YYWebImage.h"

@implementation FirstRowTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)firstRowCellBindRecipeItem:(HomePageNavContent *)item
{
    self.leftImageView.yy_imageURL = [NSURL URLWithString:item.pop_recipe_picurl];
}

@end
