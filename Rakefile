require 'rspec/core/rake_task'

task :default => %i(spec)

RSpec::Core::RakeTask.new(:spec)

task :run do
  %x[rackup -o 0.0.0.0]
end

task :daemon do
  %x[rackup -D -o 0.0.0.0]
end