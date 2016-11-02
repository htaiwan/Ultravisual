//
//  Inspiration.m
//  Ultravisual
//
//  Created by Chien-Tai Cheng on 10/28/16.
//  Copyright © 2016 Chien-Tai Cheng. All rights reserved.
//

#import "Inspiration.h"

@implementation Inspiration

+ (NSMutableArray*)allInspirations {
    NSMutableArray* result = [NSMutableArray new];
    NSURL* url = [[NSBundle mainBundle] URLForResource:@"Inspirations" withExtension:@"plist"];
    NSArray* tutorialsFromPlist = [NSArray arrayWithContentsOfURL:url];
    for (NSDictionary *dict in tutorialsFromPlist) {
        Inspiration* inspiration = [[Inspiration alloc] init:dict];
        [result addObject:inspiration];
    }

    return result;
}

@end
