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

+(BNGarageApiClient *)sharedClient;

-(void)switchLeftGarageWithSuccess:(void (^)(id responseObject))success failure:(void (^)(NSError *error))failure;
-(void)switchRightGarageWithSuccess:(void (^)(id responseObject))success failure:(void (^)(NSError *error))failure;

@end
