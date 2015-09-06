//
//  FPYNamedImage.h
//  FirstProjectYalantis
//  Copyright © 2015 Olga Khomich. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface FPYNamedImage : NSObject

@property (readonly) NSString *title;
@property (readonly) UIImage *image;

-(instancetype)initWithImageName:(NSString *)initialImageName title:(NSString *)initialTitle;
-(instancetype)initWithDictionary:(NSDictionary *)dictionary;
-(NSDictionary *)objectToDictionary;

@end
