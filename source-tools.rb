
module SourceTools
  module_function
  def strip file, spaces = 2
    file.map{ |line| line.gsub("\t", spaces).rstrip }.join("\n") + "\n"
  end
end
