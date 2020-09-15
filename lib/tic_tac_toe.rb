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


  def turn_count
    count = 0
    for turn in @board do
      if turn == "X"
        count += 1
      elsif turn == "O"
        count += 1
      end
    end
    return count
  end


  def current_player
     x_turns = 0
     o_turns = 0
    for turns in @board do
      if turns == "X"
        x_turns += 1
      elsif turns == "O"
        o_turns += 1
      end
    end
    if o_turns > x_turns
      return "X"
    elsif x_turns > o_turns
      return "O"
    elsif (x_turns == o_turns) && (over? == false)
      return "X"
      elsif (x_turns == o_turns) && (over? == true)
      return "X"
    else
      return "kacy wtf"
    end
  end


end