require 'rake/testtask'

$LOAD_PATH << './lib'

task default: "test"

Rake::TestTask.new do |task|
  task.libs << './lib'
  task.pattern = 'tests/**/test_*.rb'
  task.verbose = true
end