//
//  FPYDataSource.m
//  FirstProjectYalantis
//  Copyright © 2015 Olga Khomich. All rights reserved.
//

#import "FPYDataSource.h"

@implementation FPYDataSource{
    NSArray *namedImagesAndTitles;
}

-(instancetype)init{
    
    self = [super init];
    if (self)
    {
             namedImagesAndTitles = [NSArray arrayWithObjects:
                                [[FPYNamedImage alloc] initWithImageName:@"dog.jpg" andTitle:@"Dog"],
                                [[FPYNamedImage alloc] initWithImageName:@"girl.jpeg" andTitle:@"Girl"],
                                [[FPYNamedImage alloc] initWithImageName:@"squirrel.jpeg" andTitle:@"Squirrel"],
                                [[FPYNamedImage alloc] initWithImageName:@"hart.jpeg" andTitle:@"Hart"],
                                [[FPYNamedImage alloc] initWithImageName:@"swan.jpeg" andTitle:@"Swan"],
                                [[FPYNamedImage alloc] initWithImageName:@"parrot.jpeg" andTitle:@"Parrot"],
                                [[FPYNamedImage alloc] initWithImageName:@"kids.jpeg" andTitle:@"Kids"],
                                [[FPYNamedImage alloc] initWithImageName:@"bird.jpeg" andTitle:@"Bird"],
                                [[FPYNamedImage alloc] initWithImageName:@"death.jpg" andTitle:@"Death"],
                                [[FPYNamedImage alloc] initWithImageName:@"duck.jpeg" andTitle:@"Duck"],
                                [[FPYNamedImage alloc] initWithImageName:@"puppy.jpeg" andTitle:@"Puppy"],
                                 nil];
    }
    return self;
}

-(FPYNamedImage *)getNamedImageAtIndex:(NSUInteger)row{
    FPYNamedImage *temp = [namedImagesAndTitles objectAtIndex:row];
    return temp;
}

-(NSInteger)getItemsCount{
    
    return [namedImagesAndTitles count];
}

@end
