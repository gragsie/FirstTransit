//
//  FirstViewController.m
//  First Transit
//
//  Created by Graham Savage on 11/22/13.
//  Copyright (c) 2013 Centric Consulting. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()
@property   (nonatomic, strong)     IBOutlet    UIScrollView    *scroller;
@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tabBarItem.badgeValue = @"2";
    self.scroller.contentSize = CGSizeMake(self.scroller.frame.size.width * 2, self.scroller.frame.size.height);
}


@end
