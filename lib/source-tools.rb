
module SourceTools
  module_function

  def strip file, spaces = '  '
    strip_utf8_bom(
      file.map{ |line| line.gsub("\t", spaces).rstrip }.join("\n") + "\n"
    )
  end

  def strip_utf8_bom str
    str[0..2] == "\xEF\xBB\xBF" ? str[3..-1] : str
  end

  def generate path, args = [], task_args = nil, &block
    require 'fileutils'

    args.each{ |arg|
      if task_args[arg].nil?
        puts 'please fill your arguments like:'
        puts "  > source-tools st:t:#{File.basename(path)}[#{args.join(', ').upcase}]"
        exit(1)
      end
    }

    if File.exist?(path)
      puts "#{path} exists."
      exit(1)
    end

    FileUtils.mkdir_p(File.dirname(path))
    File.open(path, 'w'){ |file|
      require 'erb'
      args = task_args.to_hash
      block.call(args) if block_given?

      directory = "#{File.dirname(__FILE__)}/source-tools/templates/"
      template  = "t#{path}.erb"

      file << ERB.new(File.read(directory + template)).result(binding)
    }

    puts "#{path} generated."
  end

  def task_template path, *args, &block
    task(*args.dup.unshift(File.basename(path))) do |t, task_args|
      SourceTools.generate(path, args, task_args, &block)
    end
  end

  def each_source_path
    require 'pathname'

    Pathname.getwd.find{ |path|
      # skip unreadable, unwritable, .git and .svn directories
      skip_dir = path.directory? && (!path.readable? || !path.writable?)
      Find.prune if skip_dir || %w[.git .svn].include?(path.basename.to_s)

      # skip non-files, zero-sized files, files not matching specific names, or files without the matching extensions
      match = files.include?(path.basename.to_s) || extensions.include?(path.extname[1..-1])
      next unless path.file? && path.size? && match && path.readable? && path.writable?

      yield(path)
    }

  end

  def files
    # files and extensions to process
    %w[ CHANGELOG HISTORY MIT-LICENSE LICENSE README README_FOR_APP
        RUNNING_UNIT_TESTS TODO USAGE INSTALL NOTICE .autotest .gitignore
        Makefile Rakefile capfile ]
  end

  def extensions
    source_codes = %w[ rb ru rake sake php pl py js sh c cpp cxx h hpp hs ml java cs d y as ]
    templates = %w[ haml builder erb eruby rxml rhtml rjs ratom rcsv ]
    markup = %w[ css htm html xml rdf yml yaml ]
    others = %w[ cgi fcgi conf deploy example htc key opts rpdf sql txt vcf log ]

    (source_codes + templates + markup + others)
  end

  def glob glob_str
    if glob_str.nil?
      puts 'Please provide a glob to indicate which files you want to append the comment'
      exit(1)
    end

    require 'pathname'
    Pathname.glob(glob_str).each{ |path|
      next unless path.writable? && !path.directory?
      yield(path)
    }
  end

  def wrap_source path, content, args = {}
    path.open('w'){ |f|
      f.puts(args[:header]) if args[:header]
      f.print(content)
      f.puts(args[:footer]) if args[:footer]
    }
  end

end
