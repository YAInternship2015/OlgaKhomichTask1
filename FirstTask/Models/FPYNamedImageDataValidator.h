//
//  FPYNamedImageDataValidator.h
//  FirstProjectYalantis
//  Copyright © 2015 Olga Khomich. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FPYNamedImageDataValidator : NSObject

+(BOOL)isValidImageTitle:(NSString *)title;
+(BOOL)isValidImageName:(NSString *)fileName;


@end
