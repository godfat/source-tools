
# forked from http://github.com/dkubb/dm-dev

namespace :st do
  desc 'Strip trailing whitespace from source files, also normalize tabs to spaces, and an newline at end of file'
  task :strip, :spaces do |t, args|
    require 'source-tools'
    require 'zlib'

    spaces = ' ' * (args[:spaces] || 2).to_i

    SourceTools.each_source_path{ |path|
      # strat striping unnecessary whitespaces
      result = path.open('r:binary'){ |f| SourceTools.strip(f, spaces) }

      # skip the file if it was not modified
      next if Zlib.crc32(result) == Zlib.crc32(path.read)

      puts "Stripping #{path.relative_path_from(Pathname.new(Dir.pwd))}"
      path.open('w'){ |f| f.write result }
    }

  end
end
