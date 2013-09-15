//
//  Cat.h
//  Tuannv.Animal
//
//  Created by VTIT on 9/10/13.
//  Copyright (c) 2013 VTIT. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Animal.h"
#import "MoveNRun.h"
#import "MoveNClimb.h"

@interface Cat : Animal<MoveNRun, MoveNClimb>



@end
