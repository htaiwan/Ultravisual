//
//  InspirationCell.h
//  Ultravisual
//
//  Created by Chien-Tai Cheng on 10/28/16.
//  Copyright © 2016 Chien-Tai Cheng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Inspiration.h"

@interface InspirationCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UIImageView* imageView;
@property (weak, nonatomic) IBOutlet UIView* imageCoverView;

@property (strong, nonatomic) Inspiration* inspiration;

@end
