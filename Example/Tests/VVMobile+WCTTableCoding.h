//
//  VVMobile+WCTTableCoding.h
//  WCDBNative_Tests
//
//  Created by Valo on 2020/6/30.
//  Copyright © 2020 pozi119. All rights reserved.
//

#import "VVMobile.h"
#import <WCDB/WCDB.h>

NS_ASSUME_NONNULL_BEGIN

@interface VVMobile (WCTTableCoding) <WCTTableCoding>
WCDB_PROPERTY(mobile)
WCDB_PROPERTY(province)
WCDB_PROPERTY(city)
WCDB_PROPERTY(carrier)
WCDB_PROPERTY(industry)
WCDB_PROPERTY(relative)
WCDB_PROPERTY(times)
@end

NS_ASSUME_NONNULL_END
