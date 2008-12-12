
%w[strip rakefile].each{ |task|
  load "source-tools/tasks/#{task}.rake"
}
