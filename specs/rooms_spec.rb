require("minitest/autorun")
require('minitest/reporters')

require_relative('../rooms')
require_relative('../songs')
require_relative('../guests')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class RoomsTest < MiniTest::Test

  def setup
    @guest1 = Guests.new("Leela", 20.00, "Florence and the Machine - Girl with One Eye")
    @guest2 = Guests.new("Fry", 5.00, "Wild Wild West - Will Smith")
    @guest3 = Guests.new("Bender", 500.00, "Domo Arigato Mr. Roboto - Styx")
    @guest4 = Guests.new("Dr. Zoidberg", 0.00, "Octopus' Garden - The Beatles")

    @song1 = Songs.new("Florence and the Machine - Girl with One Eye")
    @song2 = Songs.new("Wild Wild West - Will Smith")
    @song3 = Songs.new("Domo Arigato Mr. Roboto - Styx")
    @song4 = Songs.new("Octopus' Garden - The Beatles")

    @room1_capacity = []
    @room2_capacity = []

    @room1_playlist = []
    @room2_playlist = []

    @room1 = Rooms.new("Human Room", 2, @room1_capacity, @room1_playlist)
    @room2 = Rooms.new("Robo Room", 2, @room2_capacity, @room2_playlist)
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

  def test_guest_can_be_added_to_room()
    @room1.add_guest_to_room(@room1_capacity, @guest1)
    assert_equal(1, @room1_capacity.length())
  end

  # def test_room_is_full()
  #   @room1.add_guest_to_room(@room1_capacity, @guest3)
  #   assert_equal("No more space!", )
  # end

  def test_guest_can_be_removed_from_room()
    @room1.add_guest_to_room(@room1_capacity, @guest1)
    @room1.remove_guest_from_room(@room1_capacity, @guest1)
    assert_equal(0, @room1_capacity.length())
  end

  def test_song_can_be_added_to_room_playlist()
    @room1.add_song_to_room_playlist(@room1.playlist, @song1)
    assert_equal("Florence and the Machine - Girl with One Eye", @room1.playlist.fetch(0).name())
  end

  def test_song_can_be_removed_from_room_playlist()
    @room1.remove_song_from_room_playlist(@room1.playlist, @song1)
    assert_equal(0, @room1.playlist.length())
  end

end


## Yo! yo

# so what I think I need to do is refactor /\ that test so that @room1_playlist is actually @room1 and it has a playlist array in it .....YES

#that's totall right and then you can do things like @playlist.size() etc in your tests to see if you've added removed etc. plus you can run enumerators on it for searching

## yeah, it makes more sense now. I reckon I just got a certain way stuck in my head

#awesome. Thanks pal SWEET -  just rem to always point to an object to run the method in that class. Give me a shout if you need anything else

## I will do! love ya xx choi x
