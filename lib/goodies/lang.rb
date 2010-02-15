Dir[File.join(File.dirname(__FILE__),'lang','*.rb')].each do |file|
  require file
end