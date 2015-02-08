//
//  LKProjectList.h
//  Lakshya
//
//  Created by Rahul on 2/8/15.
//  Copyright (c) 2015 Lakshya. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LKProjectList : NSObject

@property (nonatomic, strong) NSMutableArray *projectList;
@property (nonatomic, assign) int totalProjects;

- (id)initWithDict:(NSDictionary *)projectList;

@end
