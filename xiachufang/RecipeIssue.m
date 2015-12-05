//
//  RecipeIssue.m
//  xiachufang
//
//  Created by 臧其龙 on 15/12/4.
//  Copyright © 2015年 邓岚锋. All rights reserved.
//

#import "RecipeIssue.h"
#import "RecipeItem.h"

@implementation RecipeIssue

+ (NSDictionary *)modelCustomPropertyMapper {
    return @{@"publishDate":@"publish_date",
             @"itemsCount": @"items_count",
             @"issueID": @"issue_id"
             };
}

+ (NSDictionary *)modelContainerPropertyGenericClass {
    return @{
             @"items" : RecipeItem.class
            };
}

@end
