require 'rspec/core/rake_task'

task :default => %i(spec)

RSpec::Core::RakeTask.new(:spec)

task :run do
  %x[rackup]
end

task :daemon do
  %x[rackup -D]
end