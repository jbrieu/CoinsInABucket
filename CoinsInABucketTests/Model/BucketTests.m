//
//  BucketTests.m
//  CoinsInABucket
//
//  Created by Coupang on 2/25/16.
//  Copyright © 2016 Hogwarts. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Bucket.h"
#import "Coin.h"

@interface BucketTests : XCTestCase

@end

@implementation BucketTests

- (void)testInit {
    Bucket *bucket = [[Bucket alloc] init];

    XCTAssertNotNil(bucket);
    XCTAssertEqual([bucket totalValue], (NSUInteger)0);
}

- (void)testTotalValue {
    Bucket *bucket = [[Bucket alloc] init];
    
    XCTAssertNotNil(bucket);
    XCTAssertEqual([bucket totalValue], (NSUInteger)0);
    
    Coin *coin = [[Coin alloc] initWithValue:2];
    [bucket addCoin:coin];
    
    XCTAssertEqual([bucket totalValue], (NSUInteger)2);
    
    [bucket addCoin:coin];
    XCTAssertEqual([bucket totalValue], (NSUInteger)4);
    
    Coin *coin2 = [[Coin alloc] initWithValue:0];
    [bucket addCoin:coin2];
    
    XCTAssertEqual([bucket totalValue], (NSUInteger)4);
    
    Coin *coin3 = [[Coin alloc] initWithValue:1000];
    [bucket addCoin:coin3];
    
    XCTAssertEqual([bucket totalValue], (NSUInteger)1004);
}

- (void)testAddCoin {
    Bucket *bucket = [[Bucket alloc] init];
    
    XCTAssertNotNil(bucket);
    XCTAssertEqual([bucket totalValue], (NSUInteger)0);
    
    Coin *coin = [[Coin alloc] initWithValue:2];
    [bucket addCoin:coin];
    
    XCTAssertEqual([bucket totalValue], (NSUInteger)2);
    
    [bucket addCoin:coin];
    XCTAssertEqual([bucket totalValue], (NSUInteger)4);
    
    Coin *coin2 = [[Coin alloc] initWithValue:0];
    [bucket addCoin:coin2];
    
    XCTAssertEqual([bucket totalValue], (NSUInteger)4);
    
    Coin *coin3 = [[Coin alloc] initWithValue:1000];
    [bucket addCoin:coin3];
    
    XCTAssertEqual([bucket totalValue], (NSUInteger)1004);
}


@end
