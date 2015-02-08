//
//  LKProject.m
//  Lakshya
//
//  Created by Bhanu Birani on 08/02/15.
//  Copyright (c) 2015 Lakshya. All rights reserved.
//

#import "LKProject.h"

@implementation LKProject

- (id)initWithDict:(NSDictionary *)projectData {
    self = [super init];
    if (self) {
        /**
         
         {
         "author_name" = "";
         "days_remaining" = 21;
         description = "Sample description lorem ipsum lorem ipsum lorem ipsum";
         goal = 26000;
         id = 18;
         "image_urls" =             (
         "http://crowdfund.thelakshyafoundation.org/media/images/innovation-2.jpg",
         "http://crowdfund.thelakshyafoundation.org/media/images/innovation-3.jpg",
         "http://crowdfund.thelakshyafoundation.org/media/images/innovation-1.jpg"
         );
         "percentage_pledged" = 15;
         "pledged_amount" = 4041;
         "primary_picture_url" = "/media/images/innovation-2.jpg";
         "risks_and_challenges" = "";
         summary = "Test project summary test project summary 1";
         team = "";
         title = "Test Project 1";
         "total_backers" = 1;
         "video_url" = "https://www.youtube.com/watch?v=fzqh6_90akI";
         }
         
         */
        
        self.author_name = [projectData objectForKey:@"author_name"];
        self.day_remaining = [[projectData objectForKey:@"day_remaining"] intValue];
        self.project_description = [projectData objectForKey:@"description"];
        self.goal = [[projectData objectForKey:@"goal"] intValue];
        self.project_id = [[projectData objectForKey:@"project_id"] intValue];
        self.image_urls = [projectData objectForKey:@"image_urls"];
        self.percentage_pledged = [[projectData objectForKey:@""] intValue];
        self.pledge_amount = [[projectData objectForKey:@"pledge_amount"] intValue];
        self.primary_picture_url = [projectData objectForKey:@"primary_picture_url"];
        self.risks_and_challenges = [projectData objectForKey:@"risks_and_challenges"];
        self.summary = [projectData objectForKey:@"summary"];
        self.team = [projectData objectForKey:@"team"];
        self.title = [projectData objectForKey:@"title"];
        self.total_backers = [[projectData objectForKey:@"total_backers"] intValue];
        self.video_url = [projectData objectForKey:@"video_url"];
        
    }
    return self;
}

@end
