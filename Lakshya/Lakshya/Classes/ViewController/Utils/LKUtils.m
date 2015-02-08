//
//  LKUtils.m
//  Lakshya
//
//  Created by Bhanu Birani on 08/02/15.
//  Copyright (c) 2015 Lakshya. All rights reserved.
//

#import "LKUtils.h"

@implementation LKUtils


+ (void)customoizeNavigationBarApperance
{
    [[UINavigationBar appearance] setTitleTextAttributes: [NSDictionary dictionaryWithObjectsAndKeys:
                                                           [UIColor whiteColor], NSFontAttributeName, nil]];
    
    UIColor *navColor = [UIColor colorWithRed:0.0f/255.0f green:180.0f/255.0f blue:159.0f/255.0f alpha:1.0f];
    
    [[UINavigationBar appearance] setTintColor:navColor];
    
    [[UINavigationBar appearance] setBarTintColor:navColor];
    
    //[[UINavigationBar appearance] setBackgroundImage:[UIImage new] forBarPosition:UIBarPositionAny barMetrics:UIBarMetricsDefault];
    
    [[UINavigationBar appearance] setShadowImage:[UIImage new]];
    
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
    
    [[UIBarButtonItem appearance] setTintColor:[UIColor whiteColor]];
}


@end
