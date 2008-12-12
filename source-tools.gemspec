
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{source-tools}
  s.version = "0.5.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Lin Jen-Shin (a.k.a. godfat \347\234\237\345\270\270)"]
  s.date = %q{2008-12-12}
  s.default_executable = %q{source-tools}
  s.description = %q{}
  s.email = %q{godfat (XD) godfat.org}
  s.executables = ["source-tools"]
  s.extra_rdoc_files = ["CHANGES", "README", "bin/source-tools", "lib/source-tools/bin.rake", "lib/source-tools/default.rake", "lib/source-tools/tasks/rakefile.rake", "lib/source-tools/tasks/strip.rake", "source-tools.gemspec"]
  s.files = ["CHANGES", "Manifest", "README", "Rakefile", "bin/source-tools", "lib/source-tools.rb", "lib/source-tools/bin.rake", "lib/source-tools/default.rake", "lib/source-tools/tasks.rb", "lib/source-tools/tasks/rakefile.rake", "lib/source-tools/tasks/strip.rake", "lib/source-tools/templates/Rakefile.erb", "lib/source-tools/version.rb", "source-tools.gemspec", "tasks/ann.rake", "tasks/bones.rake", "tasks/gem.rake", "tasks/git.rake", "tasks/manifest.rake", "tasks/notes.rake", "tasks/post_load.rake", "tasks/rdoc.rake", "tasks/rubyforge.rake", "tasks/setup.rb", "tasks/spec.rake", "tasks/svn.rake", "tasks/test.rake"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/godfat/source-tools}
  s.rdoc_options = ["--diagram", "--charset=utf-8", "--inline-source", "--line-numbers", "--promiscuous", "--main", "README"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{ludy}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bones>, [">= 2.1.0"])
    else
      s.add_dependency(%q<bones>, [">= 2.1.0"])
    end
  else
    s.add_dependency(%q<bones>, [">= 2.1.0"])
  end
end
