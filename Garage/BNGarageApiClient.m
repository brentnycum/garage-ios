//
//  BNGarageApiClient.m
//  Garage
//
//  Created by Brent Nycum on 3/30/13.
//  Copyright (c) 2013 It's Brent. All rights reserved.
//

#import "BNGarageApiClient.h"

static NSString * const kAFAppDotNetAPIBaseURLString = @"https://172.28.1.132/";

@implementation BNGarageApiClient

+(BNGarageApiClient *)sharedClient {
    static BNGarageApiClient *_sharedClient = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedClient = [[BNGarageApiClient alloc] initWithBaseURL:[NSURL URLWithString:kAFAppDotNetAPIBaseURLString]];
    });
    
    return _sharedClient;
}


-(void)openLeftGarageWithSuccess:(void (^)(id responseObject))success failure:(void (^)(NSError *error))failure {
    [self postPath:@"/api/garage/left" parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        if (success) {
            success(responseObject);
        }
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        if (failure) {
            failure(error);
        }
    }];
}

-(void)openRightGarageWithSuccess:(void (^)(id responseObject))success failure:(void (^)(NSError *error))failure {
    [self postPath:@"/api/garage/right" parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        if (success) {
            success(responseObject);
        }
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        if (failure) {
            failure(error);
        }
    }];
}

@end