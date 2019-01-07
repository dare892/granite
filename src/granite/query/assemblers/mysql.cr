# Query runner which finalizes a query and runs it.
# This will likely require adapter specific subclassing :[.
module Granite::Query::Assembler
  class Mysql(Model) < Base(Model)
    def add_parameter(value : Granite::Fields::Type) : String
      @numbered_parameters << value
      "?"
    end
  end
end
