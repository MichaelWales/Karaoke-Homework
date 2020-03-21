require("minitest/autorun")
require('minitest/reporters')

require_relative('../rooms')
require_relative('../songs')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class RoomsTest < MiniTest::Test

  def setup
    @song1 = Songs.new("Florence and the Machine - Girl with One Eye")
    @song2 = Songs.new("Wild Wild West - Will Smith")
    @song3 = Songs.new("Domo Arigato Mr. Roboto - Styx")
    @song4 = Songs.new("Octopus' Garden - The Beatles")

    @room1_capacity = []
    @room2_capacity = []

    @room1 = Rooms.new("Human Room", 2, @room1_capacity)
    @room2 = Rooms.new("Robo Room", 2, @room2_capacity)
  end

  def test_room_has_name()
    assert_equal("Robo Room", @room2.name())
  end

  def test_room_has_max_capacity()
    assert_equal(2, @room1.max_capacity())
  end

  def test_room_is_empty()
    assert_equal(0, @room1.current_capacity.length())
  end

  

end
