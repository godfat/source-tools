
namespace :st do
  desc 'Wrap html with comments at the beginning and the end of file (for tracking partial template on generated html)'
  task :html_wrap, :glob do |t, args|
    SourceTools.glob(args[:glob]){ |path|
      content = path.read
      next if content =~ /\A<!-- begin/

      puts "Processing #{path}"
      SourceTools.wrap_source( path, content,
        :header => "<!-- begin #{path} -->",
        :footer => "<!--   end #{path} -->")
    }
  end
end
