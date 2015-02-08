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
    
    self.projectListArray = [NSMutableArray array];
    [self.projectListArray addObject:@"Project 1"];
    [self.projectListArray addObject:@"Project 2"];
    [self.projectListArray addObject:@"Project 3"];
    [self.projectListArray addObject:@"Project 4"];
    [self.projectListArray addObject:@"Project 5"];
    
    [self.projectCollectionView registerClass:[LKProjectListCVCell class]
                   forCellWithReuseIdentifier:kLKProjectListCVCellReuseIdentifier];
    [self.projectCollectionView registerNib:[UINib nibWithNibName:@"LKProjectListCVCell" bundle:nil]
                 forCellWithReuseIdentifier:kLKProjectListCVCellReuseIdentifier];

    [self.projectCollectionView reloadData];
    
    [[LKProjectListManger sharedInstance] downloadProjectWithStartIndex:0 numberofProjects:5];
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
        projectListCVCell.projectImageView.image = [UIImage imageNamed:@"0x3282y"];
        projectListCVCell.projectNameLabel.text = [self.projectListArray objectAtIndex:indexPath.row];
    }
    return projectListCVCell;
}

#pragma mark - UICollectionViewDelegate Methods

- (void)collectionView:(UICollectionView *)collectionView
didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"Selected:%@",indexPath);
}

@end
