require 'sinatra/base'

class RpsWeb < Sinatra::Base

  run! if app_file == $0
end
