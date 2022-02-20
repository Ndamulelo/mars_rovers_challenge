require 'rover'

describe Rover, '#spin_left' do
  context 'with spin left value' do
    it 'Spins 90 degrees to the left without changing its current position' do
      rover = Rover.new('1 2 N')
      rover.spin_left
      expect(rover.orientation).to eq 'W'
    end
  end
end

describe Rover, '#spin_right' do
  context 'with spin right value' do
    it 'Spins 90 degrees to the right without changing its current position' do
      rover = Rover.new('1 2 N')
      rover.spin_right
      expect(rover.orientation).to eq 'E'
    end
  end
end

describe Rover, '#move_forward' do
  it 'Modifies y coordinate when orientation is N or S and modifies x coordinate when orientation is E or W' do
    rover = Rover.new('1 2 N')
    rover.move_forward
    expect(rover.y_coordinate).to eq 3
  end
end

describe Rover, '#execute_commands' do
  it 'Execute string of commands to navigate a rover' do
    rover = Rover.new('1 2 N')
    rover.execute_commands('LMLMLMLMM')
    expect("#{rover.x_coordinate} #{rover.y_coordinate} #{rover.orientation}").to eq '1 3 N'
  end
end
