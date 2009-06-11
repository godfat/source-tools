
namespace :st do
  desc 'Append a html comment at the end of file (for tracking partial template on generated html)'
  task :html_eof, :glob do |t, args|
    raise ArgumentError.new('Please provide a glob to indicate which files you want to append the comment') unless args[:glob]
    require 'pathname'

    Pathname.glob(args[:glob]).each{ |path|
      next unless path.writable? && !path.directory?

      path.open('a'){ |f|
        puts "Processing #{path}"
        f.puts "<!-- #{path} -->"
      }
    }

  end
end
