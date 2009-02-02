
require 'source-tools'

namespace :st do
  namespace :t do
    desc 'create a Rakefile template for bones.'
    SourceTools.task_template('Rakefile', :project){ |args|
      args[:author] = `whoami`.chop
    }

    %w[ .gitignore .gitconfig .vimrc .bashrc .gemrc .config/fish/config.fish ].each{ |path|
      desc "create a common #{File.basename(path)} file"
      SourceTools.task_template(path)
    }

  end
end
