//
//  VideoTableViewController.m
//  NavigationController
//
//  Created by 李智 on 16/3/17.
//  Copyright © 2016年 李智. All rights reserved.
//

#import "VideoTableViewController.h"

@interface VideoTableViewController ()<UIScrollViewDelegate>

@end

@implementation VideoTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    self.tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, -70, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height) style:UITableViewStylePlain];
    
    //创建headerView
    UIImageView *headerImage = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"back"]];
    headerImage.frame = CGRectMake(0, 0, self.view.frame.size.width, 200);
    headerImage.contentMode = UIViewContentModeScaleAspectFill;
    headerImage.clipsToBounds = YES;
    self.tableView.tableHeaderView =headerImage;
    
 
}

//-(void)setTableView:(UITableView *)tableView{
//    if (!tableView) {
//        tableView =[[UITableView alloc]initWithFrame:CGRectMake(0, -70, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height) style:UITableViewStylePlain];
//    }
//    self.tableView = tableView;
//}
//改变tableView的frame，起始origin
//-(void)viewDidAppear:(BOOL)animated{
//    CGRect frame= self.tableView.frame;
//    frame.origin.y = -64;
//    frame.size.height +=64;
//    self.tableView.frame = frame;
//}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 15;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [[UITableViewCell alloc]initWithStyle:1 reuseIdentifier:@"cell"];
    cell.textLabel.text = [NSString stringWithFormat:@"%ld",(long)indexPath.row];
    
    // Configure the cell...
    
    return cell;
}

-(void)scrollViewDidScroll:(UIScrollView *)scrollView{
    CGFloat y = scrollView.contentOffset.y;
    CGFloat target = self.tableView.tableHeaderView.frame.size.height-64-64;

    if (y> target) {
        [self.navigationController.navigationBar setBackgroundImage:[UIImage createImageWithColor:[UIColor colorWithRed:255 green:255 blue:255 alpha:(y-target)/44]] forBarMetrics:UIBarMetricsDefault];
    }
    else{
        UIImage *barImage = [UIImage imageNamed:@"trans"];
        [self.navigationController.navigationBar setBackgroundImage:barImage forBarMetrics:UIBarMetricsDefault];
    }
   
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
