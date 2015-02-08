//
//  LKProjectListCVCell.h
//  Lakshya
//
//  Created by Rahul on 2/8/15.
//  Copyright (c) 2015 Lakshya. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LKProjectStatsView.h"

@interface LKProjectListCVCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UIImageView *projectImageView;
@property (weak, nonatomic) IBOutlet UIView *projectHeaderView;
@property (weak, nonatomic) IBOutlet UILabel *projectNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *projectDescriptionLabel;

@property (strong, nonatomic) LKProjectStatsView *lkProjectStatsView;

@end
