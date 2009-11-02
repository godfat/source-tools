
namespace :st do
  desc 'Add magic comment for source encoding for ruby 1.9'
  task :ruby_magic_encoding, :glob, :encoding do |t, args|
    encoding = args[:encoding] || 'utf-8'

    SourceTools.glob(args[:glob]){ |path|
      header = path.readlines.first
      next if header =~ /\A# ?encoding:/
      content = path.read

      puts "Processing #{path}"
      SourceTools.wrap_source( path, content,
        :header => "# encoding: #{encoding}")
    }
  end
end
