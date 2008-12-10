
# forked from http://github.com/dkubb/dm-dev

namespace :st do
  desc 'Strip trailing whitespace from source files, also normalize tabs to spaces, and an newline at end of file'
  task :strip, :spaces do |t, args|
    require("pathname")
    require("zlib")

    files = ["capfile", "CHANGELOG", "MIT-LICENSE", "README", "README_FOR_APP", "RUNNING_UNIT_TESTS", "Rakefile", "TODO", "USAGE", ".autotest", ".gitignore"].freeze

    extensions = ["builder", "cgi", "conf", "css", "deploy", "erb", "example", "fcgi", "haml", "htc", "htm", "html", "js", "key", "opts", "php", "rake", "ratom", "rb", "rcsv", "rdf", "rhtml", "rjs", "rpdf", "rxml", "sake", "sass", "sh", "sql", "txt", "vcf", "xml", "yml"].freeze

    amount = args[:spaces] || 2
    spaces = ' ' * amount.to_i

    Pathname.getwd.find do |path|
      if ((path.directory? and ((not path.readable?) or (not path.writable?))) or [".git", ".svn"].include?(path.basename.to_s)) then
        Find.prune
      end

      unless (path.file? and (path.size? and (files.include?(path.basename.to_s) or extensions.include?(path.extname[(1..-1)])))) then
        next
      end

      document = (path.open("r") do |f|
        f.collect { |line| line.gsub("\t", spaces).rstrip + "\n" }.join.rstrip
      end + "\n")

      next if (Zlib.crc32(document) == Zlib.crc32(path.read))

      puts("Stripping whitepsace from #{path}")
      path.open("w") { |f| f.write(document) }
    end
  end
end
