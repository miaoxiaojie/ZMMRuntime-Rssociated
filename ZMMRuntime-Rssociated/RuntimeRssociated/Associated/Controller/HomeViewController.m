//
//  HomeViewController.m
//  RuntimeRssociated
//
//  Created by miao on 2019/4/3.
//  Copyright © 2019年 miao. All rights reserved.
//

#import "HomeViewController.h"
#import "UIViewController+associated.h"
#import "DetailsViewController.h"

@interface HomeViewController ()

@property (nonatomic, strong) UIButton *welcomeButton;

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view addSubview:self.welcomeButton];
    
    
}


-(void)p_enterShowTabar:(UIButton *)sender{
    DetailsViewController *VC = [[DetailsViewController alloc]init];
    [self.navigationController pushViewController:VC animated:YES];
    self.hidesBottomBarWhenPushed = NO;
    
}

- (UIButton *)welcomeButton {
    
    if (!_welcomeButton) {
        _welcomeButton = [[UIButton alloc] initWithFrame:CGRectMake(100, 200, 200, 50)];
        
        [_welcomeButton setBackgroundColor:[UIColor greenColor]];
        [_welcomeButton setTitle:@"展示tabbar" forState:UIControlStateNormal];
        [_welcomeButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_welcomeButton addTarget:self action:@selector(p_enterShowTabar:) forControlEvents:UIControlEventTouchUpInside];
        
    }
    return _welcomeButton;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
