//
//  Animal.h
//  Tuannv.Animal
//
//  Created by VTIT on 9/10/13.
//  Copyright (c) 2013 VTIT. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Animal : NSObject
{
    NSString *_name;
}
- (id) init: (NSString *) name;
-(void) sound;
-(void) fight : (Animal*) otherAnimal;
@end
