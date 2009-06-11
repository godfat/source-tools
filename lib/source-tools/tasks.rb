
%w[strip template chmod html_eof].each{ |task|
  require "source-tools/tasks/#{task}"
}
