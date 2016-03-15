//
//  Game.h
//  ThreeLow
//
//  Created by Thomas Friesman on 2016-03-09.
//  Copyright © 2016 Thomas Friesman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

@interface Game : NSObject

@property (nonatomic) NSMutableArray *myDice;
@property (nonatomic) NSMutableSet *heldDice;


-(void)rollDice;

-(void)holdDice:(Dice*)dice;

-(void)resetDice;

-(void)score;


@end
