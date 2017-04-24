//
//  ViewController.m
//  SwitchBar
//
//  Created by konglee on 2017/4/24.
//  Copyright © 2017年 konglee. All rights reserved.
//

#import "ViewController.h"
#import "ShapeView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self shapeView];
}

- (void)shapeView
{
    ShapeView *view = [[ShapeView alloc] initWithFrame:CGRectMake(0, 30, 200, 300)];
    view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:view];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
