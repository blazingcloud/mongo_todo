# This will guess the User class
FactoryGirl.define do
  factory :ledger_entry do
    sequence :name do |n|
      "Note: #{n}"
    end
    
    description "This is a note with some content"
    due Time.now
  end
end