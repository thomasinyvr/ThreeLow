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
        
        while (true) {
            
            NSString *userInput = [menu inputForPrompt:@"What would you like to do\nroll - roll dice?\nhold - hold a dice\nreset - reset all dice"];
            if ([userInput isEqualToString:@"hold"]) {
                NSString *userInputForDiceHeld = [menu inputForPrompt:@"Which one?"];
                
                //convert string to number
                int x = [userInputForDiceHeld intValue];
                
                // from number, look up array for specific die
                Dice* aDice = game.myDice[x];
                
                // pass in the die to the holdDice
                [game holdDice:aDice];
                
            }else{
                if ([userInput isEqualToString:@"roll"]){
                    [game rollDice];
                
                }else{
                    if ([userInput isEqualToString:@"reset"]) {
                        [game resetDice];
                    }
                }
            }
        }
    }
    return 0;

}
