$:.unshift File.join(File.dirname(__FILE__),'..','lib')

require 'test/unit'
require 'goodies/lang/string'

module GooderCode
  module Goodies
    class StringExtensions < Test::Unit::TestCase

      def test_overloaded_slash

        assert_equal(File.join('lib','src'), 'lib'/'src')
        assert_equal(File.join('lib','src','main'), 'lib'/'src'/'main')
        assert_equal(File.join('lib','src','main','java'), 'lib'/'src'/'main'/'java')

      end

    end
  end
end
