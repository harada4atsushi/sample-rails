require 'test_helper'
require 'generators/batch_migration/batch_migration_generator'

class BatchMigrationGeneratorTest < Rails::Generators::TestCase
  tests BatchMigrationGenerator
  destination Rails.root.join('tmp/generators')
  setup :prepare_destination

  # test "generator runs without errors" do
  #   assert_nothing_raised do
  #     run_generator ["arguments"]
  #   end
  # end
end
