
namespace :st do
  desc 'fix files(644) and directories(755) permission recursively.'
  task :chmod do
    require 'pathname'
    Pathname.getwd.find do |path|
      if path.directory?
        path.chmod(0755)
      else
        path.chmod(0644)
      end
    end

  end
end
