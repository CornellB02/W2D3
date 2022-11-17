#position => first [0, 1] => first element (0) refers to row and second element (0) refers to colum

#Class is responsible for adding a players marks, checking for winners and printing the game board .
class Board 


    # initialize instances variables @grid (2d Array)
    # Empty position are represented as element ("_") is subarray
    def initialize()
        @grid = Array.new(3) {Array.new(3,"_")}
    end

    # Accepts position (Array) example: {1, 2}
    # Return boolean indicating wheater or not the specified position is valid for the board, meaning its not "out of bounds"

    def valid?(position)
        return position.all? {|ele| ele <= 2 && ele > 0}
    end

    def empty?(position)
        row = position[0]
        col = position[1]
        @grid[row][col] == "_"
    end

    #accept position (Array) and mark(:symbol)
    #should assign given mark to the given position on the grid
    
    def place_mark(position, mark)
        row = position[0]
        col = position[1]

        if valid?(position) && empty?(position)
            @grid[row][col] = mark
        else
            raise "wrong position"
        end
    end

    # prints the grid
    def print
        @grid.each do |row|
            puts row.join(" ")
        end
    end

    def win_row?(mark)
        @grid.any? { |row| row.all {|ele| ele == mark }}
    end

    def win_col?(mark)
        @grid.transpose.any? {|col| col.all {|ele| ele == mark}}
    end

    def win_diagonal?(mark)
        p,s = 0, 0

        (0...@grid.length).each do |i|
            p += 1 if @grid[i][i] == mark
            s += 1 if @grid[i][@grid.length - i - 1] == mark
        end

        return p == @grid.length || s == @grid.length 

    end


    #accepts mark (symbol)
    #returns boolean indicating if any way of winners won
    def win?(mark)
        return win_row?(mark) || win_col(mark) || win_diagonal(mark)
    end

    #checks to see if any position 

    def empty_positions?
        @grid.any? {|row| row.any?{|ele| == "_"} } 
    end
    
end