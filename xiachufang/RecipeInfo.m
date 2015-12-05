//
//  RecipeInfo.m
//  xiachufang
//
//  Created by 臧其龙 on 15/12/4.
//  Copyright © 2015年 邓岚锋. All rights reserved.
//

#import "RecipeInfo.h"
#import "RecipeIssue.h"

@implementation RecipeInfo

+ (NSDictionary *)modelContainerPropertyGenericClass {
    return @{
             @"issues" : RecipeIssue.class
             };
}

@end
