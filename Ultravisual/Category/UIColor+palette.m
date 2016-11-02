//
//  UIColor+palette.m
//  Ultravisual
//
//  Created by Chien-Tai Cheng on 10/28/16.
//  Copyright © 2016 Chien-Tai Cheng. All rights reserved.
//

#import "UIColor+palette.h"

@implementation UIColor (palette)

+ (UIColor*)colorFromRGB:(int)r g:(int)g b:(int)b {
    return [UIColor colorWithRed:r / 255.0 green:g / 255.0 blue:b / 255.0 alpha:1];
}

+ (NSArray*)palette {
    return @[[UIColor colorFromRGB:85 g:0 b:255],
            [UIColor colorFromRGB:170 g:0 b:170],
            [UIColor colorFromRGB:85 g:170 b:85],
            [UIColor colorFromRGB:0 g:85 b:0],
            [UIColor colorFromRGB:255 g:170 b:0],
            [UIColor colorFromRGB:255 g:255 b:0],
            [UIColor colorFromRGB:255 g:85 b:0],
            [UIColor colorFromRGB:0 g:85 b:85],
            [UIColor colorFromRGB:0 g:85 b:255],
            [UIColor colorFromRGB:170 g:170 b:255],
            [UIColor colorFromRGB:85 g:0 b:255],
            [UIColor colorFromRGB:85 g:0 b:0],
            [UIColor colorFromRGB:170 g:85 b:85],
            [UIColor colorFromRGB:170 g:255 b:0],
            [UIColor colorFromRGB:85 g:170 b:255],
            [UIColor colorFromRGB:0 g:170 b:170]
            ];
}

@end
