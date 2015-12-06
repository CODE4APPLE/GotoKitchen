//
//  HomePageNavContent+Request.h
//  xiachufang
//
//  Created by 臧其龙 on 15/12/6.
//  Copyright © 2015年 邓岚锋. All rights reserved.
//

#import "HomePageNavContent.h"
#import "Config.h"

@interface HomePageNavContent (Request)

+ (void)fetchNavContentWithCompletionBlock:(CompletionBlock)successBlock WithFailureBlock:(FailureBlock)failureBlock;

@end
