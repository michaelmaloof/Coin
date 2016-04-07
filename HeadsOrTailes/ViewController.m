//
//  ViewController.m
//  HeadsOrTailes
//
//  Created by Michael Maloof on 4/7/16.
//  Copyright © 2016 Jetpack Dinosaur. All rights reserved.
//

#import "ViewController.h"
#import "Coin.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *flipButton;
@property (weak, nonatomic) IBOutlet UIImageView *coinImageView;
@property Coin *coinToFlip;
@property NSTimer *flipTimer;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.coinToFlip = [[Coin alloc]init];
}

- (IBAction)flipWasTapped:(id)sender {
    self.flipButton.hidden = YES;
    self.coinImageView.hidden = YES;
    [self flipCoinAnimation];
}

-(void)flipCoinAnimation{
    self.flipTimer = [NSTimer scheduledTimerWithTimeInterval: 1.0
                                                        target: self
                                                      selector:@selector(displayFlippedCoin)
                                                      userInfo: nil
                                                       repeats:YES];
}

-(void)displayFlippedCoin{
    [self.coinToFlip flipCoin];
    self.coinImageView.image = [UIImage imageNamed:self.coinToFlip.imageName];
    self.coinImageView.hidden = NO;
    self.flipButton.hidden = NO;
    [self.flipTimer invalidate];
    self.flipTimer = nil;

}

@end
