//
//  MoveNClimb.h
//  Tuannv.Animal
//
//  Created by VTIT on 9/10/13.
//  Copyright (c) 2013 VTIT. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol MoveNClimb <NSObject>
- (void) climb: (id) object; //Trèo lên một vật thể
@optional  //Không bắt buốc
- (void) crawl ; //bò
@end
