//
//  UIColor+palette.h
//  Ultravisual
//
//  Created by Chien-Tai Cheng on 10/28/16.
//  Copyright © 2016 Chien-Tai Cheng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (palette)
+ (UIColor*)colorFromRGB:(int)r g:(int)g b:(int)b;
+ (NSArray*)palette;
@end
