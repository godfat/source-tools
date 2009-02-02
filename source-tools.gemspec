
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{source-tools}
  s.version = "0.5.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Lin Jen-Shin (a.k.a. godfat \347\234\237\345\270\270)"]
  s.date = %q{2009-02-02}
  s.default_executable = %q{source-tools}
  s.description = %q{}
  s.email = %q{godfat (XD) godfat.org}
  s.executables = ["source-tools"]
  s.extra_rdoc_files = ["CHANGES", "README", "TODO", "bin/source-tools", "lib/source-tools/templates/t.bashrc.erb", "lib/source-tools/templates/t.config/fish/config.fish.erb", "lib/source-tools/templates/t.gemrc.erb", "lib/source-tools/templates/t.gitconfig.erb", "lib/source-tools/templates/t.gitignore.erb", "lib/source-tools/templates/t.vimrc.erb", "source-tools.gemspec"]
  s.files = ["CHANGES", "README", "Rakefile", "TODO", "bin/source-tools", "lib/source-tools.rb", "lib/source-tools/bin.rb", "lib/source-tools/default.rb", "lib/source-tools/tasks.rb", "lib/source-tools/tasks/chmod.rb", "lib/source-tools/tasks/strip.rb", "lib/source-tools/tasks/template.rb", "lib/source-tools/templates/t.bashrc.erb", "lib/source-tools/templates/t.config/fish/config.fish.erb", "lib/source-tools/templates/t.gemrc.erb", "lib/source-tools/templates/t.gitconfig.erb", "lib/source-tools/templates/t.gitignore.erb", "lib/source-tools/templates/t.vimrc.erb", "lib/source-tools/templates/tRakefile.erb", "lib/source-tools/version.rb", "source-tools.gemspec"]
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
      s.add_development_dependency(%q<bones>, [">= 2.4.0"])
    else
      s.add_dependency(%q<bones>, [">= 2.4.0"])
    end
  else
    s.add_dependency(%q<bones>, [">= 2.4.0"])
  end
end
