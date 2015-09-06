//
//  FPYNamedImageDataValidator.m
//  FirstProjectYalantis
//
//  Created by Igor Khomich on 9/6/15.
//  Copyright © 2015 Olga Khomich. All rights reserved.
//

#import "FPYNamedImageDataValidator.h"

@implementation FPYNamedImageDataValidator

+(BOOL)isValidImageTitle:(NSString *)title {
   return (title != nil) && (title.length >= 3);
}

+(BOOL)isValidImageName:(NSString *)fileName {
    return (fileName != nil) && (fileName.length > 0);
}

@end
