Dir[File.join(File.dirname(__FILE__),'goodies','*.rb')].each do |file|
  require file
end