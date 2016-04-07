//
//  Coin.m
//  HeadsOrTailes
//
//  Created by Michael Maloof on 4/7/16.
//  Copyright © 2016 Jetpack Dinosaur. All rights reserved.
//

#import "Coin.h"

@implementation Coin

-(void)flipCoin{
    int flip = arc4random_uniform(2);
    
    if (flip == 0){
        self.imageName = @"Heads";
    } else if (flip == 1){
        self.imageName = @"Tails";
    }
}

@end
