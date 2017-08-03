require 'sinatra/base'

class App < Sinatra::Base
  get '/' do
    'Hello World v1'
  end
end
