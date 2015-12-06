//
//  HomePageNavContent+Request.m
//  xiachufang
//
//  Created by 臧其龙 on 15/12/6.
//  Copyright © 2015年 邓岚锋. All rights reserved.
//

#import "HomePageNavContent+Request.h"
#import "AFHTTPRequestOperationManager.h"

static NSString * const kNavURL = @"http://api.xiachufang.com/v2/init_page_v5.json?version=5.1.1&timezone=Asia%2FShanghai&api_sign=4020e7bf420f03a6e2c033e3c1ce26d2&api_key=0f9f79be1dac5f003e7de6f876b17c00&origin=iphone&sk=atBiS8VAS7W2K5COcpf1kg";

@implementation HomePageNavContent (Request)

+ (void)fetchNavContentWithCompletionBlock:(CompletionBlock)successBlock WithFailureBlock:(FailureBlock)failureBlock
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    
    [manager GET:kNavURL parameters:nil success:^(AFHTTPRequestOperation * _Nonnull operation, id  _Nonnull responseObject) {
        successBlock(responseObject[@"content"]);
    } failure:^(AFHTTPRequestOperation * _Nullable operation, NSError * _Nonnull error) {
        failureBlock(error);
    }];
}

@end
