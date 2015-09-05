//
//  FPYContainerViewController.m
//  FirstProjectYalantis
//
//  Created by Igor Khomich on 9/4/15.
//  Copyright © 2015 Olga Khomich. All rights reserved.
//

#import "FPYContainerViewController.h"
#import "FPYTableViewController.h"
#import "FPYCollectionViewController.h"

#define SegueIdentifierFirst @"embedFirst"
#define SegueIdentifierSecond @"embedSecond"

@interface FPYContainerViewController ()

@property (strong, nonatomic) NSString *currentSegueIdentifier;
@property (strong, nonatomic) FPYTableViewController *tableViewController;
@property (strong, nonatomic) FPYCollectionViewController *collectionViewController;
@property (assign, nonatomic) BOOL transitionInProgress;

@end

@implementation FPYContainerViewController
{
    FPYDataSource *dataSource;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self->dataSource = [FPYDataSource new];
    
    self.transitionInProgress = NO;
    self.currentSegueIdentifier = SegueIdentifierFirst;
    [self performSegueWithIdentifier:self.currentSegueIdentifier sender:nil];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    
    // Instead of creating new VCs on each seque we want to hang on to existing
    // instances if we have it. Remove the second condition of the following
    // two if statements to get new VC instances instead.
    if ([segue.identifier isEqualToString:SegueIdentifierFirst]) {
        self.tableViewController = segue.destinationViewController;
        self.tableViewController.contentData = self->dataSource;
    }
    
    if ([segue.identifier isEqualToString:SegueIdentifierSecond]) {
        self.collectionViewController = segue.destinationViewController;
        self.collectionViewController.contentData = self->dataSource;
    }
    
    // If we're going to the first view controller.
    if ([segue.identifier isEqualToString:SegueIdentifierFirst]) {
        // If this is not the first time we're loading this.
        if (self.childViewControllers.count > 0) {
            [self swapFromViewController:[self.childViewControllers objectAtIndex:0] toViewController:self.tableViewController];
        }
        else {
            // If this is the very first time we're loading this we need to do
            // an initial load and not a swap.
            [self addChildViewController:segue.destinationViewController];
            UIView* destView = ((UIViewController *)segue.destinationViewController).view;
            destView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
            destView.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
            [self.view addSubview:destView];
            [segue.destinationViewController didMoveToParentViewController:self];
        }
    }
    // By definition the second view controller will always be swapped with the
    // first one.
    else if ([segue.identifier isEqualToString:SegueIdentifierSecond]) {
        [self swapFromViewController:[self.childViewControllers objectAtIndex:0] toViewController:self.collectionViewController];
    }
}

- (void)swapFromViewController:(UIViewController *)fromViewController toViewController:(UIViewController *)toViewController
{
    toViewController.view.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
    
    [fromViewController willMoveToParentViewController:nil];
    [self addChildViewController:toViewController];
    
    [self transitionFromViewController:fromViewController toViewController:toViewController duration:1.0 options:UIViewAnimationOptionTransitionCrossDissolve animations:nil completion:^(BOOL finished) {
        [fromViewController removeFromParentViewController];
        [toViewController didMoveToParentViewController:self];
        self.transitionInProgress = NO;
    }];
}

- (void)swapViewControllers
{
    if (self.transitionInProgress) {
        return;
    }
    
    self.transitionInProgress = YES;
    self.currentSegueIdentifier = ([self.currentSegueIdentifier isEqualToString:SegueIdentifierFirst]) ? SegueIdentifierSecond : SegueIdentifierFirst;
    
    if (([self.currentSegueIdentifier isEqualToString:SegueIdentifierFirst]) && self.tableViewController) {
        [self swapFromViewController:self.collectionViewController toViewController:self.tableViewController];
        return;
    }
    
    if (([self.currentSegueIdentifier isEqualToString:SegueIdentifierSecond]) && self.collectionViewController) {
        [self swapFromViewController:self.tableViewController toViewController:self.collectionViewController];
        return;
    }
    
    [self performSegueWithIdentifier:self.currentSegueIdentifier sender:nil];
}


@end
