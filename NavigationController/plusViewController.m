//
//  plusViewController.m
//  NavigationController
//
//  Created by 李智 on 16/3/20.
//  Copyright © 2016年 李智. All rights reserved.
//

#import "plusViewController.h"

@interface plusViewController ()<UIScrollViewDelegate>

@end

@implementation plusViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //创建headerView
    UIImageView *headerImage = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"back"]];
    headerImage.frame = CGRectMake(0, 0, self.view.frame.size.width, 200);
    headerImage.contentMode = UIViewContentModeScaleAspectFill;
    headerImage.clipsToBounds = YES;
    self.tableView.tableHeaderView =headerImage;
    
    
}

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

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
     [self dismissViewControllerAnimated:YES completion:nil];
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self popoverPresentationController];
}

@end
