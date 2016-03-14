//
//  NotesScreenViewController.m
//  coreDataLearning
//
//  Created by James Golz on 3/10/16.
//  Copyright © 2016 Sharks with Laser Spines. All rights reserved.
//

#import "NotesScreenViewController.h"
#import "SaveEditNoteScreen.h"

@interface NotesScreenViewController ()

@end

@implementation NotesScreenViewController

- (void)viewDidLoad {
    [super viewDidLoad];    
    [self.notesTextField setDelegate:self];
    [self.tabBar setDelegate:self];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item{
    NSLog(@"item selected: %ld", (long)item.tag);
    if (item.tag == 0) {
        [self performSegueWithIdentifier:@"NoteToSaveOrEditNote" sender:nil];
    }
}

-(void)textViewDidEndEditing:(UITextView *)textView{
    [textView resignFirstResponder];
}

-(BOOL)textViewShouldEndEditing:(UITextView *)textView{
    return YES;
}
#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    [(SaveEditNoteScreen*)[segue destinationViewController] setNoteTextBody:[self.notesTextField text]];

}


- (IBAction)dismissKeyboard:(id)sender {
    if ([self.notesTextField isFirstResponder]) {
        [self.notesTextField resignFirstResponder];
    }
}
@end
