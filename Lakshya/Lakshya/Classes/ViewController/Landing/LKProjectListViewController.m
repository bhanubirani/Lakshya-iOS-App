//
//  LKProjectListViewController.m
//  Lakshya
//
//  Created by Bhanu Birani on 08/02/15.
//  Copyright (c) 2015 Lakshya. All rights reserved.
//

#import "LKProjectListViewController.h"
#import "LKUtils.h"

@interface LKProjectListViewController ()

@end

@implementation LKProjectListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)leftBarButtonAction:(id)sender
{
    [(APP_DELEGATE).rootVC didRecieveOpenLeftPanelCallback];
}

@end
