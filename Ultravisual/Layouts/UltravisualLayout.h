//
//  UltravisualLayout.h
//  Ultravisual
//
//  Created by Chien-Tai Cheng on 10/28/16.
//  Copyright © 2016 Chien-Tai Cheng. All rights reserved.
//

#import <UIKit/UIKit.h>

static CGFloat const kStandardHeight = 100.0;
static CGFloat const kFeaturedHeight = 280.0;
static CGFloat const kDragOffset = 250.0;

@interface UltravisualLayout : UICollectionViewFlowLayout

@property (nonatomic, assign, readonly) NSInteger featuredItemIndex;

@end
