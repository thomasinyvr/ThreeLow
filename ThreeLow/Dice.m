//
//  Dice.m
//  ThreeLow
//
//  Created by Thomas Friesman on 2016-03-09.
//  Copyright © 2016 Thomas Friesman. All rights reserved.
//

#import "Dice.h"
#import <stdlib.h>

@implementation Dice

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self randomizeValue];
    }
    return self;
}

-(void)randomizeValue {
    
    self.currentValue = arc4random_uniform(5);

}

-(void)rollDice {
    
    [self randomizeValue];
    
}



@end
