
#import "WCTDatabase+Native.h"
#import "wcdb_statement_sql.hpp"

static inline WCTResultList resultListWithColumns(NSArray<NSString *> *columns)
{
    WCTResultList list = WCTResultList();
    for (NSString *column in columns) {
        list.push_back(WCTResult(WCTProperty(column)));
    }
    return list;
}

@implementation WCTDatabase (Native)

- (BOOL)execute:(NSString *)sql
{
    return [self exec:WCDB::StatementSQL(sql.UTF8String)];
}

- (id /* WCTObject* */)getOneObjectOfClass:(Class)cls
                                 fromTable:(NSString *)tableName
                               nativeWhere:(NSString *)condition
{
    return [self getOneObjectOfClass:cls fromTable:tableName where:WCTProperty(condition)];
}

- (id /* WCTObject* */)getOneObjectOnResults:(NSArray<NSString *> *)resultList
                                   fromTable:(NSString *)tableName
                                 nativeWhere:(NSString *)condition
{
    WCTResultList list = resultListWithColumns(resultList);
    return [self getOneObjectOnResults:list fromTable:tableName];
}

- (WCTOneRow *)getOneRowOnResults:(NSArray<NSString *> *)resultList
                        fromTable:(NSString *)tableName
                      nativeWhere:(NSString *)condition
{
    WCTResultList list = resultListWithColumns(resultList);
    return [self getOneRowOnResults:list fromTable:tableName where:WCTProperty(condition)];
}

- (WCTOneColumn *)getOneColumnOnResult:(NSString *)result
                             fromTable:(NSString *)tableName
                           nativeWhere:(NSString *)condition
{
    return [self getOneColumnOnResult:WCTResult(WCTProperty(result)) fromTable:tableName where:WCTProperty(condition)];
}

- (WCTOneColumn *)getOneDistinctColumnOnResult:(NSString *)result
                                     fromTable:(NSString *)tableName
                                   nativeWhere:(NSString *)condition
{
    return [self getOneDistinctColumnOnResult:WCTResult(WCTProperty(result)) fromTable:tableName where:WCTProperty(condition)];
}

- (id /* WCTValue* */)getOneValueOnResult:(NSString *)result
                                fromTable:(NSString *)tableName
                              nativeWhere:(NSString *)condition
{
    return [self getOneValueOnResult:WCTResult(WCTProperty(result)) fromTable:tableName where:WCTProperty(condition)];
}

- (id /* WCTValue* */)getOneDistinctValueOnResult:(NSString *)result
                                        fromTable:(NSString *)tableName
                                      nativeWhere:(NSString *)condition
{
    return [self getOneDistinctValueOnResult:WCTResult(WCTProperty(result)) fromTable:tableName where:WCTProperty(condition)];
}

- (NSArray /* <WCTObject*> */ *)getObjectsOfClass:(Class)cls
                                        fromTable:(NSString *)tableName
                                      nativeWhere:(NSString *)condition
{
    return [self getObjectsOfClass:cls fromTable:tableName where:WCTProperty(condition)];
}

- (NSArray /* <WCTObject*> */ *)getObjectsOnResults:(NSArray<NSString *> *)resultList
                                          fromTable:(NSString *)tableName
                                        nativeWhere:(NSString *)condition
{
    WCTResultList list = resultListWithColumns(resultList);
    return [self getObjectsOnResults:list fromTable:tableName where:WCTProperty(condition)];
}

- (WCTColumnsXRows *)getRowsOnResults:(NSArray<NSString *> *)resultList
                            fromTable:(NSString *)tableName
                          nativeWhere:(NSString *)condition
{
    WCTResultList list = resultListWithColumns(resultList);
    return [self getRowsOnResults:list fromTable:tableName where:WCTProperty(condition)];
}

@end

@implementation WCTTable (Native)

- (id /* WCTObject* */)getOneObjectNativeWhere:(NSString *)condition
{
    return [self getOneObjectWhere:WCTProperty(condition)];
}

- (id /* WCTObject* */)getOneObjectOnResults:(NSArray<NSString *> *)resultList
                                 nativeWhere:(NSString *)condition
{
    WCTResultList list = resultListWithColumns(resultList);
    return [self getOneObjectOnResults:list where:WCTProperty(condition)];
}

- (WCTOneRow *)getOneRowOnResults:(NSArray<NSString *> *)resultList
                      nativeWhere:(NSString *)condition
{
    WCTResultList list = resultListWithColumns(resultList);
    return [self getOneRowOnResults:list where:WCTProperty(condition)];
}

- (WCTOneColumn *)getOneColumnOnResult:(NSString *)result
                           nativeWhere:(NSString *)condition
{
    return [self getOneColumnOnResult:WCTResult(WCTProperty(result)) where:WCTProperty(condition)];
}

- (WCTOneColumn *)getOneDistinctColumnOnResult:(NSString *)result
                                   nativeWhere:(NSString *)condition
{
    return [self getOneDistinctColumnOnResult:WCTResult(WCTProperty(result)) where:WCTProperty(condition)];
}

- (id /* WCTValue* */)getOneValueOnResult:(NSString *)result
                              nativeWhere:(NSString *)condition
{
    return [self getOneValueOnResult:WCTResult(WCTProperty(result)) where:WCTProperty(condition)];
}

- (id /* WCTValue* */)getOneDistinctValueOnResult:(NSString *)result
                                      nativeWhere:(NSString *)condition
{
    return [self getOneDistinctValueOnResult:WCTResult(WCTProperty(result)) where:WCTProperty(condition)];
}

- (NSArray /* <WCTObject*> */ *)getObjectsNativeWhere:(NSString *)condition
{
    return [self getObjectsWhere:WCTProperty(condition)];
}

- (NSArray /* <WCTObject*> */ *)getObjectsOnResults:(NSArray<NSString *> *)resultList
                                        nativeWhere:(NSString *)condition
{
    WCTResultList list = resultListWithColumns(resultList);
    return [self getObjectsOnResults:list where:WCTProperty(condition)];
}

- (WCTColumnsXRows *)getRowsOnResults:(NSArray<NSString *> *)resultList
                          nativeWhere:(NSString *)condition
{
    WCTResultList list = resultListWithColumns(resultList);
    return [self getRowsOnResults:list where:WCTProperty(condition)];
}

@end
