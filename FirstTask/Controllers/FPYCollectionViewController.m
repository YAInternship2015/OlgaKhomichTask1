//
//  FPYCollectionViewController.m
//  FirstProjectYalantis
//  Copyright © 2015 Olga Khomich. All rights reserved.
//

#import "FPYCollectionViewController.h"
#import "FPYCollectionViewCell.h"
#import "FPYNamedImage.h"

@interface FPYCollectionViewController ()

@end

@implementation FPYCollectionViewController

static NSString * const reuseIdentifier = @"Cell";

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.collectionView reloadData];
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {

    return [self.contentData count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    FPYCollectionViewCell *cell = (FPYCollectionViewCell *)[collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    FPYNamedImage *NameImage = [self.contentData namedImageAtIndex:indexPath.row];
    [cell fillWithNamedImage:NameImage];
    return cell;
}



@end
