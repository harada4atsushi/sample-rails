namespace :batch_scaffold do
  desc ''
  task plan: :environment do
    puts scafflold_commands
  end

  desc ''
  task run: :environment do
    scafflold_commands.each do |scafflold_command|
      puts scafflold_command
      puts `#{scafflold_command}`
    end
  end

  desc ''
  task destroy: :environment do
    scafflold_commands.each do |scafflold_command|
      scaffold_destroy_command = scafflold_command.gsub('rails g scaffold', 'rails destroy scaffold')
      puts scaffold_destroy_command
      puts `#{scaffold_destroy_command}`
    end
  end

  desc ''
  task create: :environment do
    ControllerGenerator.new.create_controller_files
  end

  def scafflold_commands
    yml = YAML.load_file("#{Rails.root}/config/batch_scaffold.yml").with_indifferent_access
    resources = yml[:resources]
    hash = {}

    resources.map do |resource, fields|
      scaffold_fields = fields.map do |field, options|
        if options.is_a?(Hash)
          "#{field}:#{options[:type]}"
        else
          "#{field}:#{options}"
        end
      end
      "rails g scaffold #{resource} #{scaffold_fields.join(' ')}"
    end
  end
end
