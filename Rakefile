# encoding: utf-8

require 'bones'
Bones.setup

PROJ.name = 'source-tools'
PROJ.authors = 'Lin Jen-Shin (a.k.a. godfat 真常)'
PROJ.email = 'godfat (XD) godfat.org'
PROJ.url = 'http://github.com/godfat/source-tools'
PROJ.rubyforge.name = 'ludy'

# begin workaround
# PROJ.include << 'lib/.+'
PROJ.gem.files = manifest + 'lib/source-tools/templates/t.git/hooks/post-receive'
# end   workaround

# PROJ.gem.dependencies << ['source-tools', '>=0.5.0']
# PROJ.gem.development_dependencies << ['minitest', '>=1.3.0']
PROJ.gem.executables = ["bin/#{PROJ.name}"]

# PROJ.ruby_opts.delete '-w'

PROJ.description = PROJ.summary = paragraphs_of('README', 'description').join("\n\n")
PROJ.changes = paragraphs_of('CHANGES', 0..1).join("\n\n")
PROJ.version = File.read("lib/#{PROJ.name}/version.rb").gsub(/.*VERSION = '(.*)'.*/m, '\1')

PROJ.exclude += ['^tmp', 'tmp$', '^pkg', '^\.gitignore$',
                 '^ann-', '\.sqlite3$', '\.db$']

PROJ.rdoc.remote_dir = PROJ.name

PROJ.readme_file = 'README'
PROJ.rdoc.main = 'README'
PROJ.rdoc.exclude += ['Rakefile', '^tasks', '^test']
PROJ.rdoc.include << '\w+'
# PROJ.rdoc.opts << '--diagram' if !Rake::Win32 and `which dot` =~ %r/\/dot/
PROJ.rdoc.opts += ['--charset=utf-8', '--inline-source',
                   '--line-numbers', '--promiscuous']

PROJ.spec.opts << '--color'

PROJ.ann.file = "ann-#{PROJ.name}-#{PROJ.version}"
PROJ.ann.paragraphs.concat %w[LINKS SYNOPSIS REQUIREMENTS INSTALL LICENSE]

CLEAN.include Dir['**/*.rbc']

task :default do
  Rake.application.options.show_task_pattern = /./
  Rake.application.display_tasks_and_comments
end
