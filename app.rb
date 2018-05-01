# my_app.rb
require 'sinatra/base'

class App < Sinatra::Base

  get '/' do
    "Hello Battle!"
  end

  run! if app_file == $0
end
