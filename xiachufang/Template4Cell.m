//
//  Template4Cell.m
//  xiachufang
//
//  Created by 臧其龙 on 15/12/5.
//  Copyright © 2015年 邓岚锋. All rights reserved.
//

#import "Template4Cell.h"
#import "YYWebImage.h"

@implementation Template4Cell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)template4CellBindRecipeItem:(RecipeItem *)item
{
    self.recipeImageView.yy_imageURL = [NSURL URLWithString:item.contents.image.url];
    self.recipeWhisperLabel.text = item.contents.whisper;
}

@end
