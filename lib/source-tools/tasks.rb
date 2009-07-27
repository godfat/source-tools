
%w[strip template chmod html_wrap ruby_magic_encoding].each{ |task|
  require "source-tools/tasks/#{task}"
}
