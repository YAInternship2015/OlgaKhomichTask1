//
//  FPYNamedImage.h
//  FirstProjectYalantis
//  Copyright © 2015 Olga Khomich. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface FPYNamedImage : NSObject{
    NSString *imageName1;
    NSString *title1;
}

-(instancetype)initWithImageName:(NSString *)imageName andTitle:(NSString *)title;
-(UIImage *)getImage;
-(NSString *)getTitle;

@end
