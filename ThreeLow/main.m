//
//  main.m
//  ThreeLow
//
//  Created by Thomas Friesman on 2016-03-09.
//  Copyright © 2016 Thomas Friesman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "Game.h"
#import "InputCollector.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        InputCollector *menu = [[InputCollector alloc] init];
        
        
        Game *game = [[Game alloc] init];
//        NSMutableArray *myDice = [NSMutableArray array];
        
        for (int i= 1 ; i <= 5; i++) {
            Dice *dice = [[Dice alloc] init];
            [game.myDice addObject:dice];
            
            NSLog(@"%i", dice.currentValue);
        }
        
        
        
    }
    return 0;
}
