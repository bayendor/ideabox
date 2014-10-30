$:.unshift File.expand_path("./../../lib", __FILE__)

require 'bundler'
Bundler.require

require 'app'
require 'minitest/autorun'

class IdeaBoxAppTest < Minitest::Test
  include Rack::Test::Methods

  def app
    IdeaBoxApp
  end

  def test_index_lists_all_the_ideas_sorted_by_how_liked_they_are
    IdeaStore.create(title: 'a', rank: '3')
    IdeaStore.create(title: 'b', rank: '1')
    IdeaStore.create(title: 'c', rank: '2')

    get '/'

    last_response.body
  end

  def test_index_has_a_form_to_create_new_ideas
    skip
  end

  def test_a_submitted_form_creates_an_idea
    skip
  end

end
