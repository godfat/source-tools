
%w[strip template chmod].each{ |task|
  require "source-tools/tasks/#{task}"
}
