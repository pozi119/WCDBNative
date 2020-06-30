//
//  WCDBNativeTests.m
//  WCDBNativeTests
//
//  Created by pozi119 on 06/30/2020.
//  Copyright (c) 2020 pozi119. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "WCTDatabase+Native.h"
#import "VVMobile+WCTTableCoding.h"

NSString *const VVTestDB = @"mobiles.sqlite";
NSString *const VVTestTable = @"mobiles";

@interface Tests : XCTestCase
@property (nonatomic, strong) WCTDatabase *db;
@property (nonatomic, strong) WCTTable *table;
@end

@implementation Tests

- (void)setUp
{
    [super setUp];

    NSString *path = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
    NSString *targetPath = [path stringByAppendingPathComponent:VVTestDB];
    if (![[NSFileManager defaultManager] fileExistsAtPath:targetPath]) {
        NSString *sourcePath = [[NSBundle mainBundle] pathForResource:VVTestDB ofType:nil];
        [[NSFileManager defaultManager] copyItemAtPath:sourcePath toPath:targetPath error:nil];
    }

    self.db = [[WCTDatabase alloc] initWithPath:targetPath];
    [self.db createTableAndIndexesOfName:VVTestTable withClass:VVMobile.class];
    self.table = [self.db getTableOfName:VVTestTable withClass:VVMobile.class];
}

- (void)tearDown
{
    [self.db close];
    [super tearDown];
}

- (void)testExample
{
    [self.db execute:@"SELECT 1 FROM mobiles"];

    id result = [self.db getOneObjectOfClass:VVMobile.class fromTable:VVTestTable nativeWhere:@"mobile > '18000000000'"];
    NSLog(@"->:\n%@", result);

    result = [self.db getObjectsOfClass:VVMobile.class fromTable:VVTestTable nativeWhere:@"mobile > '18000000000' Limit 10"];
    NSLog(@"->:\n%@", result);

    result = [self.db getRowsOnResults:@[@"mobile", @"industry"] fromTable:VVTestTable nativeWhere:@"mobile > '18000000000' Limit 10"];
    NSLog(@"->:\n%@", result);

    result = [self.db getOneValueOnResult:@"mobile" fromTable:VVTestTable nativeWhere:@"mobile > '18000000000'"];
    NSLog(@"->:\n%@", result);

    result = [self.table getOneObjectNativeWhere:@"mobile > '18000000000'"];
    NSLog(@"->:\n%@", result);

    result = [self.table getObjectsNativeWhere:@"mobile > '18000000000' Limit 10"];
    NSLog(@"->:\n%@", result);

    result = [self.table getOneValueOnResult:@"mobile" nativeWhere:@"mobile > '18000000000'"];
    NSLog(@"->:\n%@", result);

    result = [self.table getRowsOnResults:@[@"mobile", @"industry"] nativeWhere:@"mobile > '18000000000' Limit 10"];
    NSLog(@"->:\n%@", result);
}

@end
