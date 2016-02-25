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

@interface BucketTests : XCTestCase <BucketDelegate>

@property (nonatomic, strong) NSMutableString *logString;

@end

@implementation BucketTests

- (void)setUp {
    [super setUp];
    self.logString = [NSMutableString string];
}

- (void)tearDown {
    self.logString = nil;
    [super tearDown];
}

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

- (void)testDelegate {
    Bucket *bucket = [[Bucket alloc] init];
    bucket.delegate = self;
    
    XCTAssertEqualObjects(bucket.delegate, self, @"Should have the same delegate we gave it");
    XCTAssertEqualObjects(self.logString, @"", @"Should not call delegate when setting it");
    
    Coin *coin = [[Coin alloc] initWithValue:2];
    [bucket addCoin:coin];
    
    NSString *expectedLog = [NSString stringWithFormat:@"bucketDidReceiveCoin(%p)/", bucket];
    XCTAssertEqualObjects(self.logString, expectedLog, @"Should call with reference to itself");
    
    bucket.delegate = nil;
    [bucket addCoin:coin];
    XCTAssertEqualObjects(self.logString, expectedLog, @"Should not add anynore calls because delegate is not listening anymore");
    
}

#pragma mark - BucketDelegate

- (void)bucketDidReceiveCoin:(Bucket *)bucket {
    [_logString appendFormat:@"bucketDidReceiveCoin(%p)/", bucket];
}


@end
