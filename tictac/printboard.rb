class Player
	attr_accessor :pnum

	def initialize(pnum)
		@pnum = pnum
	end


class TicTacToe
   attr_accessor :board
 
   def initialize()
      @board = [[0,0,0],[0,0,0],[0,0,0]]
   end
end


def printBoard()
		for i in (0..2)
			outStr = "|"
			for j in (0..2)
				if self.board[i][j] == 0
					outStr = outStr + "   |"
				elsif self.board[i][j] == 1
					outStr = outStr + " X |"
				elsif self.board[i][j] == 2
					outStr = outStr + " O |"
				end
			end
			puts "-" * 13
			puts "#{outStr}"
		end
		puts "-" * 13
	end

printBoard()
	
end