
# forked from http://github.com/dkubb/dm-dev

namespace :st do
  desc 'Strip trailing whitespace from source files, also normalize tabs to spaces, and an newline at end of file'
  task :strip, :spaces do |t, args|
    require 'pathname'
    require 'zlib'

    # files and extensions to process
    files = %w[ CHANGELOG HISTORY MIT-LICENSE LICENSE README README_FOR_APP
                RUNNING_UNIT_TESTS TODO USAGE INSTALL NOTICE .autotest .gitignore
                Makefile Rakefile capfile ].freeze

    extensions = begin
      source_codes = %w[ rb rake sake php pl py js sh c cpp cxx h hpp hs ml java cs d y ]
      templates = %w[ haml builder erb eruby rxml rhtml rjs ratom rcsv ]
      markup = %w[ css htm html xml rdf yml yaml ]
      others = %w[ cgi fcgi conf deploy example htc key opts rpdf sql txt vcf log ]

      (source_codes + templates + markup + others).freeze
    end

    amount = args[:spaces] || 2
    spaces = ' ' * amount.to_i

    Pathname.getwd.find do |path|
      # skip unreadable, unwritable, .git and .svn directories
      skip_dir = path.directory? && (!path.readable? || !path.writable?)
      Find.prune if skip_dir || %w[.git .svn].include?(path.basename.to_s)

      # skip non-files, zero-sized files, files not matching specific names, or files without the matching extensions
      match = files.include?(path.basename.to_s) || extensions.include?(path.extname[1..-1])
      next unless path.file? && path.size? && match

      # strat striping unnecessary whitespaces
      result = path.open('r'){ |f|
        f.map{ |line| line.gsub("\t", spaces).rstrip }.join("\n")
      } + "\n"

      # skip the file if it was not modified
      next if Zlib.crc32(result) == Zlib.crc32(path.read)

      puts "stripping #{path.relative_path_from(Pathname.new(Dir.pwd))}"
      path.open('w'){ |f| f.write result }
    end
  end
end
