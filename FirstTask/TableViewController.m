//
//  TableViewController.m
//  


#import "TableViewController.h"

@interface TableViewController ()

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
#warning Чтобы все было по фен-шую, так называемый датасорс лучше вынести в другой класс, так называемый TableViewDataSource. Этот класс будет знать, какими данными можно заполнить таблицы. А вью контроллер будет спрашивать у него, какие есть данные для ячейки под таким-то индексом. Сейчас у тебя выходит, что вью контроллер не только занимается обработкой UI, но и является источником данных, что есть нехорошо
    self.images = [NSArray arrayWithObjects:@"dog.jpg", @"girl.jpeg", @"squirrel.jpeg", @"hart.jpeg", @"swan.jpeg", @"parrot.jpeg", @"kids.jpeg", @"bird.jpeg", @"death.jpg", @"duck.jpeg", @"puppy.jpeg", nil];
    self.titleOfImages = [NSArray arrayWithObjects:@"Dog", @"Girl", @"Squirrel", @"Hart", @"Swan", @"Parrot", @"Kids", @"Bird", @"Death", @"Duck", @"Puppy", nil];
    
#warning Закомментированный код принято удалять. Если он тебе понадобиться в будущем, то с помощью гита ты сможешь откатиться на комиты, где этот код еще был, и скопировать его оттуда. И вообще, objective-c позволяет писать методы с такими именами, которые полностью объясняют суть данного метода, потому комментарии следует оставлять только в самых запутанных и неочевидных местах

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
}

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
    return [self.images count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
#warning Попробуй сама сделать ячейку, а не используй стандартное решените. Отнаследуйся от UITableViewCell, и на autolayout сделай ячейку с UILabel и UIImageView и попробуй ее заполнять данными. Заполнение лучше инкапсулировать в самой ячейке, то есть у ячейки нужен метод вроде setupWithText:image:.
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                    reuseIdentifier:CellIdentifier];
    }
    
    cell.textLabel.text = [self.titleOfImages objectAtIndex:indexPath.row];
    NSString *imageName = [self.images objectAtIndex:indexPath.row];
    cell.imageView.image = [UIImage imageNamed:imageName];
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
