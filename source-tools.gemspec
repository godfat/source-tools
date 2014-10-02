# -*- encoding: utf-8 -*-
# stub: source-tools 0.6.1 ruby lib

Gem::Specification.new do |s|
  s.name = "source-tools"
  s.version = "0.6.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Lin Jen-Shin (godfat)"]
  s.date = "2014-10-03"
  s.description = " source code tools collection"
  s.email = ["godfat (XD) godfat.org"]
  s.executables = ["source-tools"]
  s.files = [
  ".gitignore",
  ".gitmodules",
  "CHANGES.md",
  "README.md",
  "Rakefile",
  "TODO.md",
  "bin/source-tools",
  "lib/source-tools.rb",
  "lib/source-tools/bin.rb",
  "lib/source-tools/default.rb",
  "lib/source-tools/tasks.rb",
  "lib/source-tools/tasks/chmod.rb",
  "lib/source-tools/tasks/html_wrap.rb",
  "lib/source-tools/tasks/ruby_magic_encoding.rb",
  "lib/source-tools/tasks/strip.rb",
  "lib/source-tools/tasks/template.rb",
  "lib/source-tools/templates/t.config/fish/config.fish.erb",
  "lib/source-tools/templates/t.gemrc.erb",
  "lib/source-tools/templates/t.git/hooks/post-receive.erb",
  "lib/source-tools/templates/t.gitconfig.erb",
  "lib/source-tools/templates/t.gitignore.erb",
  "lib/source-tools/templates/t.profile.erb",
  "lib/source-tools/templates/t.screenrc.erb",
  "lib/source-tools/templates/t.vimrc.erb",
  "lib/source-tools/templates/tRakefile.erb",
  "lib/source-tools/templates/tconfig/mime.types.erb",
  "lib/source-tools/templates/tconfig/nginx.conf.erb",
  "lib/source-tools/templates/tnginx-for-unicorn.conf.erb",
  "lib/source-tools/version.rb",
  "source-tools.gemspec",
  "task/README.md",
  "task/gemgem.rb"]
  s.homepage = "https://github.com/godfat/source-tools"
  s.licenses = ["Apache License 2.0"]
  s.rubygems_version = "2.4.2"
  s.summary = "source code tools collection"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rake>, [">= 10"])
    else
      s.add_dependency(%q<rake>, [">= 10"])
    end
  else
    s.add_dependency(%q<rake>, [">= 10"])
  end
end
