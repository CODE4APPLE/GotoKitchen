//
//  RecipeContents.m
//  xiachufang
//
//  Created by 臧其龙 on 15/12/4.
//  Copyright © 2015年 邓岚锋. All rights reserved.
//

#import "RecipeContents.h"

@implementation RecipeContents

+ (NSDictionary *)modelCustomPropertyMapper {
    return @{@"videoURL":@"video_url",
             @"recipeID": @"id"
             };
}

@end
