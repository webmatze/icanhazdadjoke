require "rake/testtask"
require "bundler/gem_tasks"

Rake::TestTask.new do |t|
  t.libs << "test"
  t.test_files = FileList['test/test_*.rb']
  t.verbose = true
end

task default: :test
