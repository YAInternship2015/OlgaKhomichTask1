//
//  FPYContentTableCell.h
//  FirstProjectYalantis
//
//  Copyright © 2015 Olga Khomich. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FPYNamedImage.h"

@interface FPYContentTableCell : UITableViewCell

@property (strong, nonatomic) IBOutlet UILabel *titleOnTheCell;
@property (strong, nonatomic) IBOutlet UIImageView *imageOnTheCell;

-(void)fillWithNamedImage:(FPYNamedImage *)namedImage;

@end
