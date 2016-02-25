//
//  CoinsInABucketUITests.m
//  CoinsInABucketUITests
//
//  Created by Coupang on 2/25/16.
//  Copyright © 2016 Hogwarts. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface CoinsInABucketUITests : XCTestCase

@end

@implementation CoinsInABucketUITests

- (void)setUp {
    [super setUp];
    
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    // In UI tests it is usually best to stop immediately when a failure occurs.
    self.continueAfterFailure = NO;
    // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
    [[[XCUIApplication alloc] init] launch];
    
    // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testTapTheCoin {
    // Use recording to get started writing UI tests.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    
    
    XCUIApplication *app = [[XCUIApplication alloc] init];
    XCUIElement *bucketLabel = app.staticTexts[@"BucketLabel"];
    XCTAssertEqualObjects(bucketLabel.label, @"0");
    
    XCUIElement *coinImage = app.images[@"Coin"];
    [coinImage tap];
    
    XCTAssertEqualObjects(app.staticTexts[@"BucketLabel"].label, @"1");
    
    [coinImage tap];
    
    XCTAssertEqualObjects(app.staticTexts[@"BucketLabel"].label, @"2");
    
    [app rotate:3.14 withVelocity:1.0]; // Rotate PI
    
    XCTAssertEqualObjects(app.staticTexts[@"BucketLabel"].label, @"2", @"value should stay the same if rotating the screen");
    [coinImage tap];
    XCTAssertEqualObjects(app.staticTexts[@"BucketLabel"].label, @"3", @"Tap should work after rotation");
    
    [app.staticTexts[@"BucketLabel"] tap];
    [app.images[@"bucket"] tap];
    
    XCTAssertEqualObjects(app.staticTexts[@"BucketLabel"].label, @"3", @"value should stay the same if tapping it or the bucket");
    
    
    
}

@end
