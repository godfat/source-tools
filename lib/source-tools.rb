
module SourceTools
  module_function
  def strip file, spaces = '  '
    file.map{ |line| line.gsub("\t", spaces).rstrip }.join("\n") + "\n"
  end
end
