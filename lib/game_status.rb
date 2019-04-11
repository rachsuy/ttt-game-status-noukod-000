# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end


# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [[0,1,2],  [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8],   [2,4,6]  ] #Bottom row
 #Right start diagonal   # Top row | Middle row |  #Left column |  #Left column |  #Middle |#Left start |  diagonal column |#Right column |   #Left column


board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
#methode which 
def won?(board)
  row_win =[]
  empty_board= board.all{|X| X ==" "}
  WIN_COMBINATIONS.each do |row_win_position|
    if empty_board
      return false
    elsif row_win_position.all? { |value| board[value] =="X" } || row_win_position.all? { |value| board[value] =="O" }
      row_win = row_win_position
    end
    end
  end
  return row_win
end


