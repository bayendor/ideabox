# require 'sinatra/reloader'

class IdeaBoxApp < Sinatra::Base
  get '/' do
    "<h1>Hello, World!</h1><blockquote>I guess I always felt even if the world came to an end, McDonald's would still be open. <cite>Susan Beth Pfeffer</cite></blockquote>"
  end
end
