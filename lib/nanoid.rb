unless defined?(Motion::Project::Config)
  raise "This file must be required within a RubyMotion project Rakefile."
end

require "motion_support/all"

Motion::Project::App.setup do |app|
  Dir.glob(File.join(File.dirname(__FILE__), "nanoid/**/*.rb")).each do |file|
    app.files.unshift(file)
  end
end
