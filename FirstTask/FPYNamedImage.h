//
//  FPYNamedImage.h
//  FirstProjectYalantis
//  Copyright © 2015 Olga Khomich. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface FPYNamedImage : NSObject{
#warning старайтесь не использовать ivar'ы. Вместо них используйте @property. Объявите эти свойства как readwrite в *.m файле и как readonly в *.h, чтобы не давать возможность редактировать эти данные извне
#warning также старайтесь не использовать цифры в именах классов, методов и переменных
    NSString *imageName1;
    NSString *title1;
}

#warning перед открывающейся скобкой должен быть пробел. Исправьте это по всему проекту
#warning также в имена методов не принято использовать слово and. Достаточно просто initWithImageName:title:
-(instancetype)initWithImageName:(NSString *)imageName andTitle:(NSString *)title;
#warning в objective-c в именах геттеров не пишут слово get. Если геттер "мгновенный", то достаточно просто написать image. Если бы операция была длительной (например, с запросом в сеть), то в начало имени добавилось бы слово request, load или вроде того. Внесите правки во все геттеры в проекте
-(UIImage *)getImage;
-(NSString *)getTitle;

@end
