//
//  NavigationService.m
//  iTunesSearchReactiveObjC
//
//  Created by Hajnalka Hegyi on 2016. 11. 09..
//  Copyright © 2016. Hajnalka Hegyi. All rights reserved.
//

#import "iTunesConstants.h"
#import "iTunesSearchResultTableViewController.h"
#import "NavigationService.h"

@interface NavigationService()

@property(strong, nonatomic) UINavigationController *navigationController;

@end

@implementation NavigationService

- (id)init {
    if ( self = [super init] ) {
        self.navigationController = [UINavigationController new];
    }
    return self;
}

- (id)initWithNavigationController:(UINavigationController *)navigationController {
    if ( self = [super init] ) {
        self.navigationController = navigationController;
    }
    return self;
}

- (void)pushViewWithModel:(iTunesResult *)model {
    UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:mainStoryboardName bundle:nil];
    iTunesSearchResultTableViewController *nextViewController = (iTunesSearchResultTableViewController *)[storyBoard instantiateViewControllerWithIdentifier:resultTableViewIdentifier];
    nextViewController.resultViewModel.resultModel = model;
    [self.navigationController pushViewController:nextViewController animated:YES];
}

@end
