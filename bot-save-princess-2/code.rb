#!/bin/ruby
# Head ends here
def getPrincessPosition(grid)
    row = (grid.select {|aRow| aRow.include? 'p'})[0]
    r = grid.index row
    c = row.index 'p'
    return {'row' => r, 'column' => c}
end

def nextMove(n,r,c,grid)
    princess = getPrincessPosition(grid)
    verticalDistance = r - princess['row']
    horizontalDistance = c - princess['column']
    
    if verticalDistance < 0
        puts 'DOWN'
    elsif verticalDistance > 0
        puts 'UP'
    else
        if horizontalDistance < 0
            puts 'RIGHT'
        else
            puts 'LEFT'
        end
    end

end
# Tail starts here
n = gets.to_i

r,c = gets.strip.split.map {|num| num.to_i}

grid = Array.new(n)

(0...n).each do |i|
    grid[i] = gets
end

nextMove(n,r,c,grid)
