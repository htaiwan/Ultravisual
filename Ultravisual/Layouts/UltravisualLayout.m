//
//  UltravisualLayout.m
//  Ultravisual
//
//  Created by Chien-Tai Cheng on 10/28/16.
//  Copyright © 2016 Chien-Tai Cheng. All rights reserved.
//

#import "UltravisualLayout.h"

@interface UltravisualLayout()

@property (nonatomic, strong) NSMutableArray* cache;

@end

@implementation UltravisualLayout

#pragma mark - getter
/* Returns the item index of the currently featured cell */
- (NSInteger)featuredItemIndex
{
    /* Use max to make sure the featureItemIndex is never < 0 */
    return MAX(0, (NSInteger)(self.collectionView.contentOffset.y / kDragOffset));
}

/* Returns a value between 0 and 1 that represents how close the next cell is to becoming the featured cell */
- (CGFloat)nextItemPercentageOffset
{
    return (self.collectionView.contentOffset.y / kDragOffset) - self.featuredItemIndex;
}

- (CGFloat)width
{
    return CGRectGetWidth(self.collectionView.bounds);
}

- (CGFloat)height
{
    return CGRectGetHeight(self.collectionView.bounds);
}

- (NSInteger)numberOfItems
{
    return [self.collectionView numberOfItemsInSection:0];
}

#pragma mark - UICollectionViewLayout
/* Return the size of all the content in the collection view */
- (CGSize)collectionViewContentSize
{
    CGFloat contentHeight = (self.numberOfItems * kDragOffset) + (self.height - kDragOffset);
    return CGSizeMake(self.width, contentHeight);
}

- (void)prepareLayout
{
    [super prepareLayout];

    if (!self.cache) {
        self.cache = [NSMutableArray array];
    }
    else {
        [self.cache removeAllObjects];
    }
}

/* Return all attributes in the cache whose frame intersects with the rect passed to the method */
- (NSArray*)layoutAttributesForElementsInRect:(CGRect)rect
{
    NSMutableArray* layoutAttributes = [NSMutableArray array];
    for (UICollectionViewLayoutAttributes* attributes in self.cache) {
        if (CGRectIntersectsRect(attributes.frame, rect)) {
            [layoutAttributes addObject:attributes];
        }
    }
    return [layoutAttributes copy];
}

/* Return true so that the layout is continuously invalidated as the user scrolls */
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)newBounds
{
    return YES;
}
@end
