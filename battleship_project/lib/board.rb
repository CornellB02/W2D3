class Board

    attr_reader :size, :n

  def initialize(n)
    @grid = Array.new(n) { Array.new(n, :N) }
    @size = n * n
    @n = n
  end

  def [](position)
    row, col = position

    return @grid[row][col]
  end

  def []=(position, value)
    row, col = position

     @grid[row][col] = value
  end

  def num_ships
    @grid.flatten.count {|ele| ele == :S}
  end

  def attack(position)
    if  self[position] == :S
        self[position]= :H
        puts 'you sunk my battleship!'
        return true
  else
        self[position]= :X
        return false 
    end
  end

  def place_random_ships
        total_ships = size / 4
        while self.num_ships < total_ships do
            row = rand(0...@n)
            col = rand(0...@n)
            pos = row, col
            self[pos] = :S
        end
    end

    def hidden_ships_grid
        hiddengrid = @grid.map do |row|
            row.map do |pos|
                if pos == :S
                    pos = :N
                else 
                    pos
                end
            end
        end
    end

    def Board.print_grid(grid)
        grid.each {|row| puts row.join(" ")}
    end

    def cheat
        Board.print_grid(@grid)
    end
    
    def print 
        Board.print_grid(hidden_ships_grid)
    end
    

    
    



end
