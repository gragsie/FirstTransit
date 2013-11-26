//
//  FirstViewController.m
//  First Transit
//
//  Created by Graham Savage on 11/22/13.
//  Copyright (c) 2013 Centric Consulting. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController () <UIScrollViewDelegate>
@property   (nonatomic, strong)     IBOutlet    UIScrollView    *scroller;
@property   (nonatomic, strong)     IBOutlet    UIPageControl   *spots;
- (IBAction)spotsTapped:(UIPageControl *)spots;
@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tabBarItem.badgeValue = @"2";
    self.scroller.contentSize = CGSizeMake(self.scroller.frame.size.width * 2, self.scroller.frame.size.height);
    self.scroller.delegate = self;
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView {
    self.spots.currentPage = scrollView.contentOffset.x / scrollView.bounds.size.width;
}

- (IBAction)spotsTapped:(UIPageControl *)spots {
    [self.scroller setContentOffset:CGPointMake(spots.currentPage * self.scroller.frame.size.width, 0) animated:YES];
}

@end
