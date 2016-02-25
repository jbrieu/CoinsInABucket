//
//  Bucket.h
//  CoinsInABucket
//
//  Created by Coupang on 2/25/16.
//  Copyright © 2016 Hogwarts. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Coin, Bucket;

@protocol BucketDelegate <NSObject>

- (void)bucketDidReceiveCoin:(Bucket *)bucket;

@end

@interface Bucket : NSObject

@property (nonatomic, assign, readwrite) id<BucketDelegate> delegate;

- (void)addCoin:(Coin *)coin;
- (NSUInteger)totalValue;

@end
