

#he HumanPlayer class is responsible for holding information about the user and prompting them to enter a position for gameplay.
class HumanPlayer 
attr_reader (:mark)

    def initialize(mark_value)
        @mark = mark_value
    end

    # Should get position from user example "row col" => 1 1
    def get_position
    input = gets.chomp 
    input.split(" ").map { |ele| ele.to_i }
    end
end