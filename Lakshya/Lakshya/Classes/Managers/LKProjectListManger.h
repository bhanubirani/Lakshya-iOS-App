//
//  LKProjectListManger.h
//  Lakshya
//
//  Created by Bhanu Birani on 08/02/15.
//  Copyright (c) 2015 Lakshya. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LKProjectList.h"

@interface LKProjectListManger : NSObject

@property (nonatomic, strong) LKProjectList *projectList;

+ (instancetype)sharedInstance;
- (void)downloadProjectWithStartIndex:(int)startindex numberofProjects:(int)numberofProjects;

@end
