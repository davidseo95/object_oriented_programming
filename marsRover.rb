# OOP exercise 2! Mars Rover program!

class Rover

  def intialize(position)

    temp_position_array = position.split(" ")
    @x = temp_position_array[0].to_i
    @y = temp_position_array[1].to_i
    @direction = temp_position_array[2]

  end

  def read_instruction(instruction)

    instruction.each_char do |char|
      if char == "L" || "R"
        self.turn(char)
      elsif char == "M"
        self.move
      end
    end

  end

  def turn(spin_direction)

    if spin_direction == "L"

      if @direction == "N"
        @direction = "W"
      elsif @direction == "S"
        @direction = "E"
      elsif @direction == "W"
        @direction = "S"
      elsif @direction == "E"
        @direction = "N"
      end

    elsif spin_direction == "R"

      if @direction == "N"
        @direction = "E"
      elsif @direction == "S"
        @direction = "W"
      elsif @direction == "W"
        @direction = "N"
      elsif @direction == "E"
        @direction = "S"
      end
    end

  end

  def move

    if @direction == "N"
      @y += 1

    elsif @direction == "S"
      @y -= 1

    elsif @direction == "W"
      @x -= 1

    elsif @direction == "E"
      @x += 1
    end

  end

end

# Prompting user for 5 inputs
print "Please enter plateau size: "
plateau_size = gets.chomp

# Rover 1
print "Rover 1 Position: "
rover1_position = gets.chomp

rover1 = Rover.new(rover1_position)

print "Instructions for Rover 1: "
instruction = gets.chomp

# Rover 2
print "Rover 2 Position: "
rover2_position = gets.chomp

rover2 = Rover.new(rover2_position)

print "Instructions for Rover 2: "
instruction = gets.chomp






