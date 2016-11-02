//
//  UIImage+decompressedImage.m
//  Ultravisual
//
//  Created by Chien-Tai Cheng on 10/28/16.
//  Copyright © 2016 Chien-Tai Cheng. All rights reserved.
//

#import "UIImage+decompressedImage.h"

@implementation UIImage (decompressedImage)

- (UIImage*)decompressedImage {

    CGSize size = self.size;
    UIGraphicsBeginImageContextWithOptions(size, true, 0);
    [self drawAtPoint:CGPointZero];
    UIImage* decompressedImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();

    return decompressedImage;
}

@end
