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


-(UIImage *)image {
    return [UIImage imageNamed:self->_imageName];
}

@end
