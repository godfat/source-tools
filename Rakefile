
begin
  require "#{dir = File.dirname(__FILE__)}/task/gemgem"
rescue LoadError
  sh 'git submodule update --init'
  exec Gem.ruby, '-S', $PROGRAM_NAME, *ARGV
end

Gemgem.init(dir) do |s|
  require 'source-tools/version'
  s.name    = 'source-tools'
  s.version = SourceTools::VERSION
  s.add_runtime_dependency('rake', '>= 10')
end
