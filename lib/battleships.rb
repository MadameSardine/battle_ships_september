require 'sinatra/base'
require_relative 'game'
require_relative 'player'
require_relative 'board'
require_relative 'cell'
require_relative 'water'
require_relative 'ship'

class BattleShips < Sinatra::Base
	set :views, settings.root + '/../views/'
  set :public_folder, settings.root + '/../public/'
  enable :sessions

  GAME = Game.new  
  BOARD1 = Board.new(Cell)
  BOARD2 = Board.new(Cell)
  SHIT = Ship.battleship




  get '/' do
    puts session.inspect
    @player1 = GAME.player1.name unless GAME.player1.nil?
    @player2 = GAME.player2.name unless GAME.player2.nil?
    @name = session[:me]
    erb :index
  end

  get '/new_game' do
  	erb :new_game
  end

  post'/new_player' do
    puts session.inspect
    player = Player.new
    player.name =params[:player_name]
    session[:me] = params[:player_name]
    GAME.add_player(player)
    puts player.inspect
    puts GAME.inspect
    redirect '/'
  end

  get '/grid' do
    BOARD1.place(SHIT, :D5) 
   BOARD1.shoot_at(:A1) 
    BOARD1.shoot_at(:D5)

   
    erb :grid
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

