$:.unshift File.join(File.dirname(__FILE__),'..','lib')

require 'test/unit'
require 'goodies/lang/hash'

module GooderCode
  module Goodies
    class HashExtensions < Test::Unit::TestCase

      def test_hash_as_object

        a_hash = { :name => 'Kerry Wilson', :domain => 'http://www.goodercode.com' }

        assert_equal( a_hash[:name], a_hash.name )
        assert_equal( a_hash[:domain], a_hash.domain )

        assert_raise NoMethodError do
          a_hash.first_name
        end

      end

    end
  end
end