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
        return position.all? (|ele| ele =< 2 && ele > 0 )
    end

    def empty?(position)
        row = position[0]
        col = position[1]
        @grid[row][col] == "_"
    end

    #accept position (Array) and mark(:symbol)
    #should assign given mark to the given position on the grid
    
    def 
end
