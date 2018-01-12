//
//  JeffinController.m
//  国际化
//
//  Created by 张建飞 on 2018/1/12.
//  Copyright © 2018年 JeffinZhang. All rights reserved.
//

#import "JeffinController.h"

@interface JeffinController ()

@end

@implementation JeffinController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor colorWithWhite:0.9 alpha:1];
    
    UIButton *backbtn = [[UIButton alloc]initWithFrame:CGRectMake(20, 100, 100, 50)];
    backbtn.backgroundColor = [UIColor blueColor];
    [backbtn addTarget:self action:@selector(backbtnClick) forControlEvents:UIControlEventTouchUpInside];
    [backbtn setTitle:NSLocalizedStringFromTable(@"backbtnTitle",@"JeffinControllerLocalizable", nil) forState:UIControlStateNormal];
    [self.view addSubview:backbtn];
    
    
    UILabel *poetryLab = [[UILabel alloc]initWithFrame:CGRectMake(20, 200, [UIScreen mainScreen].bounds.size.width - 40, 200)];
    poetryLab.numberOfLines = 0;
    poetryLab.backgroundColor = [UIColor whiteColor];
    poetryLab.text = NSLocalizedStringFromTable(@"poetryLabString",@"JeffinControllerLocalizable", nil);
    [self.view addSubview:poetryLab];

}

- (void)backbtnClick{
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

@end
