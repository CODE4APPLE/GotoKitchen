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

@interface HomeTableViewController ()
{
    RecipeInfo *info;
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
   
    [RecipeInfo fetchRecipeWithCompletionBlock:^(id returnValue) {
        info = [RecipeInfo yy_modelWithDictionary:returnValue];
        [self.tableView reloadData];
    } WithFailureBlock:^(NSError *error) {
        
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return info.issues.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    RecipeIssue *issue = info.issues[section];
    return issue.items.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    RecipeIssue *issue = info.issues[indexPath.section];
    RecipeItem *item = issue.items[indexPath.row];
    NSString *cellID = [HomepageCellManager cellIDOfReicpeItem:item];
    
    UITableViewCell *cell = [HomepageCellManager cellOfCellID:cellID withTableView:tableView withItem:item];
    return cell;

}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    RecipeIssue *issue = info.issues[indexPath.section];
    return [HomepageCellManager heightOfReicpeItem:issue.items[indexPath.row]];
    
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
