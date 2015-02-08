//
//  LKRootViewController.m
//  Lakshya
//
//  Created by Bhanu Birani on 08/02/15.
//  Copyright (c) 2015 Lakshya. All rights reserved.
//

#import "LKRootViewController.h"
#import "LKLeftMenuViewController.h"
#import "LKUtils.h"
#import "AppDelegate.h"

@interface LKRootViewController ()

@property (nonatomic, strong) UINavigationController *centerNav;

@end

@implementation LKRootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    (APP_DELEGATE).rootVC = self;
    
    [self setupDrawer];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Drawer view controller

- (void)setupDrawer {
    LKLeftMenuViewController * leftDrawer = [self.storyboard instantiateViewControllerWithIdentifier:@"LKLeftMenuViewController"];
    
    self.centerNav = [self.storyboard instantiateViewControllerWithIdentifier:@"LKProjectListNavigationController"];

    self.drawerController = [[MMDrawerController alloc] initWithCenterViewController:self.centerNav leftDrawerViewController:leftDrawer rightDrawerViewController:nil];
    [self.drawerController setMaximumLeftDrawerWidth:LEFT_DRAWER_WIDTH];
    [self.drawerController setCloseDrawerGestureModeMask:MMCloseDrawerGestureModeAll];
    [self.drawerController setShowsShadow:NO];
    [self.drawerController setDrawerVisualStateBlock:[MMDrawerVisualState slideVisualStateBlock]];
    self.drawerController.view.frame = self.view.bounds;
    [self.view addSubview:self.drawerController.view];
}

- (void)didRecieveOpenLeftPanelCallback {
    if (self.drawerController.openSide == MMDrawerSideLeft) {
        [self.drawerController closeDrawerAnimated:YES completion:^(BOOL finished) {
            
        }];
    } else {
        [self.drawerController openDrawerSide:MMDrawerSideLeft animated:YES completion:^(BOOL finished) {

        }];
    }
}

@end
