//
//  FPYNamedImage.m
//  FirstProjectYalantis
//  Copyright © 2015 Olga Khomich. All rights reserved.
//

#import "FPYNamedImage.h"

@implementation FPYNamedImage

-(instancetype)initWithImageName:(NSString *)imageName andTitle:(NSString *)title{
    self = [self init];
    self->title1 = title;
    self->imageName1 = imageName;
    return self;
}
-(UIImage *)getImage{
    return [UIImage imageNamed:imageName1];
}

-(NSString *)getTitle{
    return title1;
}

@end
