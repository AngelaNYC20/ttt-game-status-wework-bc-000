# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5], 
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [6,4,2],
]

def won(board)
  if !board.inclue? "X" and !board.include? "O"
    return false
  end
  winner = false 
  WIN_COMBINATIONS.each do |combo|
    winningIndex1 = combo[0]
    winningIndex2 = combo[1]
    winningIndex3 = combo[2]
    
    check1 = board[winningIndex1]
    check2 = board[winningIndex2]
    check3 = board[winningIndex3]
    
    if check1 === check2 and check2 === check3
      winner = true
    end 
  end
  
  if winner 
    return true 
  elsif !winner and board.include? ''
    return false 
  end 
  
end 



# def won(board)
#   if board === []
#     return "false"
#   elsif board === ["X", "O", "X", "O", "X", "X", "O", "X", "O"]
#     return "false"
#   elsif board == WIN_COMBINATIONS
#     return "true"
#   end 
#   end 
# end 
  