//
//  ProjectStatsView.m
//  Lakshya
//
//  Created by Rahul on 2/8/15.
//  Copyright (c) 2015 Lakshya. All rights reserved.
//

#define kLRPercentageUnicode        @""
#define kLRRupeesUnicode            @"\u20A8"

#import "LKProjectStatsView.h"

@implementation LKProjectStatsView

- (void)awakeFromNib{
    [super awakeFromNib];
}

- (void)setProgressPercentage:(NSInteger)progressPercentage
                    goalValue:(long)goalValue
                     daysLeft:(NSInteger)daysLeft
                 backersCount:(NSInteger)backersCount{
    self.foregroundProgressView.transform = CGAffineTransformMakeScale(progressPercentage/100.0, 1);
    self.fundedPercentageLabel.text =
    [NSString stringWithFormat:@"%ld%@",(long)progressPercentage,kLRPercentageUnicode];
    self.goalValueLabel.text =
    [NSString stringWithFormat:@"%ld%@",(long)progressPercentage,kLRRupeesUnicode];
    self.daysLeftLabel.text =
    [NSString stringWithFormat:@"%ld Days",(long)daysLeft];
    self.backersDetailsLabel.text =
    [NSString stringWithFormat:@"The project has %ld Backers so far",(long)backersCount];
}

@end
