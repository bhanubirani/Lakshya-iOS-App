//
//  LKProjectListManger.m
//  Lakshya
//
//  Created by Bhanu Birani on 08/02/15.
//  Copyright (c) 2015 Lakshya. All rights reserved.
//

#import "LKProjectListManger.h"

static LKProjectListManger *taskListManger;

@implementation LKProjectListManger

+ (instancetype)sharedInstance {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        taskListManger = [[LKProjectListManger alloc] init];
    });
    
    return taskListManger;
}

@end
