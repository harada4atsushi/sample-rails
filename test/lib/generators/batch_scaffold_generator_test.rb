require 'test_helper'
require 'generators/batch_scaffold/batch_scaffold_generator'

class BatchScaffoldGeneratorTest < Rails::Generators::TestCase
  tests BatchScaffoldGenerator
  destination Rails.root.join('tmp/generators')
  setup :prepare_destination

  # test "generator runs without errors" do
  #   assert_nothing_raised do
  #     run_generator ["arguments"]
  #   end
  # end
end
