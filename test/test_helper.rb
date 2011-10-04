ENV["RAILS_ENV"] = "test"
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'factories'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.(yml|csv) for all tests in alphabetical order.
  #
  # Note: You'll currently still have to declare fixtures explicitly in integration tests
  # -- they do not yet inherit this setting

  # NOTE: cannot use this method of fixture generation with MongoDB, let's use factory_girl instead
  #fixtures :all

  # Add more helper methods to be used by all tests here...
end
