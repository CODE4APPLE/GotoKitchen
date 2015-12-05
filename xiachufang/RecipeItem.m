//
//  RecipeIssue.m
//  xiachufang
//
//  Created by 臧其龙 on 15/12/4.
//  Copyright © 2015年 邓岚锋. All rights reserved.
//

#import "RecipeItem.h"

@implementation RecipeItem

+ (NSDictionary *)modelCustomPropertyMapper {
    return @{@"publishTime":@"pubish_time",
             @"cellTemplate": @"template",
             @"columnName": @"column_name",
             @"itemID": @"id"
             };
}

@end
