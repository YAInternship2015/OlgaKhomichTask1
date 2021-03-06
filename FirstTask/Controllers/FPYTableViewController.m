//
//  TableViewController.m
//  


#import "FPYTableViewController.h"
#import "FPYDataSource.h"
#import "FPYNamedImage.h"
#import "FPYContentTableCell.h"

@interface FPYTableViewController ()

@end

@implementation FPYTableViewController

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.tableView reloadData];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [self.contentData count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"Cell";
    
    FPYContentTableCell *cell = (FPYContentTableCell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:(NSIndexPath *)indexPath];
    FPYNamedImage *namedImage = [self.contentData namedImageAtIndex:indexPath.row];
    [cell fillWithNamedImage:namedImage];
    
    return cell;
}

@end
