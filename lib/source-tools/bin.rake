
require 'rubygems'
require 'rake'

require 'source-tools/tasks'
load 'source-tools/default.rake'

Rake.application.init('source-tools')
Rake.application.top_level
