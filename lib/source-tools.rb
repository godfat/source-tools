
module SourceTools
  module_function

  def strip file, spaces = '  '
    file.map{ |line| line.gsub("\t", spaces).rstrip }.join("\n") + "\n"
  end

  def each_source_path
    require 'pathname'

    Pathname.getwd.find do |path|
      # skip unreadable, unwritable, .git and .svn directories
      skip_dir = path.directory? && (!path.readable? || !path.writable?)
      Find.prune if skip_dir || %w[.git .svn].include?(path.basename.to_s)

      # skip non-files, zero-sized files, files not matching specific names, or files without the matching extensions
      match = files.include?(path.basename.to_s) || extensions.include?(path.extname[1..-1])
      next unless path.file? && path.size? && match && path.readable? && path.writable?

      yield(path)
    end

  end

  def files
    # files and extensions to process
    %w[ CHANGELOG HISTORY MIT-LICENSE LICENSE README README_FOR_APP
        RUNNING_UNIT_TESTS TODO USAGE INSTALL NOTICE .autotest .gitignore
        Makefile Rakefile capfile ]
  end

  def extensions
    source_codes = %w[ rb rake sake php pl py js sh c cpp cxx h hpp hs ml java cs d y ]
    templates = %w[ haml builder erb eruby rxml rhtml rjs ratom rcsv ]
    markup = %w[ css htm html xml rdf yml yaml ]
    others = %w[ cgi fcgi conf deploy example htc key opts rpdf sql txt vcf log ]

    (source_codes + templates + markup + others)
  end

end
