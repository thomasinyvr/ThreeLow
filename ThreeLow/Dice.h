//
//  Dice.h
//  ThreeLow
//
//  Created by Thomas Friesman on 2016-03-09.
//  Copyright © 2016 Thomas Friesman. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dice : NSObject

@property (nonatomic) int currentValue;


-(void)randomizeValue;
-(void)rollDice;

@end
