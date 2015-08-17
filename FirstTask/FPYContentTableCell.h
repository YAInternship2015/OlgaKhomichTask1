//
//  FPYContentTableCell.h
//  FirstProjectYalantis
//
//  Copyright © 2015 Olga Khomich. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FPYNamedImage.h"

@interface FPYContentTableCell : UITableViewCell

#warning жти свойства не нужно показывать в *.h файле, перенесите их в *.m
@property (strong, nonatomic) IBOutlet UILabel *titleOnTheCell;
@property (strong, nonatomic) IBOutlet UIImageView *imageOnTheCell;

-(void)fillWithNamedImage:(FPYNamedImage *)namedImage;
#warning после слов @interface и @implementation и перед @end нужны пустые строки
@end
