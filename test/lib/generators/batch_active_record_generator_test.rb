require 'test_helper'
require 'generators/batch_active_record/batch_active_record_generator'

class BatchActiveRecordGeneratorTest < Rails::Generators::TestCase
  tests BatchActiveRecordGenerator
  destination Rails.root.join('tmp/generators')
  setup :prepare_destination

  # test "generator runs without errors" do
  #   assert_nothing_raised do
  #     run_generator ["arguments"]
  #   end
  # end
end
