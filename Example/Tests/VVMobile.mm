//
//  VVMobile.m
//  WCDBNative_Tests
//
//  Created by Valo on 2020/6/30.
//  Copyright © 2020 pozi119. All rights reserved.
//

#import "VVMobile.h"
#import "VVMobile+WCTTableCoding.h"

@implementation VVMobile

WCDB_IMPLEMENTATION(VVMobile)

WCDB_SYNTHESIZE(VVMobile, mobile)
WCDB_SYNTHESIZE(VVMobile, province)
WCDB_SYNTHESIZE(VVMobile, city)
WCDB_SYNTHESIZE(VVMobile, carrier)
WCDB_SYNTHESIZE(VVMobile, industry)
WCDB_SYNTHESIZE(VVMobile, relative)
WCDB_SYNTHESIZE(VVMobile, times)

WCDB_PRIMARY_ASC(VVMobile, mobile)

- (NSString *)description {
    return [NSString stringWithFormat:@"%@ | %@ | %@ | %@ | %@ | %2.f | %@", _mobile, _province, _city, _carrier, _industry, _relative, @(_times)];
}

@end
