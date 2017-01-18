//
//  HXSearchBar.h
//  HXSearchBar
//
//  Created by 黄轩 on 2017/1/18.
//  Copyright © 2017年 黄轩. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HXSearchBar : UISearchBar

@property (nonatomic,strong) UIColor *cursorColor;//光标颜色
@property (nonatomic,strong) UITextField *searchBarTextField;//搜索框TextField
@property (nonatomic,strong) UIImage *clearButtonImage;//输入框清除按钮图片
@property (nonatomic,strong) UIImage *cancleButtonImage;//取消按钮图片
@property (nonatomic,strong) UIButton *cancleButton;//取消按钮 showsCancelButton = YES 才能获取到

@end
