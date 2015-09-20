require 'rails/generators/rails/scaffold/scaffold_generator'
#require File.join(File.dirname(__FILE__), 'base')
#require File.join(File.dirname(__FILE__), 'scaffold_controller/scaffold_controller_generator')
require File.join(File.dirname(__FILE__), '../active_record/active_record_generator')

module NestedScaffold
  module Generators
    class BatchScaffoldGenerator < Rails::Generators::ScaffoldGenerator
      source_root File.expand_path('../templates', __FILE__)
      # override ModelGenerator
      hook_for :orm, :required => true
    end
  end
end
