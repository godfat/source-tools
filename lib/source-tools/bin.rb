
require 'rake'
include Rake::DSL
Rake::TaskManager.record_task_metadata = true

require 'source-tools/tasks'
require 'source-tools/default'

Rake.application.init('source-tools')
Rake.application.top_level
