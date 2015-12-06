//
//  HomepageCellManager.m
//  xiachufang
//
//  Created by 臧其龙 on 15/12/4.
//  Copyright © 2015年 邓岚锋. All rights reserved.
//

#import "HomepageCellManager.h"
#import "RecipeItem.h"
#import "Template1Cell.h"
#import "Template2Cell.h"
#import "Template4Cell.h"
#import "FifthTableViewCell.h"

static CGFloat const kTemplate1CellHeight = 270;
static CGFloat const kTemplate2CellHeight = 220;
static CGFloat const kTemplate4CellHeight = 320;
static CGFloat const kTemplate5CellHeight = 250;

NSString * const kTemplate1CellID = @"kTemplate1CellID";
NSString * const kTemplate2CellID = @"kTemplate2CellID";
NSString * const kTemplate4CellID = @"kTemplate4CellID";
NSString * const kTemplate5CellID = @"kTemplate5CellID";

@implementation HomepageCellManager

+ (CGFloat)heightOfReicpeItem:(RecipeItem *)item
{
    switch (item.cellTemplate) {
        case 1:
            return kTemplate1CellHeight;
            break;
        case 2:
            return kTemplate2CellHeight;
            break;
        case 4:
            return kTemplate4CellHeight;
            break;
        case 5:
            return kTemplate5CellHeight;
            break;
            
        default:
            return 0;
            break;
    }
}

+ (UITableViewCell *)cellOfCellID:(NSString *)cellID
                    withTableView:(UITableView *)tableView
                         withItem:(RecipeItem *)item
{
    if ([cellID isEqualToString: kTemplate1CellID]) {
        Template1Cell *cell = (Template1Cell *)[tableView dequeueReusableCellWithIdentifier:cellID];
        [cell template1CellBindRecipeItem:item];
        return cell;
    }
    
    if ([cellID isEqualToString: kTemplate2CellID]) {
        Template2Cell *cell = (Template2Cell *)[tableView dequeueReusableCellWithIdentifier:cellID];
        [cell template2CellBindRecipeItem:item];
        return cell;
    }
    
    if ([cellID isEqualToString: kTemplate4CellID]) {
        Template4Cell *cell = (Template4Cell *)[tableView dequeueReusableCellWithIdentifier:cellID];
        [cell template4CellBindRecipeItem:item];
        return cell;
    }
    
    if ([cellID isEqualToString: kTemplate5CellID]) {
        FifthTableViewCell *cell = (FifthTableViewCell *)[tableView dequeueReusableCellWithIdentifier:cellID];
        [cell template5CellBindRecipeItem:item];
        return cell;
    }
    
    return nil;

}

+ (NSString *)cellIDOfReicpeItem:(RecipeItem *)item
{
    switch (item.cellTemplate) {
        case 1:
            return kTemplate1CellID;
            break;
        case 2:
            return kTemplate2CellID;
            break;
        case 4:
            return kTemplate4CellID;
            break;
        case 5:
            return kTemplate5CellID;
            break;
            
        default:
            return kTemplate1CellID;
            break;
    }
}

@end
