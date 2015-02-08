//
//  LKProjectListManger.m
//  Lakshya
//
//  Created by Bhanu Birani on 08/02/15.
//  Copyright (c) 2015 Lakshya. All rights reserved.
//

#import "LKProjectListManger.h"
#import "AFNetworking.h"

static LKProjectListManger *taskListManger;

@implementation LKProjectListManger

+ (instancetype)sharedInstance {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        taskListManger = [[LKProjectListManger alloc] init];
    });
    
    return taskListManger;
}

- (void)downloadProjectWithStartIndex:(int)startindex numberofProjects:(int)numberofProjects {
    
    /**
     API :http://crowdfund.thelakshyafoundation.org/_project/list?start_index=0&num_projects=5
     Parameters (start_index,num_projects)
     */
    
    NSMutableDictionary *queryParams = [[NSMutableDictionary alloc] init];
    [queryParams setObject:[NSString stringWithFormat:@"%d", startindex] forKey:@"start_index"];
    [queryParams setObject:[NSString stringWithFormat:@"%d", numberofProjects] forKey:@"num_projects"];
    
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    [manager GET:@"http://crowdfund.thelakshyafoundation.org/_project/list" parameters:queryParams success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSLog(@"JSON: %@", responseObject);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Error: %@", error);
    }];
}

@end
