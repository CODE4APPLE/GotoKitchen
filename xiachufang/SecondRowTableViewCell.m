//
//  SecondRowTableViewCell.m
//  xiachufang
//
//  Created by 臧其龙 on 15/11/25.
//  Copyright © 2015年 邓岚锋. All rights reserved.
//

#import "SecondRowTableViewCell.h"
#import "HomePageNavContent.h"
#import "HomePageNavModel.h"
#import "YYWebImage.h"

@implementation SecondRowTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)secondRowCellBindRecipeItem:(HomePageNavContent *)item
{
    NSArray *navs = item.navs;
    
    HomePageNavModel *model1 = navs[0];
    [self.firstButton yy_setImageWithURL:[NSURL URLWithString:model1.picurl] forState:UIControlStateNormal options:YYWebImageOptionUseNSURLCache];
    self.firstLabel.text = model1.name;
    
    HomePageNavModel *model2 = navs[1];
    [self.secondButton yy_setImageWithURL:[NSURL URLWithString:model2.picurl] forState:UIControlStateNormal options:YYWebImageOptionUseNSURLCache];
    self.secondLabel.text = model2.name;
    
    HomePageNavModel *model3 = navs[2];
    [self.thirdButton yy_setImageWithURL:[NSURL URLWithString:model3.picurl] forState:UIControlStateNormal options:YYWebImageOptionUseNSURLCache];
    self.thirdLabel.text = model3.name;
    
    HomePageNavModel *model4 = navs[3];
    [self.fourthButton yy_setImageWithURL:[NSURL URLWithString:model4.picurl] forState:UIControlStateNormal options:YYWebImageOptionUseNSURLCache];
    self.fourthLabel.text = model4.name;
}

@end
