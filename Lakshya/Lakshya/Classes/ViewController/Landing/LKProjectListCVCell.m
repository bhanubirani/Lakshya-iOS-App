//
//  LKProjectListCVCell.m
//  Lakshya
//
//  Created by Rahul on 2/8/15.
//  Copyright (c) 2015 Lakshya. All rights reserved.
//

#import "LKProjectListCVCell.h"
#import "LKProjectStatsView.h"

@interface LKProjectListCVCell()

@end

@implementation LKProjectListCVCell

- (void)awakeFromNib{
    [super awakeFromNib];
    
    self.projectHeaderView.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.5];
    
    NSArray *subviewArray =
    [[NSBundle mainBundle] loadNibNamed:@"LKProjectStatsView" owner:self options:nil];
    self.lkProjectStatsView = [subviewArray objectAtIndex:0];
    CGRect lkProjectStatsViewFrame = self.lkProjectStatsView.frame;
    lkProjectStatsViewFrame.origin.x = (self.frame.size.width - lkProjectStatsViewFrame.size.width)/2;
    lkProjectStatsViewFrame.origin.y = CGRectGetMaxY(self.projectDescriptionLabel.frame);
    self.lkProjectStatsView.frame = lkProjectStatsViewFrame;
    [self addSubview:self.lkProjectStatsView];
}

@end
