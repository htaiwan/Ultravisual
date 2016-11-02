//
//  Session.m
//  Ultravisual
//
//  Created by Chien-Tai Cheng on 10/28/16.
//  Copyright © 2016 Chien-Tai Cheng. All rights reserved.
//

#import "Session.h"
#import "UIImage+decompressedImage.h"

@implementation Session

//init(title: String, speaker: String, room: String, time: String, backgroundImage: UIImage) {

- (instancetype)init:(NSString*)title speaker:(NSString*)speaker room:(NSString*)room time:(NSString*)time backgroundImage:(UIImage*)backgroundImage {
    self = [super init];
    if (self) {
        self.title = title;
        self.speaker = speaker;
        self.room = room;
        self.time = time;
        self.backgroundImage = backgroundImage;
        self.roomAndTime = [NSString stringWithFormat:@"%@ - %@", self.room, self.time];
    }

    return self;
}

- (instancetype)init:(NSDictionary*)dictionary {
    UIImage* image = dictionary[@"Background"];
        return  [self init:dictionary[@"title"] speaker:dictionary[@"Speaker"] room:dictionary[@"Room"] time:dictionary[@"Time"] backgroundImage:image];
//    return  [self init:dictionary[@"title"] speaker:dictionary[@"Speaker"] room:dictionary[@"Room"] time:dictionary[@"Time"] backgroundImage:[image decompressedImage]];
}


@end
