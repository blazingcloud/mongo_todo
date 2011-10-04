class LedgerEntry
  include Mongoid::Document

  # Do not need :type => String as this is the default type
  field :name #, :type => String
  field :description #, :type => String
  field :due, :type => Time
end
