//
//  Cat.m
//  Tuannv.Animal
//
//  Created by VTIT on 9/10/13.
//  Copyright (c) 2013 VTIT. All rights reserved.
//

#import "Cat.h"

@implementation Cat

-(void) sound{
    NSLog(@"meo meo");
}

-(void) run{
    NSLog(@"Meo run");
}

-(void) climb:(id)object{
     NSLog(@"Cat: %@ climb %@", self, object);
}

@end
