//
//  Bucket.h
//  CoinsInABucket
//
//  Created by Coupang on 2/25/16.
//  Copyright © 2016 Hogwarts. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Coin;

@interface Bucket : NSObject

- (void)addCoin:(Coin *)coin;
- (NSUInteger)totalValue;

@end
