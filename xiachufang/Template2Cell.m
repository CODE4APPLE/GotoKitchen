//
//  Template2Cell.m
//  xiachufang
//
//  Created by 臧其龙 on 15/12/5.
//  Copyright © 2015年 邓岚锋. All rights reserved.
//

#import "Template2Cell.h"
#import "YYWebImage.h"

@implementation Template2Cell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)template2CellBindRecipeItem:(RecipeItem *)item
{
    self.recipeImageView.yy_imageURL = [NSURL URLWithString:item.contents.image.url];
    self.recipeFirstLabel.text = item.contents.title_1st;
    self.recipeSecondLabel.text = item.contents.title_2nd;
}

@end
