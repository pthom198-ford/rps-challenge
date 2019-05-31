require 'sinatra/base'

class RpsWeb < Sinatra::Base

get '/' do
  erb :form
end


post '/registered' do
  @user_name = params[:user_name]
  p params
  erb :register
  end

  run! if app_file == $0
end
