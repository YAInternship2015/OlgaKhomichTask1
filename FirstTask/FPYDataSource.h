//
//  FPYDataSource.h
//  FirstProjectYalantis
//  Copyright © 2015 Olga Khomich. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "FPYNamedImage.h"

@interface FPYDataSource : NSObject

#warning метод init не нужно показывать в *.h файле, он и так доступен
-(instancetype)init;
-(FPYNamedImage *)getNamedImageAtIndex:(NSUInteger)row;
-(NSInteger)getItemsCount;

@end
