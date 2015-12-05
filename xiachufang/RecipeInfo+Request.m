//
//  RecipeInfo+Request.m
//  xiachufang
//
//  Created by 臧其龙 on 15/12/4.
//  Copyright © 2015年 邓岚锋. All rights reserved.
//

#import "RecipeInfo+Request.h"
#import "AFHTTPRequestOperationManager.h"

static NSString * const kIssueURL = @"http://api.xiachufang.com/v2/issues/list.json?cursor=&origin=iphone&api_sign=e2d55365348a66ad9bd947d50c3c5f3b&sk=atBiS8VAS7W2K5COcpf1kg&size=2&timezone=Asia%2FShanghai&version=5.1.1&api_key=0f9f79be1dac5f003e7de6f876b17c00";

@implementation RecipeInfo (Request)

+ (void)fetchRecipeWithCompletionBlock:(CompletionBlock)successBlock WithFailureBlock:(FailureBlock)failureBlock
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    
    [manager GET:kIssueURL parameters:nil success:^(AFHTTPRequestOperation * _Nonnull operation, id  _Nonnull responseObject) {
        successBlock(responseObject[@"content"]);
    } failure:^(AFHTTPRequestOperation * _Nullable operation, NSError * _Nonnull error) {
        failureBlock(error);
    }];
}

@end
