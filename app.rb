require 'sinatra/base'

class App < Sinatra::Base
  get '/' do
    'Hello World v3'
  end

  get '/ping' do
    'ok'
  end
end
