//
//  CoinTests.m
//  CoinsInABucket
//
//  Created by Coupang on 2/25/16.
//  Copyright © 2016 Hogwarts. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Coin.h"

@interface CoinTests : XCTestCase

@end

@implementation CoinTests


- (void)testInitWithValue {
    Coin *coin = [[Coin alloc] initWithValue:0];
    
    XCTAssertNotNil(coin);
    XCTAssertEqual([coin value], (NSUInteger)0);
    
    coin = [[Coin alloc] initWithValue:1];
    
    XCTAssertNotNil(coin);
    XCTAssertEqual([coin value], (NSUInteger)1);
}


@end
