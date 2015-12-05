//
//  RecipeAuthor.m
//  xiachufang
//
//  Created by 臧其龙 on 15/12/4.
//  Copyright © 2015年 邓岚锋. All rights reserved.
//

#import "RecipeAuthor.h"

@implementation RecipeAuthor

+ (NSDictionary *)modelCustomPropertyMapper {
    return @{@"photoURL":@"photo",
             @"userID":@"id"
             };
}

@end
