require "spec_helper"

# valdiates a 9 cell game if a square. 
# TODO test an rectagle game instead of a square.
# TODO maybe test the actual rules. 
describe Game do 

	before(:each) do
		@game=Game.new(3,3)
	end	

	it "should have 3 rows and 3 columns" do
		@game.board.should eq([[0, 0, 0], [0, 0, 0], [0, 0, 0]])
	end

	it "should have 3 neighbors become 4" do
		@game.load([[0, 1, 0], [0, 1, 1], [0, 0, 0]])
		@game.turn.should eq([[0, 1, 1], [0, 1, 1], [0, 0, 0]])
	end	

	it "should have 4 neighbors should stay 4" do
		@game.load([[0, 1, 1], [0, 1, 1], [0, 0, 0]])
		@game.turn.should eq([[0, 1, 1], [0, 1, 1], [0, 0, 0]])
	end	
			
	it "should have 5 cells should change" do
		@game.load([[0, 1, 1], [0, 1, 1], [0, 1, 0]])
		@game.turn.should eq([[0, 1, 1], [1, 0, 0], [0, 1, 1]])
	end	

end	