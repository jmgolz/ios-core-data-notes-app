//
//  CoreDataBase.m
//  coreDataLearning
//
//  Created by James Golz on 3/9/16.
//  Copyright © 2016 Sharks with Laser Spines. All rights reserved.
//

#import "CoreDataActions.h"

@implementation CoreDataActions

/**
 *  Constructs the class, returns the class object.
 *  Initializes the Core Data stack
 *
 *  @return self (class object)
 */
-(id)init{
    self = [super init];
    if (!self) {
        return nil;
    }
    
    [self initializeCoreData];
    return self;
}

-(void)initializeCoreData{
    //Build the location of the entity description
    self.notesEntityLocation = [[NSBundle mainBundle] URLForResource:@"coreDataLearning" withExtension:@".momd"];
    
    //Create the managed object model from the entity location
    self.notesManagedObjectModel = [[NSManagedObjectModel alloc] initWithContentsOfURL:self.notesEntityLocation];
    
    //Create the persistent store coordinator (bridges between the final persistent store and managed object context
    self.notesPersistentStoreCoordinator = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:self.notesManagedObjectModel];
    
    //Create the context (or "scratch pad") where managed objects will be placed for save, edits, etc.
    self.notesManagedObjectContext = [[NSManagedObjectContext alloc] initWithConcurrencyType:NSMainQueueConcurrencyType];
    
    //Attach the object context scratch pad to its persistent store coordinator bridge
    [self.notesManagedObjectContext setPersistentStoreCoordinator:self.notesPersistentStoreCoordinator];
}

-(void)create:(NSManagedObject*)note{
    
}

-(void)update:(NSManagedObject*)note{
    
}

-(void)delete:(NSManagedObject*)note{
    
}
@end
