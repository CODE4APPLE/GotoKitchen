//
//  RecipeIssue.h
//  xiachufang
//
//  Created by 臧其龙 on 15/12/4.
//  Copyright © 2015年 邓岚锋. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RecipeIssue : NSObject

@property (nonatomic, assign) NSInteger itemsCount;
@property (nonatomic, copy) NSString *title;
@property (nonatomic, strong) NSArray *items;
@property (nonatomic, assign) NSInteger issueID;
@property (nonatomic, copy) NSString *publishDate;

@end
