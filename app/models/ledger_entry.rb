class LedgerEntry
  include Mongoid::Document
  field :name, :type => String
  field :description, :type => String
  field :due, :type => Time
end
