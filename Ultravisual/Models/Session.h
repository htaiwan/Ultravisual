//
//  Session.h
//  Ultravisual
//
//  Created by Chien-Tai Cheng on 10/28/16.
//  Copyright © 2016 Chien-Tai Cheng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Session : NSObject

@property (strong, nonatomic) NSString* title;
@property (strong, nonatomic) NSString* speaker;
@property (strong, nonatomic) NSString* room;
@property (strong, nonatomic) NSString* time;
@property (strong, nonatomic) UIImage* backgroundImage;
@property (strong, nonatomic) NSString* roomAndTime;

- (instancetype)init:(NSDictionary*)dictionary;

@end
