//
//  LKProject.h
//  Lakshya
//
//  Created by Bhanu Birani on 08/02/15.
//  Copyright (c) 2015 Lakshya. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LKProject : NSObject

@property (nonatomic, strong) NSString *author_name;
@property (nonatomic, assign) int day_remaining;
@property (nonatomic, strong) NSString *project_description;
@property (nonatomic, assign) int goal;
@property (nonatomic, assign) int project_id;
@property (nonatomic, strong) NSArray *image_urls;
@property (nonatomic, assign) int percentage_pledged;
@property (nonatomic, assign) int pledge_amount;
@property (nonatomic, strong) NSString *primary_picture_url;
@property (nonatomic, strong) NSString *risks_and_challenges;
@property (nonatomic, strong) NSString *summary;
@property (nonatomic, strong) NSString *team;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, assign) int total_backers;
@property (nonatomic, strong) NSString *video_url;

- (id)initWithDict:(NSDictionary *)projectData;

@end
