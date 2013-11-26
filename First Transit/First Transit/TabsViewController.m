//
//  TabsViewController.m
//  First Transit
//
//  Created by Graham Savage on 11/22/13.
//  Copyright (c) 2013 Centric Consulting. All rights reserved.
//

#import "TabsViewController.h"

@interface TabsViewController () <UITabBarControllerDelegate>

@end

@implementation TabsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.hidesBackButton = YES;
    self.delegate = self;
    self.navigationController.navigationBar.hidden = NO;
}

- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController {
    self.navigationItem.title = viewController.tabBarItem.title;
}

@end
