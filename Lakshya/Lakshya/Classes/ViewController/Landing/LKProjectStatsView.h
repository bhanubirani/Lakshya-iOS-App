//
//  ProjectStatsView.h
//  Lakshya
//
//  Created by Rahul on 2/8/15.
//  Copyright (c) 2015 Lakshya. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LKProjectStatsView : UIView
@property (weak, nonatomic) IBOutlet UIView *foregroundProgressView;

@property (weak, nonatomic) IBOutlet UILabel *fundedPercentageLabel;
@property (weak, nonatomic) IBOutlet UILabel *goalValueLabel;
@property (weak, nonatomic) IBOutlet UILabel *daysLeftLabel;

@property (weak, nonatomic) IBOutlet UILabel *backersDetailsLabel;

- (void)setProgressPercentage:(NSInteger)progressPercentage
                    goalValue:(long)goalValue
                     daysLeft:(NSInteger)daysLeft
                 backersCount:(NSInteger)backersCount;
@end
