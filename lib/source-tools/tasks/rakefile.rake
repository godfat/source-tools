
namespace :st do
  desc 'create a Rakefile template for bones.'
  task :rakefile, :project do |t, args|
    if args[:project].nil?
      puts 'please specify your project name like:'
      puts '  > source-tools st:rakefile project=my_project'
      exit(1)
    end

    if File.exist?('Rakefile')
      puts 'Rakefile exists.'
      exit(1)
    end

    File.open('Rakefile', 'w'){ |file|
      require 'erb'
      project = args[:project]
      author = `whoami`.chop

      file <<
        ERB.new(File.read("#{File.dirname(__FILE__)}/../templates/Rakefile.erb")).
          result(binding)
    }

    puts 'Rakefile generated.'
  end
end
