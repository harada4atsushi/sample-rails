require 'test_helper'
require 'generators/active_record/active_record_generator'

class ActiveRecordGeneratorTest < Rails::Generators::TestCase
  tests ActiveRecordGenerator
  destination Rails.root.join('tmp/generators')
  setup :prepare_destination

  # test "generator runs without errors" do
  #   assert_nothing_raised do
  #     run_generator ["arguments"]
  #   end
  # end
end
