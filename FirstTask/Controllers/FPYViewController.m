//
//  FPYViewController.m
//  FirstProjectYalantis
//  Copyright © 2015 Olga Khomich. All rights reserved.
//

#import "FPYViewController.h"
#import "FPYContainerViewController.h"
#import "FPYDataSource.h"
#import "FPYAddToDataSource.h"

@interface FPYViewController ()

@property (nonatomic, weak) FPYContainerViewController *containerViewController;
@property (nonatomic, strong) FPYDataSource *dataSource;

- (IBAction)swapButtonPressed:(id)sender;

@end

@implementation FPYViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.edgesForExtendedLayout = UIRectEdgeNone;
}

-(FPYDataSource *)dataSource
{
    if (self->_dataSource == nil)
    {
        self->_dataSource = [FPYDataSource new];
    }
    
    return self->_dataSource;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.identifier isEqualToString:@"embedContainer"]) {
        self.containerViewController = segue.destinationViewController;
        self.containerViewController.dataSource = self.dataSource;
    }
    
    if ([segue.identifier isEqualToString:@"segueToAdd"]) {
        FPYAddToDataSource *addViewController = (FPYAddToDataSource *)segue.destinationViewController;
        addViewController.contentData = self.dataSource;
    }
}

- (IBAction)swapButtonPressed:(id)sender
{
    [self.containerViewController swapViewControllers];
}

@end
