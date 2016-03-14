//
//  SaveEditNoteScreen.m
//  coreDataLearning
//
//  Created by James Golz on 3/10/16.
//  Copyright © 2016 Sharks with Laser Spines. All rights reserved.
//

#import "SaveEditNoteScreen.h"

@interface SaveEditNoteScreen ()

@end

@implementation SaveEditNoteScreen

-(void)viewWillAppear:(BOOL)animated{

}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tagsDelegate = [[TagCollectionDelegate alloc] init];
    self.tagsDataSource = [[TagCollectionDataSource alloc] init];

    [self.tagsSelection setDataSource:self.tagsDataSource];
    [self.tagsSelection setDelegate:self.tagsDelegate];
    
    if (self.noteTextBody) {
        NSLog(@"NOTE: %@", self.noteTextBody);
    } else {
        NSLog(@"No data...");
    }
    
    self.coreDataActionsController = [[CoreDataActions alloc] init];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)dismissKeyboard:(id)sender {
    [(UITextField*)sender resignFirstResponder];
}

- (IBAction)saveNote:(id)sender{
    Notes *note = [[Notes alloc] init];
    note.note = self.noteTextBody;
    note.author = self.authorTextField.text;
    
    [self.coreDataActionsController create:note];
}

- (void)makeRouteSavedDialog:(BOOL)didSaveRecord{
    NSString *title;
    NSString *body;
    
    if(didSaveRecord == YES){
        title                                         = @"Success!";
        body                                          = @"Successfully saved route.";
    } else {
        title                                         = @"Error!";
        body                                          = @"There was a problem saving your route.";
    }
    UIAlertController *dialog                     = [UIAlertController alertControllerWithTitle:title message:body preferredStyle:UIAlertControllerStyleAlert];
    [dialog addAction:[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleCancel handler:nil]];
    [self presentViewController:dialog animated:YES completion:nil];
}



@end