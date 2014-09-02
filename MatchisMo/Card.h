//
//  Card.h
//  MatchisMo
//
//  Created by Deep Randhawa on 9/1/14.
//  Copyright (c) 2014 Deep Randhawa. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong, nonatomic) NSString* contents;

@property (nonatomic, getter=isChosen) BOOL chosen;
@property (nonatomic, getter=isMatched) BOOL matched;

-(int) match: (NSArray *)otherCards;

@end
