//
//  Bucket.m
//  CoinsInABucket
//
//  Created by Coupang on 2/25/16.
//  Copyright © 2016 Hogwarts. All rights reserved.
//

#import "Bucket.h"
#import "Coin.h"

@interface Bucket()

@property (nonatomic)  NSUInteger totalValue;

@end

@implementation Bucket

- (instancetype)init
{
    self = [super init];
    if (self) {
        _totalValue = 0;
    }
    return self;
}

- (void)addCoin:(Coin *)coin {
    if(coin) {
        _totalValue += coin.value;
    }
}

- (NSUInteger)totalValue {
    return _totalValue;
}

@end
