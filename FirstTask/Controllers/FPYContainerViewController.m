//
//  FPYContainerViewController.m
//  FirstProjectYalantis
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

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.transitionInProgress = NO;
    self.currentSegueIdentifier = SegueIdentifierFirst;
    [self performSegueWithIdentifier:self.currentSegueIdentifier sender:nil];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {

#warning у каждого контроллера должен быть свой отдельный датасорс. Не нужно его перекидывать от контроллера к контроллеру

    if ([segue.identifier isEqualToString:SegueIdentifierFirst]) {
        self.tableViewController = segue.destinationViewController;
        self.tableViewController.contentData = self.dataSource;
    }
    
    if ([segue.identifier isEqualToString:SegueIdentifierSecond]) {
        self.collectionViewController = segue.destinationViewController;
        self.collectionViewController.contentData = self.dataSource;
    }
    
    if ([segue.identifier isEqualToString:SegueIdentifierFirst]) {
            if (self.childViewControllers.count > 0) {
            [self swapFromViewController:[self.childViewControllers objectAtIndex:0] toViewController:self.tableViewController];
        }
        else {
            [self addChildViewController:segue.destinationViewController];
            UIView* destView = ((UIViewController *)segue.destinationViewController).view;
            destView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
#warning здесь можно написать просто destView.frame = self.view.bounds
            destView.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
            [self.view addSubview:destView];
            [segue.destinationViewController didMoveToParentViewController:self];
        }
    }
    else if ([segue.identifier isEqualToString:SegueIdentifierSecond]) {
        [self swapFromViewController:[self.childViewControllers objectAtIndex:0] toViewController:self.collectionViewController];
    }
}

- (void)swapFromViewController:(UIViewController *)fromViewController toViewController:(UIViewController *)toViewController
{
#warning здесь можно написать просто toViewController.view.frame = self.view.bounds
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
