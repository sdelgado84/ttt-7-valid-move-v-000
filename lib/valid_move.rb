# code your #valid_move? method here
def valid_move?(board, index)
  index.between?(0,8) && position_taken?(board, index)
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def turn(board)
  puts "Please enter 1-9:"
  UserInput = gets.strip
  index = input_to_index (userInput)
  if !valid_move?(board, index)
    turn(board)
  else
    move(board, index, current_player(board))
  end
  display_board(board)
end
