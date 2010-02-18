require 'rubygems'
require 'rake'
require 'rake/clean'
require 'rake/gempackagetask'
require 'rake/rdoctask'
require 'rake/testtask'
require 'spec/rake/spectask'
require 'goodies/rake'

spec = Gem::Specification.new do |s|
  s.name = 'goodies'
  s.version = '0.0.2'
  s.has_rdoc = true
  s.extra_rdoc_files = ['README', 'LICENSE']
  s.summary = 'Developer tools to make your life easier'
  s.description = <<DESC
  Developer tools to make your life easier.  As seen on goodercode.com.
DESC
  s.author = 'Kerry R Wilson'
  s.email = 'kwilson@goodercode.com'
  s.homepage = 'http://www.goodercode.com'
  # s.executables = ['your_executable_here']
  s.files = %w(LICENSE README) + Dir.glob("{bin,lib,spec}/**/*")
  s.require_path = "lib"
  s.bindir = "bin"
end

Rake::GemPackageTask.new(spec) do |p|
  p.gem_spec = spec
  p.need_tar = true
  p.need_zip = true
end

Rake::RDocTask.new do |rdoc|
  files =['README', 'LICENSE', 'lib/**/*.rb']
  rdoc.rdoc_files.add(files)
  rdoc.main = "README" # page to start on
  rdoc.title = "ruby-goodies Docs"
  rdoc.rdoc_dir = 'doc/rdoc' # rdoc output folder
  rdoc.options << '--line-numbers'
end

Rake::TestTask.new do |t|
  t.test_files = FileList['test/**/*.rb']
end

Spec::Rake::SpecTask.new do |t|
  t.spec_files = FileList['spec/**/*.rb']
  t.libs << Dir["lib"]
end

gem_file = "#{spec.name}-#{spec.version}.gem"
#desc "Install the gem file #{gem_file}"
#Rake::Task.define_task :install => :gem do |t|
#  exec "gem install pkg/#{gem_file}"
#end

desc "Push the gem file #{gem_file}"
Rake::Task.define_task :push => :gem do |t|
  exec "gem push pkg/#{gem_file}"
end