//
//  Note.h
//  coreDataLearning
//
//  Created by James Golz on 3/10/16.
//  Copyright © 2016 Sharks with Laser Spines. All rights reserved.
//

#import <CoreData/CoreData.h>

@interface Notes : NSManagedObject
@property NSString *author;
@property NSDate *date_saved;
@property NSDate *date_updated;
@property NSString *note;
@end
