namespace :db do
  desc "I'm the goddamn Batman"
  task :batman => ["db:drop", "db:create", "db:migrate", "db:seed"]
end