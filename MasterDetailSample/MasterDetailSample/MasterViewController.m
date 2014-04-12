//
//  MasterViewController.m
//  MasterDetailSample
//
//  Created by yasuyuki on 2014/04/09.
//  Copyright (c) 2014年 yasuyuki. All rights reserved.
//

#import "MasterViewController.h"

#import "DetailViewController.h"

@interface MasterViewController () {
    NSArray *tableDataList;
}
@end

@implementation MasterViewController

- (void)awakeFromNib
{
    [super awakeFromNib];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSDictionary *cell0 = @{@"site":@"Apple", @"url":@"http://www.apple.com/jp/"};
    NSDictionary *cell1 = @{@"site":@"Apple Store", @"url":@"http://store.apple.com/jp"};
    NSDictionary *cell2 = @{@"site":@"Yahoo!ニュース", @"url":@"http://news.yahoo.co.jp/"};
    NSDictionary *cell3 = @{@"site":@"Google ニュース", @"url":@"https://news.google.co.jp/"};
    
    NSDictionary *section1 = @{@"header":@"Apple", @"data":@[cell0, cell1]};
    NSDictionary *section2 = @{@"header":@"ニュース", @"data":@[cell2, cell3]};
    
    tableDataList = @[section1, section2];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return tableDataList.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSDictionary *sectionData = tableDataList[section];
    NSArray *data = sectionData[@"data"];
    return data.count;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    NSDictionary *sectionData = tableDataList[section];
    return sectionData[@"header"];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];

    NSDictionary *cellData = [self cellDataAtIndexPath:indexPath];

    cell.textLabel.text = cellData[@"site"];
    cell.detailTextLabel.text = cellData[@"url"];
    
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"showDetail"]) {
        
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        NSDictionary *cellData = [self cellDataAtIndexPath:indexPath];
        NSString *url = cellData[@"url"];
        [[segue destinationViewController] setDetailItem:url];
    }
}

-(NSDictionary *)cellDataAtIndexPath:(NSIndexPath *)indexPath
{
    NSDictionary *sectionData = tableDataList[indexPath.section];
    NSArray *cellArray = sectionData[@"data"];
    NSDictionary *cellData = cellArray[indexPath.row];
    return cellData;
}

@end
