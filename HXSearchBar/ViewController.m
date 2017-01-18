//
//  ViewController.m
//  黄轩博客 blog.libuqing.com
//
//  Created by 黄轩 on 2017/1/18.
//  Copyright © 2017年 黄轩 IT小子. All rights reserved.
//

#import "ViewController.h"

#import "HXSearchBar.h"

@interface ViewController () <UISearchBarDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self addSearchBar];
}

//添加搜索条
- (void)addSearchBar {
    //加上 搜索栏
    HXSearchBar *searchBar = [[HXSearchBar alloc] initWithFrame:CGRectMake(10, 100, self.view.frame.size.width - 20, 35)];
    searchBar.backgroundColor = [UIColor clearColor];
    searchBar.delegate = self;
    //输入框提示
    searchBar.placeholder = @"搜索材质";
    //光标颜色
    searchBar.cursorColor = [UIColor redColor];
    //TextField
    searchBar.searchBarTextField.layer.cornerRadius = 4;
    searchBar.searchBarTextField.layer.masksToBounds = YES;
    searchBar.searchBarTextField.layer.borderColor = [UIColor orangeColor].CGColor;
    searchBar.searchBarTextField.layer.borderWidth = 1.0;

    //清除按钮图标
    searchBar.clearButtonImage = [UIImage imageNamed:@"demand_delete"];
    
    //去掉取消按钮灰色背景
    searchBar.hideSearchBarBackgroundImage = YES;

    [self.view addSubview:searchBar];
}

#pragma mark - UISearchBar Delegate

//已经开始编辑时的回调
- (void)searchBarTextDidBeginEditing:(UISearchBar *)searchBar {
    HXSearchBar *sear = (HXSearchBar *)searchBar;
    //取消按钮
    sear.cancleButton.backgroundColor = [UIColor clearColor];
    [sear.cancleButton setTitle:@"取消" forState:UIControlStateNormal];
    [sear.cancleButton setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    sear.cancleButton.titleLabel.font = [UIFont systemFontOfSize:14];
}

//编辑文字改变的回调
- (void)searchBar:(UISearchBar *)searchBar textDidChange:(NSString *)searchText {
    NSLog(@"searchText:%@",searchText);
}

//搜索按钮
- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar {

}

//取消按钮点击的回调
- (void)searchBarCancelButtonClicked:(UISearchBar *)searchBar {
    searchBar.showsCancelButton = NO;
    searchBar.text = nil;
    [self.view endEditing:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
