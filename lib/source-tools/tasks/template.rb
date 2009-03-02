
require 'source-tools'

namespace :st do
  namespace :t do
    desc 'create a Rakefile template for bones.'
    SourceTools.task_template('Rakefile', :project){ |args|
      args[:author] = `whoami`.chop
    }

    desc 'create a common .gitconfig file'
    SourceTools.task_template('.gitconfig', :project)

    desc 'create a user gem only .gemrc file'
    SourceTools.task_template('.gemrc', :project)

    %w[ .gitignore .vimrc .bashrc .config/fish/config.fish ].each{ |path|
      desc "create a common #{File.basename(path)} file"
      SourceTools.task_template(path)
    }

  end
end
