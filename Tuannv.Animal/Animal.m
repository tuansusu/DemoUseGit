//
//  Animal.m
//  Tuannv.Animal
//
//  Created by VTIT on 9/10/13.
//  Copyright (c) 2013 VTIT. All rights reserved.
//

#import "Animal.h"



@implementation Animal

-(id) init:(NSString *)name{
    if (self = [super init]) {
        _name = name;
    }
    return self;
}


-(NSString*) description{
    return  _name;
}

-(void) sound{
    
}

-(void) fight:(Animal *)otherAnimal{
    NSLog(@"fight %@ vs  %@ ....", [self description], [otherAnimal description]);
}

@end
