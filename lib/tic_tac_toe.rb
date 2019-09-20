require'pry'

class TicTacToe
  

WIN_COMBINATIONS =[[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[6,4,2]]
    
    @@player = nil

  def initialize
    @board = [" "," "," "," "," "," "," "," "," "]
  end  

  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end
   
  
  def input_to_index(move_index_string)
    move_i = move_index_string.to_i 
    move_i -=1
  end   
   
   
  def move(index, token = "X")
     @board[index] = token
  end
  
  def position_taken?(position)
  if @board[position]==(" ") 
      false
    else
      true
    end
  end
  
  def valid_move?(position)
      pos = position_taken?(position)
      if pos && (position >= 0 && position <= 8)
      true
    else
      false
    end
  end


  def turn_count
    count = @board.count(" ") 
    turncount = (9 - count)
  end  


  def current_player
    count = @board.count(" ") 
    turncount = (9 - count)
    if turncount.odd?
      @@player = "O"
    else
      @@player = "X"
    end
  end  
  
  def turn
    puts "Please make your move enter 1-9"
    input = gets
    move_down = input_to_index(input)
   if valid_move?(move_down)
      player = current_player
      move(move_down,player)
      display_board
    else
       turn
    end
  end

 
  
  
end   

