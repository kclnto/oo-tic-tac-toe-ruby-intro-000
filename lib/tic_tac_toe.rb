class TicTacToe
  
  
  WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,4,8],
  [2,4,6],
  [0,3,6],
  [1,4,7],
  [2,5,8]
  ]
  
  
  def initialize
    @board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  end
  

  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end
  
  
  def input_to_index(input)
    input = input.to_i
    input = input -1
    index = input
    return index
  end


  def move (index, token = "X")
    @board[index] = token
  end


  def position_taken? (index)
    if (@board[index] == " ") || (@board[index] == nil)
      return false
    elsif (@board[index] == "")
      return false
    else
      return true
    end
  end
  

  def valid_move?(index)
    if index.between?(0, 8)
      if (position_taken?(index) == true)
        return false
      else
        return true
      end
    else
      return false
    end
  end


  def turn
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
    token = current_player(board)
    if (valid_move?(index) == true)
      move(index, token)
      display_board
    else
      turn
    end
  end


  def turn_count(board)
    count = 0
    for turn in board do
      if turn == "X"
        count += 1
      elsif turn == "O"
        count += 1
      end
    end
    return count
  end
end