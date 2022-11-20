class Board

    def initialize(num)
        @grid = Array.new(num) {Array.new (num, :N)}
        @size = num * num
    end

end
