//
//  HCGWSAPI.m
//  wedocracy-ios-test-hanchong
//
//  Created by ZH on 6/20/14.
//  Copyright (c) 2014 HanChong. All rights reserved.
//

#import "HCGWSAPI.h"
#import "AFNetworking.h"
#import "WSConstants.h"

@implementation HCGWSAPI

+ (void)getWishesWithSuccess:(void (^)(id))successBlock failure:(void (^)(NSError *))failureBlock
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    NSString *apiPath = [NSString stringWithFormat:@"%@%@", WS_API_BASE_URL, WS_API_WISH_LIST];
    [manager GET:apiPath parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        // Success
        successBlock(responseObject);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        // Failure
        failureBlock(error);
    }];
}

+ (void)addWish:(NSDictionary *)wish photo:(UIImage *)image success:(void (^)(id))successBlock failure:(void (^)(NSError *))failureBlock
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    NSString *apiPath = [NSString stringWithFormat:@"%@%@", WS_API_BASE_URL, WS_API_WISH_ADD];
    [manager POST:apiPath parameters:wish constructingBodyWithBlock:^(id<AFMultipartFormData> formData) {
        // Append image data
        NSData *imageData = UIImagePNGRepresentation(image);
        if (imageData != nil)
        {
            [formData appendPartWithFileData:imageData name:WS_PARAM_PHOTO fileName:@"photo.png" mimeType:@"image/png"];
        }
    } success:^(AFHTTPRequestOperation *operation, id responseObject) {
        // Success
        successBlock(responseObject);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        // Failure
        failureBlock(error);
    }];
}

+ (void)updateWish:(NSDictionary *)wish photo:(UIImage *)image success:(void (^)(id))successBlock failure:(void (^)(NSError *))failureBlock
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    NSString *apiPath = [NSString stringWithFormat:@"%@%@/%@", WS_API_BASE_URL, WS_API_WISH_EDIT, wish[WS_PARAM_ID]];
    [manager POST:apiPath parameters:wish constructingBodyWithBlock:^(id<AFMultipartFormData> formData) {
        // Append image data
        NSData *imageData = UIImagePNGRepresentation(image);
        if (imageData != nil)
        {
            [formData appendPartWithFileData:imageData name:WS_PARAM_PHOTO fileName:@"photo.png" mimeType:@"image/png"];
        }
    } success:^(AFHTTPRequestOperation *operation, id responseObject) {
        // Success
        successBlock(responseObject);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        // Failure
        failureBlock(error);
    }];
}

+ (void)deleteWish:(NSString *)wishId success:(void (^)(id))successBlock failure:(void (^)(NSError *))failureBlock
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    NSString *apiPath = [NSString stringWithFormat:@"%@%@/%@", WS_API_BASE_URL, WS_API_WISH_EDIT, wishId];
    [manager GET:apiPath parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        // Success
        successBlock(responseObject);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        // Failure
        failureBlock(error);
    }];
}

@end
