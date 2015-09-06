//
//  FPYContainerViewController.h
//  FirstProjectYalantis
//  Copyright © 2015 Olga Khomich. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FPYDataSource.h"

@interface FPYContainerViewController : UIViewController

@property(nonatomic, weak) FPYDataSource *dataSource;

- (void)swapViewControllers;

@end
