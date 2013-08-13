#!/usr/bin/ruby

# Head ends here

def next_move posr, posc, board
  return 'CLEAN' if board[posr][posc] == 'd'
  dirts = []
  
  # zip?
  board.each_with_index {|aRow, i|
    aRow.chars.each_with_index {|c, j|
      dirts.push([i, j]) if c == 'd'
    }
  }

  dirts = dirts.zip(dirts.map {|dirt|
                      (dirt[0]-posr).abs + (dirt[1]-posc).abs
                    })
  
  d = dirts.min_by {|x| x[1]}
 
  if d[0][0] != posr
    return 'DOWN' if d[0][0] - posr > 0
    return 'UP'
  end
  
  return 'RIGHT' if d[0][1] - posc > 0
  return 'LEFT'

end

# Tail starts here
pos = gets.split.map {|i| i.to_i}
board = Array.new(5)

(0...5).each do |i|
  board[i] = gets.strip
end

puts next_move pos[0], pos[1], board
