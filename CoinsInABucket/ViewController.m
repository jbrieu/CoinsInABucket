//
//  ViewController.m
//  CoinsInABucket
//
//  Created by Coupang on 2/25/16.
//  Copyright © 2016 Hogwarts. All rights reserved.
//

#import "ViewController.h"
#import "Bucket.h"
#import "Coin.h"

#define DEFAULT_COIN_VALUE 1

@interface ViewController () <BucketDelegate>

@property (nonatomic, strong) Bucket *bucket;
@property (weak, nonatomic) IBOutlet UILabel *bucketLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _bucket = [[Bucket alloc] init];
    _bucket.delegate = self;
    
    [self updateBucketLabel];
}

#pragma mark - UI Actions

- (IBAction)coinTapped:(UITapGestureRecognizer *)sender {
    Coin *coin = [[Coin alloc] initWithValue:DEFAULT_COIN_VALUE];
    
    [_bucket addCoin:coin];
}

#pragma mark - BucketDelegate

- (void)bucketDidReceiveCoin:(Bucket *)bucket {
    [self updateBucketLabel];
}

#pragma mark - Private

- (void)updateBucketLabel {
    _bucketLabel.text = [NSString stringWithFormat:@"%lu", [_bucket totalValue]];
}

@end
