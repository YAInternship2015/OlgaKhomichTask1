//
//  FPYAddToDataSource.h
//  FirstProjectYalantis
//  Copyright © 2015 Olga Khomich. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FPYDataSource.h"

@interface FPYAddToDataSource : UIViewController

@property (nonatomic, weak) FPYDataSource *contentData;

- (IBAction)addData:(id)sender;

@end
