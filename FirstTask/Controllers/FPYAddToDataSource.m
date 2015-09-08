//
//  FPYAddToDataSource.m
//  FirstProjectYalantis
//  Copyright © 2015 Olga Khomich. All rights reserved.
//

#import "FPYAddToDataSource.h"
#import "FPYDataSource.h"
#import "FPYNamedImageDataValidator.h"

@interface FPYAddToDataSource ()

#warning их имен свойств неясно, что это вообще такое. Лучше назвать imageNameTextField и titleTextField
@property (strong, nonatomic) IBOutlet UITextField *imageForAdd;
@property (strong, nonatomic) IBOutlet UITextField *titleForAdd;

@end

@implementation FPYAddToDataSource

- (IBAction)addData:(id)sender {
#warning тут по уму нужно иметь два валидатора отдельно на тайтл и на имя картинки
    BOOL isTitleValid = [FPYNamedImageDataValidator isValidImageTitle:self.titleForAdd.text];
    BOOL isImageValid = [FPYNamedImageDataValidator isValidImageName:self.imageForAdd.text];
    
    if (isTitleValid && isImageValid) {
        FPYNamedImage *newObject = [[FPYNamedImage alloc] initWithImageName:self.imageForAdd.text title:self.titleForAdd.text];
        [self.contentData addNewItem:newObject];
        
#warning в if, как и в циклах, { не переносится на следующую строку
        if (self.navigationController != nil)
        {
            [self.navigationController popViewControllerAnimated:YES];
        }
#warning  } else {
    }else{
#warning UIAlertController *alert
#warning вообще ошибку должен возвращать сам валидатор, а контроллер ее только отображает в UI
#warning тексты, которые создаются в коде и которые увидит юзер в UI, должны быть объявлены в файле Localizable.strings. Что это за файл и зачем он нужен очень легко найти в гугле
        UIAlertController * alert = [UIAlertController
                                     alertControllerWithTitle:@"Error"
                                     message:@"Please check image title and fileName"
                                     preferredStyle:UIAlertControllerStyleAlert];
#warning UIAlertAction *ok
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
