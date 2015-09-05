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
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return [self.contentData count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"Cell";
    //(id)dequeueReusableCellWithIdentifier:(NSString *)identifier forIndexPath:(NSIndexPath *)indexPath
    FPYContentTableCell *cell = (FPYContentTableCell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[FPYContentTableCell alloc] initWithStyle:UITableViewCellStyleDefault
                                          reuseIdentifier:CellIdentifier];
    }
    
    
    FPYNamedImage *namedImage = [self.contentData namedImageAtIndex:indexPath.row];
    [cell fillWithNamedImage:namedImage];
    
    return cell;
}

@end
