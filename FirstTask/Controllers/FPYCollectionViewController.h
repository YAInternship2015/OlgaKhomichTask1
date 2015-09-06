//
//  FPYCollectionViewController.h
//  FirstProjectYalantis
//  Copyright © 2015 Olga Khomich. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FPYDataSource.h"

@interface FPYCollectionViewController : UICollectionViewController

@property (nonatomic, weak) FPYDataSource *contentData;

@end
