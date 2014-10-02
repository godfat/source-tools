
task :default do
  Rake.application.options.show_task_pattern = /./
  Rake.application.options.show_tasks = :tasks
  Rake.application.display_tasks_and_comments
end
