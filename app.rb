# app.rb
set :haml, :format => :html5
 

get "/" do
	game = Game.new(5,5)
	board = game.board
 	haml :index, :locals => {:board => board}
end

post "/turn" do
	board = params[:board]
	game = Game.new(5,5)
	game.load(board)
	turn = game.turn
	haml :index, :locals => {:board => turn}
end
