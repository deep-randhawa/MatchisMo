//
//  PlayingCard.h
//  MatchisMo
//
//  Created by Deep Randhawa on 9/1/14.
//  Copyright (c) 2014 Deep Randhawa. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+(NSArray *)validSuits;
+(NSArray *)rankStrings;
+(NSUInteger)maxRank;

@end
