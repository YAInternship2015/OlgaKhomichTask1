//
//  FPYCollectionViewCell.m
//  FirstProjectYalantis
//  Copyright © 2015 Olga Khomich. All rights reserved.
//

#import "FPYCollectionViewCell.h"


@interface FPYCollectionViewCell ()

@property (strong, nonatomic) IBOutlet UILabel *titleCollectionCell;
@property (strong, nonatomic) IBOutlet UIImageView *imageCollectionCell;

@end

@implementation FPYCollectionViewCell


-(void)fillWithNamedImage:(FPYNamedImage *)namedImage {
    self.titleCollectionCell.text = namedImage.title;
    self.imageCollectionCell.image = namedImage.image;
}


@end
