   # 1. Any live cell with fewer than two live neighbours dies, as if by needs caused by underpopulation.
   # 2. Any live cell with more than three live neighbours dies, as if by overcrowding.
   # 3. Any live cell with two or three live neighbours lives, unchanged, to the next generation.
   # 4. Any dead cell with exactly three live neighbours becomes a live cell.

class Game
	class << self 
		attr_accessor :board, :x, :y
	end

	def initialize(x,y)		
		@x = x
		@y = y
		@board = new_board
	end

	def load(presets)
		@board = presets
	end

	def board
		@board
	end	

	def turn
		nb = new_board
		puts @board
		@board.each_with_index do |row, y|	
			row.each_with_index do |state, x|
				puts "row number#{y} cell number #{x}"
				
				nc = check_neighbours(y,x)

				puts "#{state} and #{nc}"
				# rule 4
				if state == 0 && nc == 3
					nb[y][x] = 1
				end	
				# rule 1
				if state == 1 && nc < 2
					nb[y][x] = 0
				end
				# rule 2
				if state == 1 && nc > 3
					nb[y][x] = 0
				end
				# rule 3
				if state == 1 && nc == 2
					nb[y][x] = 1
				end
				# rule 3 b :)
				if state == 1 && nc == 3
					nb[y][x] = 1
				end
				puts "#{nb}"
			end

		end
		puts "#{nb}"
		@board = nb
	end
	
	private

	def new_board
		Array.new(@y) {Array.new(@x, 0)}
	end	

	def check_neighbours(y,x)
		#puts "check neighbours"
		count = 0 
		(-1..1).each do |h|
			(-1..1).each do |v|
				#respect the board
				next if y+v >= @y || y+v < 0   
				next if x+h >= @x || x+h < 0
				next if h == 0 && v == 0
				
				puts "cell:#{y+v}#{x+h}"
			
				if @board[y+v][x+h] == 1		
					count = count + 1 
				end
			end	
		end
		puts "count #{count}"
		count						
	end

end
