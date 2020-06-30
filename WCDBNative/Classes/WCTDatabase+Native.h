
#import <WCDB/WCDB.h>

NS_ASSUME_NONNULL_BEGIN

@interface WCTDatabase (Native)

- (BOOL)execute:(NSString *)sql;

/// Get Object
- (id /* WCTObject* */)getOneObjectOfClass:(Class)cls
                                 fromTable:(NSString *)tableName
                               nativeWhere:(NSString *)condition;

/// Get Part Of Object
- (id /* WCTObject* */)getOneObjectOnResults:(NSArray<NSString *> *)resultList
                                   fromTable:(NSString *)tableName
                                 nativeWhere:(NSString *)condition;

/// Get One Row
- (WCTOneRow *)getOneRowOnResults:(NSArray<NSString *> *)resultList
                        fromTable:(NSString *)tableName
                      nativeWhere:(NSString *)condition;

/// Get One Column
- (WCTOneColumn *)getOneColumnOnResult:(NSString *)result
                             fromTable:(NSString *)tableName
                           nativeWhere:(NSString *)condition;

/// Get One Distinct Column
- (WCTOneColumn *)getOneDistinctColumnOnResult:(NSString *)result
                                     fromTable:(NSString *)tableName
                                   nativeWhere:(NSString *)condition;

/// Get One Value
- (id /* WCTValue* */)getOneValueOnResult:(NSString *)result
                                fromTable:(NSString *)tableName
                              nativeWhere:(NSString *)condition;

/// Get One Distinct Value
- (id /* WCTValue* */)getOneDistinctValueOnResult:(NSString *)result
                                        fromTable:(NSString *)tableName
                                      nativeWhere:(NSString *)condition;

/// Get Objects
- (NSArray /* <WCTObject*> */ *)getObjectsOfClass:(Class)cls
                                        fromTable:(NSString *)tableName
                                      nativeWhere:(NSString *)condition;

/// Get Part Of Objects
- (NSArray /* <WCTObject*> */ *)getObjectsOnResults:(NSArray<NSString *> *)resultList
                                          fromTable:(NSString *)tableName
                                        nativeWhere:(NSString *)condition;

/// Get Rows
- (WCTColumnsXRows *)getRowsOnResults:(NSArray<NSString *> *)resultList
                            fromTable:(NSString *)tableName
                          nativeWhere:(NSString *)condition;

@end

@interface WCTTable (Native)

/// Get Object
- (id /* WCTObject* */)getOneObjectNativeWhere:(NSString *)condition;

/// Get Part Of Object
- (id /* WCTObject* */)getOneObjectOnResults:(NSArray<NSString *> *)resultList
                                 nativeWhere:(NSString *)condition;

/// Get One Row
- (WCTOneRow *)getOneRowOnResults:(NSArray<NSString *> *)resultList
                      nativeWhere:(NSString *)condition;

/// Get One Column
- (WCTOneColumn *)getOneColumnOnResult:(NSString *)result
                           nativeWhere:(NSString *)condition;

/// Get One Distinct Column
- (WCTOneColumn *)getOneDistinctColumnOnResult:(NSString *)result
                                   nativeWhere:(NSString *)condition;

/// Get One Value
- (id /* WCTValue* */)getOneValueOnResult:(NSString *)result
                              nativeWhere:(NSString *)condition;

/// Get One Distinct Value
- (id /* WCTValue* */)getOneDistinctValueOnResult:(NSString *)result
                                      nativeWhere:(NSString *)condition;

/// Get Objects
- (NSArray /* <WCTObject*> */ *)getObjectsNativeWhere:(NSString *)condition;

/// Get Part Of Objects
- (NSArray /* <WCTObject*> */ *)getObjectsOnResults:(NSArray<NSString *> *)resultList
                                        nativeWhere:(NSString *)condition;

/// Get Rows
- (WCTColumnsXRows *)getRowsOnResults:(NSArray<NSString *> *)resultList
                          nativeWhere:(NSString *)condition;

@end

NS_ASSUME_NONNULL_END
