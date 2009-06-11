
namespace :st do
  desc 'Wrap html with comments at the beginning and the end of file (for tracking partial template on generated html)'
  task :html_wrap, :glob do |t, args|
    if args[:glob].nil?
      puts 'Please provide a glob to indicate which files you want to append the comment'
      exit(1)
    end

    require 'pathname'
    Pathname.glob(args[:glob]).each{ |path|
      next unless path.writable? && !path.directory?

      content = path.read
      next if content =~ /\A<!-- begin/

      path.open('w'){ |f|
        puts "Processing #{path}"
        f.puts "<!-- begin #{path} -->"
        f.print content
        f.puts "<!--   end #{path} -->"
      }
    }

  end
end
