//
//  FPYContentTableCell.m
//  FirstProjectYalantis
//
//  Copyright © 2015 Olga Khomich. All rights reserved.
//

#import "FPYContentTableCell.h"

@implementation FPYContentTableCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)fillWithNamedImage:(FPYNamedImage *)namedImage{
    self.titleOnTheCell.text = [namedImage getTitle];
    self.imageOnTheCell.image = [namedImage getImage];
}
@end
