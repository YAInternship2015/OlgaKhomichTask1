//
//  FPYDataSource.m
//  FirstProjectYalantis
//  Copyright © 2015 Olga Khomich. All rights reserved.
//

#import "FPYDataSource.h"


@interface FPYDataSource ()

@property (nonatomic, strong) NSMutableArray *contentData;

@end

@implementation FPYDataSource

-(instancetype)init {
    self = [super init];
    if (self) {
        [self readData];
    }
    return self;
}

-(void)addNewItem:(FPYNamedImage *)item
{
    if (item != nil)
    {
        [self.contentData addObject:item];
        [self saveData];
    }
}

-(FPYNamedImage *)namedImageAtIndex:(NSUInteger)row {
    FPYNamedImage *temp = [self.contentData objectAtIndex:row];
    
    return temp;
}

-(NSInteger)count {
    
    return [self.contentData count];
}

-(NSString *)fileName
{
    return @"Data";
}

-(NSString *)pathToData
{
    return [[NSBundle mainBundle] pathForResource:[self fileName] ofType:@"plist"];
}

-(void)saveData {
    NSMutableArray *rawData = [[NSMutableArray alloc] init];
    for (int i = 0; i < self.contentData.count; i++) {
        FPYNamedImage *tempNameImage = [self.contentData objectAtIndex:i];
        [rawData addObject:[tempNameImage objectToDictionary]];
    }
    NSString *path = [self pathToData];
    [rawData writeToFile:path atomically:YES];
    
}

-(void)readData {
    NSString *path = [self pathToData];
    NSArray *rawData = [NSArray arrayWithContentsOfFile:path];
    self.contentData = [NSMutableArray new];
    for (int i = 0; i < rawData.count; i++) {
        NSDictionary *objectFromRawData = [rawData objectAtIndex:i];
        FPYNamedImage *objectForAdd = [[FPYNamedImage alloc] initWithDictionary:objectFromRawData];
        [self.contentData addObject:objectForAdd];
    }
}

@end
