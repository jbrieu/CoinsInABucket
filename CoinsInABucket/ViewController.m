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

@interface ViewController ()

@property (nonatomic, strong) Bucket *bucket;
@property (weak, nonatomic) IBOutlet UILabel *bucketLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _bucket = [[Bucket alloc] init];
    
    _bucketLabel.text = [NSString stringWithFormat:@"%d", [_bucket totalValue]];
}

- (IBAction)coinTapped:(UITapGestureRecognizer *)sender {
    Coin *coin = [[Coin alloc] initWithValue:DEFAULT_COIN_VALUE];
    
    [_bucket addCoin:coin];
}

@end
