//
//  FPYNamedImage.m
//  FirstProjectYalantis
//  Copyright © 2015 Olga Khomich. All rights reserved.
//

#import "FPYNamedImage.h"

@implementation FPYNamedImage {
    NSString *_imageName;
}

-(instancetype)initWithImageName:(NSString *)initialImageName title:(NSString *)initialTitle {
    
    self = [self init];
    
    if (self != nil) {
        self->_title = initialTitle;
        self->_imageName = initialImageName;
    }
    
    return self;
}

-(instancetype)initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    
    if (self) {
        self->_title = dictionary[@"title"];
        self->_imageName = dictionary[@"image"];
    }
    return self;
}

-(NSDictionary *)objectToDictionary{
    return [NSDictionary dictionaryWithObjectsAndKeys:_imageName, @"image", self.title, @"title", nil];
}


-(UIImage *)image {
    UIImage *result = [UIImage imageNamed:_imageName];
    
    if (result == nil)
    {
        result = [UIImage imageNamed:@"default.jpeg"];
    }
    
    return result;

}

@end
