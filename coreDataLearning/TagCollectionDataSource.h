//
//  TagCollectionDataSource.h
//  coreDataLearning
//
//  Created by James Golz on 3/10/16.
//  Copyright © 2016 Sharks with Laser Spines. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "TagsCollectionViewCell.h"

@interface TagCollectionDataSource : NSObject <UICollectionViewDataSource>
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath;
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section;
@end
