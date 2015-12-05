//
//  RecipeIssue.h
//  xiachufang
//
//  Created by 臧其龙 on 15/12/4.
//  Copyright © 2015年 邓岚锋. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RecipeContents.h"

@interface RecipeItem : NSObject

@property (nonatomic, copy) NSString *publishTime;
@property (nonatomic, copy) NSString *url;
@property (nonatomic, assign) NSInteger cellTemplate;
@property (nonatomic, copy) NSString *itemID;
@property (nonatomic, copy) NSString *columnName;
@property (nonatomic, strong) RecipeContents *contents;

@end
