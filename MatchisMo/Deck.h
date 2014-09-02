//
//  Deck.h
//  MatchisMo
//
//  Created by Deep Randhawa on 9/1/14.
//  Copyright (c) 2014 Deep Randhawa. All rights reserved.
//

#import "Card.h"

@interface Deck : Card

-(void)addCard: (Card *)card atTop: (BOOL)atTop;
-(void)addCard:(Card *)card;

-(Card *)drawRandomCard;

@end
