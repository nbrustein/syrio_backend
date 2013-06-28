module Ferret
  #autoload :Base, 'hbase_model/base'
  
end

Dir.glob(File.expand_path("../**/*.rb")).each do |file|
  require file
end

