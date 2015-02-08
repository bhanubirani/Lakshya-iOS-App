//
//  LKProjectListViewController.m
//  Lakshya
//
//  Created by Bhanu Birani on 08/02/15.
//  Copyright (c) 2015 Lakshya. All rights reserved.
//

#define kLKProjectListCVCellReuseIdentifier         @"LKProjectListCVCellReuseIdentifier"

#import "LKProjectListViewController.h"
#import "LKUtils.h"
#import "LKProjectListCVCell.h"
#import "LKProjectListManger.h"
#import "LKProject.h"
#import "LKProjectStatsView.h"

@interface LKProjectListViewController ()

// UI Stuffs
@property (weak, nonatomic) IBOutlet UICollectionView *projectCollectionView;

// Data Structures
@property (strong, nonatomic) NSMutableArray* projectListArray;

@end

@implementation LKProjectListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Sparkfund";
    
    [self.projectCollectionView registerClass:[LKProjectListCVCell class]
                   forCellWithReuseIdentifier:kLKProjectListCVCellReuseIdentifier];
    [self.projectCollectionView registerNib:[UINib nibWithNibName:@"LKProjectListCVCell" bundle:nil]
                 forCellWithReuseIdentifier:kLKProjectListCVCellReuseIdentifier];

    [self.projectCollectionView reloadData];
    
    [[LKProjectListManger sharedInstance] downloadProjectWithStartIndex:0 numberofProjects:10 handler:^(LKProjectList *projectList, NSError *error) {
        self.projectListArray = [NSMutableArray arrayWithArray:projectList.projectList];
        
        [self.projectCollectionView reloadData];
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)leftBarButtonAction:(id)sender {
    
    [(APP_DELEGATE).rootVC didRecieveOpenLeftPanelCallback];
}

#pragma mark - UICollectionViewDataSource Methods

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView
     numberOfItemsInSection:(NSInteger)section {
    return [self.projectListArray count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView
                  cellForItemAtIndexPath:(NSIndexPath *)indexPath {

    LKProjectListCVCell* projectListCVCell = nil;
    
    if ([self.projectListArray count] > indexPath.row){
        projectListCVCell = [self.projectCollectionView
                             dequeueReusableCellWithReuseIdentifier:kLKProjectListCVCellReuseIdentifier
                             forIndexPath:indexPath];
        
        LKProject *lkProject = [self.projectListArray objectAtIndex:indexPath.row];
        
        projectListCVCell.projectImageView.image = [UIImage imageNamed:@"0x3282y"];
        projectListCVCell.projectNameLabel.text = lkProject.title;
        projectListCVCell.projectDescriptionLabel.text = lkProject.project_description;
        
        [projectListCVCell.lkProjectStatsView setProgressPercentage:lkProject.percentage_pledged
                                                          goalValue:lkProject.goal
                                                           daysLeft:lkProject.day_remaining
                                                       backersCount:lkProject.total_backers];
    }
    return projectListCVCell;
}

#pragma mark - UICollectionViewDelegate Methods

- (void)collectionView:(UICollectionView *)collectionView
didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"Selected:%@",indexPath);
}

@end
