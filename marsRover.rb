# OOP exercise 2! Mars Rover program!

class Rover

  def intialize(position)

    temp_position_array = position.split(" ")
    @x = temp_position_array[0].to_i
    @y = temp_position_array[1].to_i
    @direction = temp_position_array[2]

  end

end






