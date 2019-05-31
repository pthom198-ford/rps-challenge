require 'sinatra/base'

class RpsWeb < Sinatra::Base

get '/' do
  'up and running!'
end


  run! if app_file == $0
end
