//
//  CoreDataBase.h
//  coreDataLearning
//
//  Created by James Golz on 3/9/16.
//  Copyright © 2016 Sharks with Laser Spines. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@interface CoreDataActions: NSObject
@property NSManagedObjectContext *notesManagedObjectContext;
@property NSPersistentStoreCoordinator *notesPersistentStoreCoordinator;
@property NSManagedObjectModel *notesManagedObjectModel;
@property NSURL *notesEntityLocation;


-(void)initializeCoreData;
-(void)create:(NSManagedObject*)note;
-(void)update:(NSManagedObject*)note;
-(void)delete:(NSManagedObject*)note;
-(void)fetchAllNotes;
-(void)fetchNote:(NSInteger*)atIndex;
@end
