//
//  TagCollectionDataSource.m
//  coreDataLearning
//
//  Created by James Golz on 3/10/16.
//  Copyright © 2016 Sharks with Laser Spines. All rights reserved.
//

#import "TagCollectionDataSource.h"


@implementation TagCollectionDataSource
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    TagsCollectionViewCell *cell = [[TagsCollectionViewCell alloc] init];
    [cell setBackgroundColor:[UIColor colorWithRed:0.25f green:0.5f blue:0.25f alpha:1.0f]];
    
    return cell;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    
    return (NSInteger)1;
}
@end
