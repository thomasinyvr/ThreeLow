//
//  Game.m
//  ThreeLow
//
//  Created by Thomas Friesman on 2016-03-09.
//  Copyright © 2016 Thomas Friesman. All rights reserved.
//

#import "Game.h"
#import "Dice.h"

@implementation Game


- (instancetype)init
{
    self = [super init];
    if (self) {
       self.myDice = [[NSMutableArray alloc]init];
        self.heldDice = [[NSMutableSet alloc]init];
        
        
        for (int i= 1 ; i <= 5; i++) {
            Dice *dice = [[Dice alloc] init];
            [self.myDice addObject:dice];
            
            NSLog(@"%i", dice.currentValue);
        }
    }
    return self;
}
-(void)resetDice {
    [self.heldDice removeAllObjects];
}

-(void)rollDice {
    for (Dice * aDice in self.myDice) {
        if (![self.heldDice containsObject:aDice]) {
            [aDice rollDice];
            NSLog(@"%i", aDice.currentValue);
        }else {
            NSLog(@"[%i]", aDice.currentValue);
            
        }
    }
}

-(void)holdDice :(Dice*)dice{
    if ([self.heldDice containsObject:dice]) {
        [self.heldDice removeObject:dice];
    }else{
       [self.heldDice addObject:dice];
    }
    
    
}
-(void)score {
    
}
@end
