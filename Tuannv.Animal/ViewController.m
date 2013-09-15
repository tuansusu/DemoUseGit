//
//  ViewController.m
//  Tuannv.Animal
//
//  Created by VTIT on 9/10/13.
//  Copyright (c) 2013 VTIT. All rights reserved.
//

#import "ViewController.h"
#import "Animal.h"
#import "Cat.h"
#import "Tiger.h"
#import "Pig.h"
#import "Dog.h"
#import "Elephant.h"

@interface ViewController ()
{
    NSArray *_listAnimal;
    NSTimer *_timer;
    BOOL check; //test thay doi thang danh nhau thoi.
    
}
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib
    check = YES;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)action_makeZoo:(id)sender {
    Tiger *tiger = [[Tiger alloc] init:@"White Tiger"];
    Pig *pig = [[Pig alloc] init:@"Pretty Pig"];
    Dog *dog = [[Dog alloc] init:@"Phu Quoc"];
    Cat *cat = [[Cat alloc] init:@"Bob Cat"];
    Elephant *elephant = [[Elephant alloc]init:@"Tuan elephant"];
    _listAnimal = @[tiger, pig, dog, cat, elephant];
}

- (IBAction)action_makeSound:(id)sender {
    
    if (_listAnimal==nil) {
        NSLog(@"Create make zoo first");
        return;
    }
    for (Animal *animal in _listAnimal) {
        [animal sound];
    }
    
    
}

- (IBAction)action_makeMove:(id)sender {
    if (_listAnimal==nil) {
        NSLog(@"Create make zoo first");
        return;
    }
    
    for (Animal *animal in _listAnimal) {
        
        @try {
            if ([animal conformsToProtocol: NSProtocolFromString(@"MoveNClimb")])
            {
                id<MoveNClimb> moveAndClimbAnimal = (id<MoveNClimb>) animal;
                NSString *tree = @"tree";
                [moveAndClimbAnimal climb:tree];
                
            }
            
            if ([animal conformsToProtocol:NSProtocolFromString(@"MoveNRun")]) {
                id<MoveNRun> runAnimal = (id<MoveNRun>) animal;
                [runAnimal run];
            }
        }
        @catch (NSException *exception) {
            NSLog(@"%@", [animal description]);
        }
        @finally {
            
        }
        
    }
}



- (IBAction)action_makeFinght:(id)sender {
    if (_listAnimal==nil) {
        NSLog(@"Create make zoo first");
        return;
    }
    
    if (_timer==nil) {
        
        //_timer = [NSTimer timerWithTimeInterval:5 target:self selector:@selector(actionMakeSound) userInfo:nil repeats:YES];
        _timer = [NSTimer scheduledTimerWithTimeInterval: 5
                                                  target: self
                                                selector: @selector(actionMakeSound)
                                                userInfo: nil
                                                 repeats: YES];

        
        [self actionMakeSound];
        
    } else {
        [_timer invalidate];
        _timer = nil;
    }
  
    
}

-(void) actionMakeSound {
      
    
    for (int i=0; i<_listAnimal.count/2; i++) {
        if (check) {
            Animal *animal1 = [_listAnimal objectAtIndex:i];
            Animal *animal2 = [_listAnimal objectAtIndex:i+_listAnimal.count/2];
            [animal1 fight:animal2];
            
            check=NO;
        }else{
            Animal *animal1 = [_listAnimal objectAtIndex:2*i];
            Animal *animal2 = [_listAnimal objectAtIndex:i*2+1];
            [animal1 fight:animal2];
            check=YES;
        }
    }
    
}
@end
