require("minitest/autorun")
require('minitest/reporters')

require_relative('../rooms')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class RoomsTest < MiniTest::Test

  def setup
    @room1 = Room.new("Human Room", 2)
    @room2 = Room.new("Robo Room", 2)
  end

end
