//
//  NotesScreenViewController.h
//  coreDataLearning
//
//  Created by James Golz on 3/10/16.
//  Copyright © 2016 Sharks with Laser Spines. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NotesScreenViewController : UIViewController <UITextViewDelegate>
@property (weak, nonatomic) IBOutlet UITextView *notesTextField;

-(void)textViewDidEndEditing:(UITextView *)textView;
@end
