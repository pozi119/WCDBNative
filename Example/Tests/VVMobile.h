//
//  VVMobile.h
//  WCDBNative_Tests
//
//  Created by Valo on 2020/6/30.
//  Copyright © 2020 pozi119. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface VVMobile : NSObject
@property (nonatomic, copy) NSString *mobile;
@property (nonatomic, copy) NSString *province;
@property (nonatomic, copy) NSString *city;
@property (nonatomic, copy) NSString *carrier;
@property (nonatomic, copy) NSString *industry;
@property (nonatomic, assign) CGFloat relative;
@property (nonatomic, assign) NSInteger times;
@end

NS_ASSUME_NONNULL_END
