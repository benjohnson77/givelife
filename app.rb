# app.rb
set :haml, :format => :html5
 

get "/" do
	game = Game.new(5,5)
	board = game.board
 	haml :index, :locals => {:board => board}
end

post "/turn" do
	board = params[:board]
	board = JSON.parse(board) 
	game = Game.new(5,5)
	game.load(board)
	turn = game.turn
	haml :index, :locals => {:board => turn}
end

get "/memory" do
	#board will be mod x mod and will be a square
	symbols = ['fa-facebook-square','fa-fast-backward','fa-fast-forward','fa-female','fa-fighter-jet','fa-file','fa-file-o','fa-file-text','fa-file-text-o','fa-files-o','fa-film','fa-filter','fa-fire','fa-fire-extinguisher','fa-flag','fa-flag-checkered','fa-flag-o','fa-flask','fa-flickr','fa-floppy-o']
	haml :memory, :locals => {:symbols => symbols, :mod => 5}	
end 



