//
//  Template1Cell.m
//  xiachufang
//
//  Created by 臧其龙 on 15/12/4.
//  Copyright © 2015年 邓岚锋. All rights reserved.
//

#import "Template1Cell.h"
#import "YYWebImage.h"

@implementation Template1Cell

- (void)template1CellBindRecipeItem:(RecipeItem *)item
{
    self.recipeImageView.yy_imageURL = [NSURL URLWithString:item.contents.image.url];
    self.recipeTitle.text = item.contents.title;
    self.recipeDesc.text = item.contents.desc;
}

@end
