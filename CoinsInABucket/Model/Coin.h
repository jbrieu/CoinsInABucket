//
//  Coin.h
//  CoinsInABucket
//
//  Created by Coupang on 2/25/16.
//  Copyright © 2016 Hogwarts. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Coin : NSObject

@property (assign, readonly) NSUInteger value;

- (instancetype)initWithValue:(NSUInteger)value;

@end
