desc "Setup test database - drops, loads schema, migrates and seeds the test db"
task :test_db_setup => [:pre_reqs] do
  Rails.env = ENV['RAILS_ENV'] = 'test'
  Rake::Task['db:drop'].invoke
  Rake::Task['db:create'].invoke
  result = capture_stdout { Rake::Task['db:schema:load'].invoke }
  File.open(File.join(ENV['CC_BUILD_ARTIFACTS'] || 'log', 'schema-load.log'), 'w') { |f| f.write(result) }
  Rake::Task['db:seed:load'].invoke
  ActiveRecord::Base.establish_connection
  Rake::Task['db:migrate'].invoke
end