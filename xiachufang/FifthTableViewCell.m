//
//  FifthTableViewCell.m
//  xiachufang
//
//  Created by 臧其龙 on 15/11/25.
//  Copyright © 2015年 邓岚锋. All rights reserved.
//

#import "FifthTableViewCell.h"
#import "YYWebImage.h"

@implementation FifthTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)template5CellBindRecipeItem:(RecipeItem *)item
{
    self.recipeImageView.yy_imageURL = [NSURL URLWithString:item.contents.image.url];
    self.recipeTitleLabel.text = item.contents.title;
    self.recipeSummaryLabel.text = item.contents.desc;
    self.userAvatarImageView.yy_imageURL = [NSURL URLWithString:item.contents.author.photoURL];
    self.countLabel.text = [NSString stringWithFormat:@"%ld人做过",(long)item.contents.n_cooked];
}

@end
