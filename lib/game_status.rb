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

def #won()
  if board = []
    return "false"
  elsif board = ["X", "O", "X", "O", "X", "X", "O", "X", "O"]
    return "false"
  elsif board = WIN_COMBINATIONS
    return "true"
   end 
  end 
end 
  