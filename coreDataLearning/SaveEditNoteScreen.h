//
//  SaveEditNoteScreen.h
//  coreDataLearning
//
//  Created by James Golz on 3/10/16.
//  Copyright © 2016 Sharks with Laser Spines. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TagCollectionDataSource.h"
#import "TagCollectionDelegate.h"
#import "TagsCollectionViewCell.h"


@interface SaveEditNoteScreen : UIViewController
@property NSString *noteTextBody;
@property (weak, nonatomic) IBOutlet UITextField *authorTextField;
@property (weak, nonatomic) IBOutlet UITextField *noteNameTextField;
@property (weak, nonatomic) IBOutlet UICollectionView *tagsSelection;


@property TagCollectionDataSource *tagsDataSource;
@property TagCollectionDelegate *tagsDelegate;
@end
