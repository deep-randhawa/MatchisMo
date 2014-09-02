//
//  Card.m
//  MatchisMo
//
//  Created by Deep Randhawa on 9/1/14.
//  Copyright (c) 2014 Deep Randhawa. All rights reserved.
//

#import "Card.h"

@implementation Card

- (int)match:(NSArray *)otherCards {
    int score = 0;
    for (Card* card in otherCards) {
        if ([card.contents isEqualToString:self.contents]) {
            score = 1;
        }
    }
    return score;
}

@end
