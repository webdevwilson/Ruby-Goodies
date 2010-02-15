spec = Gem::Specification.new do |s|
  s.name = 'goodies'
  s.version = '0.0.1'
  s.has_rdoc = true
  s.extra_rdoc_files = ['README', 'LICENSE']
  s.summary = 'Developer tools to make your life easier'
  s.description = <<DESC
  Developer tools to make your life easier.  As seen on goodercode.com.
DESC
  s.author = 'Kerry R Wilson'
  s.email = 'kwilson@goodercode.com'
  # s.executables = ['your_executable_here']
  s.files = %w(LICENSE README Rakefile) + Dir.glob("{bin,lib,spec}/**/*")
  s.require_path = "lib"
  s.bindir = "bin"
end