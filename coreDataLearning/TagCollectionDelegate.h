//
//  TagPickerDelegate.h
//  coreDataLearning
//
//  Created by James Golz on 3/10/16.
//  Copyright © 2016 Sharks with Laser Spines. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface TagCollectionDelegate: NSObject <UICollectionViewDelegate>
-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath;
-(void)collectionView:(UICollectionView *)collectionView didDeselectItemAtIndexPath:(NSIndexPath *)indexPath;
@end
