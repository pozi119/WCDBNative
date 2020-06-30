
#ifndef wcdb_statement_sql_hpp
#define wcdb_statement_sql_hpp

#include <WCDB/declare.hpp>
#include <WCDB/statement.hpp>

namespace WCDB {
    class StatementSQL: public Statement {
public:
        StatementSQL(const char *value);

        StatementSQL(const std::string &value);

        virtual Statement::Type getStatementType() const override;
    };
} //namespace WCDB

#endif /* wcdb_statement_sql_hpp */
