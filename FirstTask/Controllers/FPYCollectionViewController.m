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

#warning это лучше вынести в саму ячейку
static NSString * const reuseIdentifier = @"Cell";

#warning если у контроллера будет свой личный датасорс, то не будет необходимости перезагружать контент при каждом появлении на дисплее
#warning открывающаяся фигурная собка должна быть на той же строке, что и имя метода. Это много где встречается у Вас, исправьте везде
-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.collectionView reloadData];
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
#warning не нужно оставлять пустые строки после имени метода
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
