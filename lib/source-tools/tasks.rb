
%w[strip template chmod html_wrap].each{ |task|
  require "source-tools/tasks/#{task}"
}
