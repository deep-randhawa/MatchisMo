//
//  ViewController.m
//  MatchisMo
//
//  Created by Deep Randhawa on 9/1/14.
//  Copyright (c) 2014 Deep Randhawa. All rights reserved.
//

#import "ViewController.h"
#import "PlayingCard.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;
@end

@implementation ViewController

-(void)setFlipCount:(int)flipCount {
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
}

- (IBAction)touchCardButton:(UIButton *)sender {
    if ([sender.currentTitle length]) {
        UIImage *card = [UIImage imageNamed:@"cardBack"];
        [sender setBackgroundImage:card
                          forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
    } else {
        UIImage *card = [UIImage imageNamed:@"cardFront"];
        NSString *randomCardSuit = [PlayingCard validSuits][(arc4random() % 4)];
        NSString *randomCardRank = [PlayingCard rankStrings][(arc4random() % [PlayingCard maxRank])];
        
        [sender setBackgroundImage:card
                          forState:UIControlStateNormal];
        [sender setTitle:[randomCardSuit stringByAppendingString:randomCardRank] forState:UIControlStateNormal];
    }
    self.flipCount++;
    
}


@end
