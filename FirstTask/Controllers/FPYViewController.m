//
//  FPYViewController.m
//  FirstProjectYalantis
//
//  Created by Igor Khomich on 9/4/15.
//  Copyright © 2015 Olga Khomich. All rights reserved.
//

#import "FPYViewController.h"
#import "FPYContainerViewController.h"

@interface FPYViewController ()

@property (nonatomic, weak) FPYContainerViewController *containerViewController;
- (IBAction)swapButtonPressed:(id)sender;

@end

@implementation FPYViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.edgesForExtendedLayout = UIRectEdgeNone;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"embedContainer"]) {
        self.containerViewController = segue.destinationViewController;
    }
}

- (IBAction)swapButtonPressed:(id)sender
{
    [self.containerViewController swapViewControllers];
}

@end
