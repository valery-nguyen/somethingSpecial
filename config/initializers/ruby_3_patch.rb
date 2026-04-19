require 'active_record/connection_adapters/postgresql_adapter'

module PostgreSQLAdapterRuby3Fix
  # This fixes the ArgumentError/Position mismatch in create_table_definition
  def create_table_definition(name, temporary = false, options = nil, as = nil, comment: nil)
    ActiveRecord::ConnectionAdapters::PostgreSQL::TableDefinition.new(
      native_database_types,
      name,
      temporary,
      options,
      as,
      comment: comment
    )
  end
end

ActiveRecord::ConnectionAdapters::PostgreSQLAdapter.prepend(PostgreSQLAdapterRuby3Fix)

module TableDefinitionRuby3Fix
  # This fixes the column creation where options are passed as a hash
  def new_column_definition(name, type, **options)
    super(name, type, **options)
  end
end

ActiveRecord::ConnectionAdapters::PostgreSQL::TableDefinition.prepend(TableDefinitionRuby3Fix)