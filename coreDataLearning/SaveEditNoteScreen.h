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
#import "CoreDataActions.h"
#import "Notes.h"
#import "Tags.h"


@interface SaveEditNoteScreen : UIViewController<UITextFieldDelegate>
@property NSString *noteTextBody;
@property (weak, nonatomic) IBOutlet UITextField *authorTextField;
@property (weak, nonatomic) IBOutlet UITextField *noteNameTextField;
@property (weak, nonatomic) IBOutlet UICollectionView *tagsSelection;

@property TagCollectionDataSource *tagsDataSource;
@property TagCollectionDelegate *tagsDelegate;

@property CoreDataActions *coreDataActionsController;

- (IBAction)dismissKeyboard:(id)sender;
- (IBAction)saveNote:(id)sender;
- (void)makeRouteSavedDialog:(BOOL)didSaveRecord;
@end
