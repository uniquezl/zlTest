//
//  AppDelegate.h
//  test
//
//  Created by zhulin on 2018/5/8.
//  Copyright © 2018年 zhulin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
#import "ViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) ViewController *VC;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

