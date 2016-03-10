//
//  TabBarDelegate.h
//  coreDataLearning
//
//  Created by James Golz on 3/10/16.
//  Copyright © 2016 Sharks with Laser Spines. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface TabBarDelegate : NSObject <UITabBarDelegate>
-(void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item;

@end