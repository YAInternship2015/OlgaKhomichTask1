//
//  TableViewController.m
//  


#import "FPYTableViewController.h"
#import "FPYDataSource.h"
#import "FPYNamedImage.h"
#import "FPYContentTableCell.h"

@interface FPYTableViewController ()

@end

@implementation FPYTableViewController{
#warning используйте @property вместо ivar'ов
    FPYDataSource *contentData;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    contentData = [[FPYDataSource alloc] init];
   }

#warning этот метод можно удалить
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return [contentData getItemsCount];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"Cell";
    
#warning вместо этого метода следует использовать метод - (id)dequeueReusableCellWithIdentifier:(NSString *)identifier forIndexPath:(NSIndexPath *)indexPath, который всегда гарантировано возвращает ячейку. Тогда отпадет необходимость в последующем if
    FPYContentTableCell *cell = (FPYContentTableCell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[FPYContentTableCell alloc] initWithStyle:UITableViewCellStyleDefault
                                          reuseIdentifier:CellIdentifier];
    }
    
    FPYNamedImage *namedImage = [contentData getNamedImageAtIndex:indexPath.row];
    [cell fillWithNamedImage:namedImage];
    
    return cell;
}

@end
