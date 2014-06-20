//
//  HCGWSAPI.h
//  wedocracy-ios-test-hanchong
//
//  Created by ZH on 6/20/14.
//  Copyright (c) 2014 HanChong. All rights reserved.
//

#import <Foundation/Foundation.h>

/*!
 * Web service api implementation
 */
@interface HCGWSAPI : NSObject

/*!
 * Retrieve a list of wishes
 *
 * @param successBlock - The block will be executed if the operation is successful
 * @param failureBlock - The block will be executed if the operation is failed
 */
+ (void)getWishesWithSuccess:(void (^)(id response))successBlock failure:(void (^)(NSError *error))failureBlock;

/*!
 * Add new wish
 *
 * @param wish - Dictionary object that represents a wish properties
 * @param successBlock - The block will be executed if the operation is successful
 * @param failureBlock - The block will be executed if the operation is failed
 */
+ (void)addWish:(NSDictionary *)wish photo:(UIImage *)image success:(void (^)(id response))successBlock failure:(void (^)(NSError *error))failureBlock;

/*!
 * Update Wish by its id
 *
 * @param wish - Dictionary object that represents a wish properties. NOTE: wish id is required
 * @param successBlock - The block will be executed if the operation is successful
 * @param failureBlock - The block will be executed if the operation is failed
 */
+ (void)updateWish:(NSDictionary *)wish photo:(UIImage *)image success:(void (^)(id response))successBlock failure:(void (^)(NSError *error))failureBlock;

/*!
 * Delete a Wish
 *
 * @param wishId - Unique id of the wish to be deleted
 * @param successBlock - The block will be executed if the operation is successful
 * @param failureBlock - The block will be executed if the operation is failed
 */
+ (void)deleteWish:(NSString *)wishId success:(void (^)(id response))successBlock failure:(void (^)(NSError *error))failureBlock;

@end
