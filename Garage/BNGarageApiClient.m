//
//  BNGarageApiClient.m
//  Garage
//
//  Created by Brent Nycum on 3/30/13.
//  Copyright (c) 2013 It's Brent. All rights reserved.
//

#import "BNGarageApiClient.h"

NSString * const BNGarageApiHostURL = @"http://172.28.1.132/";

@implementation BNGarageApiClient

#pragma mark - Singleton

+ (BNGarageApiClient *)sharedClient {
	static BNGarageApiClient *_sharedClient = nil;
	static dispatch_once_t onceToken;
	dispatch_once(&onceToken, ^{
		_sharedClient = [[BNGarageApiClient alloc] initWithBaseURL:[NSURL URLWithString:BNGarageApiHostURL]];
	});

	return _sharedClient;
}

#pragma mark - BNGarageApiClient

- (void)switchLeftGarageWithSuccess:(void (^)(id responseObject))success failure:(void (^)(NSError *error))failure {
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

- (void)switchRightGarageWithSuccess:(void (^)(id responseObject))success failure:(void (^)(NSError *error))failure {
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

- (void)switchBothGaragesWithSuccess:(void (^)(id responseObject))success failure:(void (^)(NSError *error))failure {
	[self postPath:@"/api/garage/both" parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
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
