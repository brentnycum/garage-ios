//
//  BNGarageApiClient.h
//  Garage
//
//  Created by Brent Nycum on 3/30/13.
//  Copyright (c) 2013 It's Brent. All rights reserved.
//

#import <AFNetworking/AFNetworking.h>

extern NSString * const BNGarageApiHostURL;

@interface BNGarageApiClient : AFHTTPClient

/**
 *  Shared Garage API client.
 *
 *  @return shared client.
 */
+ (BNGarageApiClient *)sharedClient;

/**
 *  Switch the left garage door.
 *
 *  @param success success block
 *  @param failure failure block
 */
- (void)switchLeftGarageWithSuccess:(void (^)(id responseObject))success failure:(void (^)(NSError *error))failure;

/**
 *  Switch the right garage door.
 *
 *  @param success success block
 *  @param failure failure block
 */
- (void)switchRightGarageWithSuccess:(void (^)(id responseObject))success failure:(void (^)(NSError *error))failure;

/**
 *  Switch both garage doors.
 *
 *  @param success success block
 *  @param failure failure block
 */
- (void)switchBothGaragesWithSuccess:(void (^)(id responseObject))success failure:(void (^)(NSError *error))failure;

@end
