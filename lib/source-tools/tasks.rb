
%w[strip rakefile chmod].each{ |task|
  load "source-tools/tasks/#{task}.rake"
}
