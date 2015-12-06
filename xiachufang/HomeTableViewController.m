//
//  HomeTableViewController.m
//  xiachufang
//
//  Created by 臧其龙 on 15/11/25.
//  Copyright © 2015年 邓岚锋. All rights reserved.
//

#import "HomeTableViewController.h"
#import "FirstRowTableViewCell.h"
#import "SecondRowTableViewCell.h"
#import "FifthTableViewCell.h"
#import "RecipeInfo+Request.h"
#import "NSObject+YYModel.h"
#import "RecipeIssue.h"
#import "HomepageCellManager.h"
#import "Template1Cell.h"
#import "Template2Cell.h"
#import "Template4Cell.h"
#import "HomePageNavContent+Request.h"
#import "HomePageNavModel.h"

@interface HomeTableViewController ()
{
    RecipeInfo *info;
    HomePageNavContent *navContent;
    
    NSMutableArray *cellHeightArray;
}

@end

@implementation HomeTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.tableView registerNib:[UINib nibWithNibName:@"Template1Cell" bundle:nil] forCellReuseIdentifier:kTemplate1CellID];
    [self.tableView registerNib:[UINib nibWithNibName:@"Template2Cell" bundle:nil] forCellReuseIdentifier:kTemplate2CellID];
    [self.tableView registerNib:[UINib nibWithNibName:@"Template4Cell" bundle:nil] forCellReuseIdentifier:kTemplate4CellID];
    [self.tableView registerNib:[UINib nibWithNibName:@"FifthTableViewCell" bundle:nil] forCellReuseIdentifier:kTemplate5CellID];
    self.tableView.tableFooterView = [[UIView alloc] init];
    
    dispatch_group_t group = dispatch_group_create();
    dispatch_group_enter(group);
    [RecipeInfo fetchRecipeWithCompletionBlock:^(id returnValue) {
        info = [RecipeInfo yy_modelWithDictionary:returnValue];
        dispatch_group_leave(group);
    } WithFailureBlock:^(NSError *error) {
        dispatch_group_leave(group);
    }];
    
    dispatch_group_enter(group);
    [HomePageNavContent fetchNavContentWithCompletionBlock:^(id returnValue) {
        navContent = [HomePageNavContent yy_modelWithDictionary:returnValue];
        dispatch_group_leave(group);
    } WithFailureBlock:^(NSError *error) {
        dispatch_group_leave(group);
    }];

    dispatch_group_notify(group, dispatch_get_main_queue(), ^{
        [self.tableView reloadData];
    });
  
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return info.issues.count + 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    if (section == 0) {
        return 2;
    }else
    {
        RecipeIssue *issue = info.issues[section-1];
        return issue.items.count;
    }
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        UITableViewCell *cell = [HomepageCellManager cellOfCellID:kFirstCellID withTableView:tableView withItem:navContent withIndexPath:indexPath];
        return cell;
    }else
    {
        RecipeIssue *issue = info.issues[indexPath.section-1];
        RecipeItem *item = issue.items[indexPath.row];
        NSString *cellID = [HomepageCellManager cellIDOfReicpeItem:item];
        UITableViewCell *cell = [HomepageCellManager cellOfCellID:cellID withTableView:tableView withItem:item withIndexPath:indexPath];
        return cell;
    }
    
    return nil;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section == 0) {
        if (indexPath.row == 0) {
            return 140;
        }else
        {
            return 90;
        }
    }else
    {
        RecipeIssue *issue = info.issues[indexPath.section-1];
        return [HomepageCellManager heightOfReicpeItem:issue.items[indexPath.row]];
    }
    
    
}

- (void)tableView:(UITableView *)tableView didEndDisplayingCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
