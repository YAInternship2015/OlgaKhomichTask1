//
//  FPYAddToDataSource.m
//  FirstProjectYalantis
//  Copyright © 2015 Olga Khomich. All rights reserved.
//

#import "FPYAddToDataSource.h"
#import "FPYDataSource.h"
#import "FPYNamedImageDataValidator.h"

@interface FPYAddToDataSource ()

@property (strong, nonatomic) IBOutlet UITextField *imageForAdd;
@property (strong, nonatomic) IBOutlet UITextField *titleForAdd;

@end

@implementation FPYAddToDataSource

- (IBAction)addData:(id)sender {
    
    BOOL isTitleValid = [FPYNamedImageDataValidator isValidImageTitle:self.titleForAdd.text];
    BOOL isImageValid = [FPYNamedImageDataValidator isValidImageName:self.imageForAdd.text];
    
    if (isTitleValid && isImageValid) {
        FPYNamedImage *newObject = [[FPYNamedImage alloc] initWithImageName:self.imageForAdd.text title:self.titleForAdd.text];
        [self.contentData addNewItem:newObject];
        
        if (self.navigationController != nil)
        {
            [self.navigationController popViewControllerAnimated:YES];
        }
    }else{
        UIAlertController * alert = [UIAlertController
                                     alertControllerWithTitle:@"Error"
                                     message:@"Please check image title and fileName"
                                     preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction* ok = [UIAlertAction
                             actionWithTitle:@"OK"
                             style:UIAlertActionStyleDefault
                             handler:^(UIAlertAction * action)
                             {
                                 [self dismissViewControllerAnimated:YES completion:nil];
                             }];
        
        [alert addAction:ok];
        [self presentViewController:alert animated:YES completion:nil];
    }

}
@end
