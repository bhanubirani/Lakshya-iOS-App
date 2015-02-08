//
//  LKLeftMenuViewController.h
//  Lakshya
//
//  Created by Bhanu Birani on 08/02/15.
//  Copyright (c) 2015 Lakshya. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LKLeftMenuViewController : UIViewController
{
    NSArray *listOfMenu;
}
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end
