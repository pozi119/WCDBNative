
#include "wcdb_statement_sql.hpp"

namespace WCDB {
StatementSQL::StatementSQL(const char *value)
{
    m_description = value;
}

StatementSQL::StatementSQL(const std::string &value)
{
    m_description = value;
}

Statement::Type StatementSQL::getStatementType() const
{
    return Statement::Type::None;
}
} //namespace WCDB
