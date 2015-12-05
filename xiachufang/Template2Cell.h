//
//  Template2Cell.h
//  xiachufang
//
//  Created by 臧其龙 on 15/12/5.
//  Copyright © 2015年 邓岚锋. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RecipeItem.h"

@interface Template2Cell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *recipeImageView;
@property (weak, nonatomic) IBOutlet UILabel *recipeFirstLabel;
@property (weak, nonatomic) IBOutlet UILabel *recipeSecondLabel;

- (void)template2CellBindRecipeItem:(RecipeItem *)item;

@end
