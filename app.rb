require 'sinatra/base'

class App < Sinatra::Base
  get '/' do
    'Hello World v2'
  end
end
