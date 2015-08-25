//
//  FPYDataSource.m
//  FirstProjectYalantis
//  Copyright © 2015 Olga Khomich. All rights reserved.
//

#import "FPYDataSource.h"

@implementation FPYDataSource {
    NSArray *namedImagesAndTitles;
}

-(instancetype)init {
    
    self = [super init];
    if (self) {
             namedImagesAndTitles = [NSArray arrayWithObjects:
                                [[FPYNamedImage alloc] initWithImageName:@"dog.jpg"         title:@"Dog"],
                                [[FPYNamedImage alloc] initWithImageName:@"girl.jpeg"       title:@"Girl"],
                                [[FPYNamedImage alloc] initWithImageName:@"squirrel.jpeg"   title:@"Squirrel"],
                                [[FPYNamedImage alloc] initWithImageName:@"hart.jpeg"       title:@"Hart"],
                                [[FPYNamedImage alloc] initWithImageName:@"swan.jpeg"       title:@"Swan"],
                                [[FPYNamedImage alloc] initWithImageName:@"parrot.jpeg"     title:@"Parrot"],
                                [[FPYNamedImage alloc] initWithImageName:@"kids.jpeg"       title:@"Kids"],
                                [[FPYNamedImage alloc] initWithImageName:@"bird.jpeg"       title:@"Bird"],
                                [[FPYNamedImage alloc] initWithImageName:@"death.jpg"       title:@"Death"],
                                [[FPYNamedImage alloc] initWithImageName:@"duck.jpeg"       title:@"Duck"],
                                [[FPYNamedImage alloc] initWithImageName:@"puppy.jpeg"      title:@"Puppy"],
                                 nil];
    }
    return self;
}

-(FPYNamedImage *)getNamedImageAtIndex:(NSUInteger)row {
    FPYNamedImage *temp = [namedImagesAndTitles objectAtIndex:row];
    
    return temp;
}

-(NSInteger)getItemsCount {
    
    return [namedImagesAndTitles count];
}

@end
