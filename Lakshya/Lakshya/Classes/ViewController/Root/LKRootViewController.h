//
//  LKRootViewController.h
//  Lakshya
//
//  Created by Bhanu Birani on 08/02/15.
//  Copyright (c) 2015 Lakshya. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MMDrawerController.h"
#import "MMDrawerVisualState.h"

@interface LKRootViewController : UIViewController

@property (nonatomic, strong) MMDrawerController * drawerController;

- (void)didRecieveOpenLeftPanelCallback;

@end
