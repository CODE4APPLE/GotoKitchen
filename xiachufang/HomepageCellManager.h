//
//  HomepageCellManager.h
//  xiachufang
//
//  Created by 臧其龙 on 15/12/4.
//  Copyright © 2015年 邓岚锋. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

extern NSString * const kTemplate1CellID;
extern NSString * const kTemplate2CellID;
extern NSString * const kTemplate4CellID;
extern NSString * const kTemplate5CellID;
extern NSString * const kFirstCellID;
extern NSString * const kSecondCellID;

@class RecipeItem;

@interface HomepageCellManager : NSObject

+ (CGFloat)heightOfReicpeItem:(RecipeItem *)item;

+ (NSString *)cellIDOfReicpeItem:(RecipeItem *)item;

+ (UITableViewCell *)cellOfCellID:(NSString *)cellID
                    withTableView:(UITableView *)tableView
                         withItem:(id)item
                    withIndexPath:(NSIndexPath *)indexPath;

@end
