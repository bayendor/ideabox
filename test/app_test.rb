$:.unshift File.expand_path("./../../lib", __FILE__)

require 'bundler'
Bundler.require

require 'app'
require 'minitest/autorun'

class IdeaBoxAppTest < Minitest::Test
  include Rack::Test::Methods

end
