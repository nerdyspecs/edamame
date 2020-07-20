# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative 'config/application'

Rails.application.load_tasks

require 'progress_graph_json'

task :hello_world do
	include ProgressGraphJson
	puts add(1,2)
end