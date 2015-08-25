//
//  FPYContentTableCell.m
//  FirstProjectYalantis
//
//  Copyright © 2015 Olga Khomich. All rights reserved.
//

#import "FPYContentTableCell.h"

@implementation FPYContentTableCell

-(void)fillWithNamedImage:(FPYNamedImage *)namedImage {
    self.titleOnTheCell.text = namedImage.title;
    self.imageOnTheCell.image = namedImage.image;
}

@end
