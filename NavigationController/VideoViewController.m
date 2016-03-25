//
//  VideoViewController.m
//  NavigationController
//
//  Created by chrise on 16/3/25.
//  Copyright © 2016年 李智. All rights reserved.
//

#import "VideoViewController.h"

@interface VideoViewController ()<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic,strong)UITableView *tableView;
@end

@implementation VideoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    self.tableView = [[UITableView alloc]init];
//    self.tableView.frame = [UIScreen mainScreen].bounds;
//    [self.view addSubview:self.tableView];
//    self.tableView.delegate = self;
//    self.tableView.dataSource = self;
//    //创建headerView
//    UIImageView *headerImage = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"back"]];
//    headerImage.frame = CGRectMake(0, 0, self.view.frame.size.width, 200);
//    headerImage.contentMode = UIViewContentModeScaleAspectFill;
//    headerImage.clipsToBounds = YES;
//    self.tableView.tableHeaderView =headerImage;
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.backgroundColor = [UIColor cyanColor];
    [self.view addSubview:btn];
    
    WS(ws);
    [btn makeConstraints:^(MASConstraintMaker *make) {
        make.top.greaterThanOrEqualTo( ws.view.top ).offset(10);
        make.height.equalTo(60);
        make.width.equalTo(ws.view.width);
    }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

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

//-(void)scrollViewDidScroll:(UIScrollView *)scrollView{
//    CGFloat y = scrollView.contentOffset.y;
//    CGFloat target = self.tableView.tableHeaderView.frame.size.height-64-64;
//    
//    if (y> target) {
//        [self.navigationController.navigationBar setBackgroundImage:[UIImage createImageWithColor:[UIColor colorWithRed:255 green:255 blue:255 alpha:(y-target)/44]] forBarMetrics:UIBarMetricsDefault];
//    }
//    else{
//        UIImage *barImage = [UIImage imageNamed:@"trans"];
//        [self.navigationController.navigationBar setBackgroundImage:barImage forBarMetrics:UIBarMetricsDefault];
//    }
//    
//}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
