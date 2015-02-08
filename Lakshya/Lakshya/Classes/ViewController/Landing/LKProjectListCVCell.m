//
//  LKProjectListCVCell.m
//  Lakshya
//
//  Created by Rahul on 2/8/15.
//  Copyright (c) 2015 Lakshya. All rights reserved.
//

#import "LKProjectListCVCell.h"

@interface LKProjectListCVCell()

@end

@implementation LKProjectListCVCell

- (void)awakeFromNib{
    [super awakeFromNib];
    
    self.projectHeaderView.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.5];
}
@end
