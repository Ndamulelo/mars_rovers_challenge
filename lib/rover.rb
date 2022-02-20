class Rover

  attr_accessor :orientation, :x_coordinate, :y_coordinate

  def initialize(position)
    position_array = position.split(' ')
    @x_coordinate = position_array[0].to_i
    @y_coordinate = position_array[1].to_i
    @orientation = position_array[2]
  end

  def spin_left
    case @orientation
      when 'N'
        @orientation = 'W'
      when 'W'
        @orientation = 'S'
      when 'S'
        @orientation = 'E'
      when 'E'
        @orientation = 'N'
    end
    nil
  end

  def spin_right
    case @orientation
    when 'N'
      @orientation = 'E'
    when 'E'
      @orientation = 'S'
    when 'S'
      @orientation = 'W'
    when 'W'
      @orientation = 'N'
    end
    nil
  end

  def move_forward
    case @orientation
    when 'N'
      @y_coordinate += 1
    when 'S'
      @y_coordinate -= 1
    when 'E'
      @x_coordinate += 1
    when 'W'
      @x_coordinate -= 1
    end
    nil
  end

  def execute_commands(commands)
    commands = commands.split('')

    commands.each do |command|
      case command
      when 'L'
        spin_left
      when 'R'
        spin_right
      when 'M'
        move_forward
      end
    end
  end
end
