//
//  HomePageNavContent.m
//  xiachufang
//
//  Created by 臧其龙 on 15/12/6.
//  Copyright © 2015年 邓岚锋. All rights reserved.
//

#import "HomePageNavContent.h"
#import "HomePageNavModel.h"

@implementation HomePageNavContent

+ (NSDictionary *)modelContainerPropertyGenericClass {
    return @{
             @"navs" : HomePageNavModel.class
             };
}

@end
