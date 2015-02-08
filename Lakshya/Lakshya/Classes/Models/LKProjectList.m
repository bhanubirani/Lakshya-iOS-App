//
//  LKProjectList.m
//  Lakshya
//
//  Created by Rahul on 2/8/15.
//  Copyright (c) 2015 Lakshya. All rights reserved.
//

#import "LKProjectList.h"
#import "LKProject.h"

@implementation LKProjectList

- (id)initWithDict:(NSDictionary *)projectList {
    self = [super init];
    if (self) {
        self.projectList = [[NSMutableArray alloc] init];
        self.totalProjects = [[projectList objectForKey:@"total_projects"] intValue];
        for (NSDictionary *projectData in [projectList objectForKey:@"projects"]) {
            LKProject *project = [[LKProject alloc] initWithDict:projectData];
            [self.projectList addObject:project];
        }
    }
    return self;
}

@end
