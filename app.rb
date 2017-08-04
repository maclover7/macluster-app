require 'sinatra/base'

class App < Sinatra::Base
  get '/' do
    'Hello World v3'
  end
end
