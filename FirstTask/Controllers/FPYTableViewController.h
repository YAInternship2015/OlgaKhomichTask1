//
//  TableViewController.h


#import <UIKit/UIKit.h>
#import "FPYDataSource.h"

@interface FPYTableViewController : UITableViewController

@property (nonatomic, weak) FPYDataSource *contentData;

@end
