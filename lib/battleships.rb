require 'sinatra/base'

class BattleShips < Sinatra::Base
	set :views, settings.root + '/../views/'
  get '/' do
    # 'Hello BattleShips!'
    erb :index
  end

  get '/new_game' do
  	@name = params[:name]
  	erb :new_game
  end

  get '/new_game/player1' do
  	@name = params[:name]
  	erb :new_game_player1
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
