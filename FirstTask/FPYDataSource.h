//
//  FPYDataSource.h
//  FirstProjectYalantis
//  Copyright © 2015 Olga Khomich. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "FPYNamedImage.h"

@interface FPYDataSource : NSObject

-(FPYNamedImage *)getNamedImageAtIndex:(NSUInteger)row;
-(NSInteger)getItemsCount;

@end
