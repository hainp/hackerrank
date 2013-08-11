#!/bin/ruby
# Head ends here
def move(position, direction)
    for i in 0..position
        puts direction
    end
end

def displayPathtoPrincess(n,grid)
    position = n / 2 - 1
    if grid[0].start_with?('p')
        move(position, "UP")
        move(position, "LEFT")
    elsif grid[0].end_with?('p')
        move(position, "UP")
        move(position, "RIGHT")
    elsif grid[n - 1].start_with?('p')
        move(position, "DOWN")
        move(position, "LEFT")
    else
        move(position, "DOWN")
        move(position, "RIGHT")
    end
end
# Tail starts here
m = gets.to_i

grid = Array.new(m)

(0...m).each do |i|
    grid[i] = gets.strip
end

displayPathtoPrincess(m,grid)
