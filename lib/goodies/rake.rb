require 'rake/gempackagetask'

class Rake::GemPackageTask

  def define_intercepted
    define_method_call
    namespace 'gem' do
      desc "Install the gem file #{gem_file}"
      task :install => :gem do
        require 'rubygems/installer'
        Gem::Installer.new(File.join('pkg',gem_file)).install
      end
    end
  end

  alias define_method_call define
  alias define define_intercepted

end