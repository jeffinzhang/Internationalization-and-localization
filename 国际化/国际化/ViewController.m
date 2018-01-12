//
//  ViewController.m
//  国际化
//
//  Created by 张建飞 on 2018/1/12.
//  Copyright © 2018年 JeffinZhang. All rights reserved.
//

#import "ViewController.h"
#import "JeffinController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UIButton *Nextbtn = [[UIButton alloc]initWithFrame:CGRectMake([UIScreen mainScreen].bounds.size.width - 140, 100, 100, 50)];
    Nextbtn.backgroundColor = [UIColor redColor];
    [Nextbtn addTarget:self action:@selector(NextbtnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:Nextbtn];
    [Nextbtn setTitle:NSLocalizedString(@"NextbtnTitle",@"Localizable") forState:UIControlStateNormal];

    
    UILabel *contentLab = [[UILabel alloc]initWithFrame:CGRectMake(20, 300, [UIScreen mainScreen].bounds.size.width - 40, 200)];
    contentLab.numberOfLines = 0;
    contentLab.backgroundColor = [UIColor lightGrayColor];
    contentLab.text = NSLocalizedString(@"contentLabString",@"Localizable");
    [self.view addSubview:contentLab];
    
    
}

- (void)NextbtnClick{
    
    [self presentViewController:[[JeffinController alloc]init] animated:YES completion:nil];
}

@end
