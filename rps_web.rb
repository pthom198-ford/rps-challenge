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

  get '/registered' do
  erb :options
   end

post '/play' do
  @game = Game.new
  @game.player(params[:user_input])
 @userinput = @game.player_choice
 @output = @game.choice
 @result = @game.outcome
 p @userinput
 p @output
 p @result
 erb :result
end

# get '/attack' do
#   @user_name = params[:user_name]
#   erb :attack
# end

  run! if app_file == $0
end
