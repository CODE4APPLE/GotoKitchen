//
//  RecipeContents.h
//  xiachufang
//
//  Created by 臧其龙 on 15/12/4.
//  Copyright © 2015年 邓岚锋. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "RecipeImage.h"
#import "RecipeAuthor.h"

@interface RecipeContents : NSObject

@property (nonatomic, copy) NSString *videoURL;
@property (nonatomic, strong) RecipeImage *image;
@property (nonatomic, strong) RecipeAuthor *author;
@property (nonatomic, copy) NSString *title;
@property (nonatomic, assign) NSInteger n_cooked;
@property (nonatomic, assign) NSInteger n_dishes;
@property (nonatomic, assign) CGFloat score;
@property (nonatomic, copy) NSString *recipeID;
@property (nonatomic, copy) NSString *desc;
@property (nonatomic, copy) NSString *title_1st;
@property (nonatomic, copy) NSString *title_2nd;
@property (nonatomic, copy) NSString *whisper;

@end
