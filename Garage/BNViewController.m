//
//  BNViewController.m
//  Garage
//
//  Created by Brent Nycum on 3/30/13.
//  Copyright (c) 2013 It's Brent. All rights reserved.
//

#import "BNViewController.h"

#import "BNGarageApiClient.h"

@interface BNViewController ()

-(void)openLeftGarage:(id)sender;
-(void)openRightGarage:(id)sender;

@end

@implementation BNViewController

#pragma mark - UIViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Left Garage Button
    UIButton *button = [[[UIButton alloc] initWithFrame:CGRectMake(10, 50, 300, 46)] autorelease];
    [button.titleLabel setFont:[UIFont boldSystemFontOfSize:18]];
    [button.titleLabel setTextColor:[UIColor colorWithWhite:0.98 alpha:1.0]];
    [button.titleLabel setShadowColor:[UIColor blackColor]];
    [button.titleLabel setShadowOffset:CGSizeMake(0, 1)];
    [button setBackgroundImage:[[UIImage imageNamed:@"Button-Off"] stretchableImageWithLeftCapWidth:5 topCapHeight:5]
                      forState:UIControlStateNormal];
    [button setBackgroundImage:[[UIImage imageNamed:@"Button-On"] stretchableImageWithLeftCapWidth:5 topCapHeight:5]
                      forState:UIControlStateHighlighted];
    [button setTitle:NSLocalizedString(@"Left Garage", nil) forState:UIControlStateNormal];
    [button addTarget:self action:@selector(openLeftGarage:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:button];
    
    // Right Garage Button
    button = [[[UIButton alloc] initWithFrame:CGRectMake(10, 119, 300, 46)] autorelease];
    [button.titleLabel setFont:[UIFont boldSystemFontOfSize:18]];
    [button.titleLabel setTextColor:[UIColor colorWithWhite:0.98 alpha:1.0]];
    [button.titleLabel setShadowColor:[UIColor blackColor]];
    [button.titleLabel setShadowOffset:CGSizeMake(0, 1)];
    [button setBackgroundImage:[[UIImage imageNamed:@"Button-Off"] stretchableImageWithLeftCapWidth:5 topCapHeight:5]
                      forState:UIControlStateNormal];
    [button setBackgroundImage:[[UIImage imageNamed:@"Button-On"] stretchableImageWithLeftCapWidth:5 topCapHeight:5]
                      forState:UIControlStateHighlighted];
    [button setTitle:NSLocalizedString(@"Right Garage", nil) forState:UIControlStateNormal];
    [button addTarget:self action:@selector(openRightGarage:) forControlEvents:UIControlEventTouchUpInside];
    
    
    [self.view addSubview:button];
}

#pragma mark - BNViewController

-(void)openLeftGarage:(id)sender {
    [[BNGarageApiClient sharedClient] switchLeftGarageWithSuccess:^(id responseObject) {
        
    } failure:^(NSError *error) {
        NSLog(@"Error: %@", [error localizedDescription]);
    }];
}

-(void)openRightGarage:(id)sender {
    [[BNGarageApiClient sharedClient] switchRightGarageWithSuccess:^(id responseObject) {
        
    } failure:^(NSError *error) {
        NSLog(@"Error: %@", [error localizedDescription]);
    }];
}

@end
