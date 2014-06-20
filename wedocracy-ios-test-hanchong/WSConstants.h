//
//  WSConstants.h
//  wedocracy-ios-test-hanchong
//
//  Created by ZH on 6/20/14.
//  Copyright (c) 2014 HanChong. All rights reserved.
//

#ifndef wedocracy_ios_test_hanchong_WSConstants_h
#define wedocracy_ios_test_hanchong_WSConstants_h


// Web service API base URL
#define WS_API_BASE_URL         @"http://wedocracy-ios-test.herokuapp.com"

// Web service API URLs
#define WS_API_WISH_LIST        @"/client/request_index"
#define WS_API_WISH_ADD         @"/client/request_add"
#define WS_API_WISH_EDIT        @"/client/request_edit"
#define WS_API_WISH_DELETE      @"/client/request_delete"

// Web service parameter names
#define WS_PARAM_WISHES         @"wishes"
#define WS_PARAM_WISH           @"Wish"
#define WS_PARAM_ID             @"id"
#define WS_PARAM_GIFT           @"gift"
#define WS_PARAM_IS_CASH        @"is_cash"
#define WS_PARAM_AMOUNT         @"amount"
#define WS_PARAM_STORE          @"store"
#define WS_PARAM_PHOTO          @"photo"
#define WS_PARAM_ITEM_URL       @"item_url"
#define WS_PARAM_NOTES          @"notes"
#define WS_PARAM_CREATED        @"created"
#define WS_PARAM_MODIFIED       @"modified"
#define WS_PARAM_MESSAGE        @"message"

// Web service response values
#define WS_RES_CREATED          @"Created"
#define WS_RES_SAVED            @"Saved"


#endif
