require("minitest/autorun")
require('minitest/reporters')

require_relative('../bar')
require_relative('../rooms')
require_relative('../guests')
require_relative('../songs')
require_relative('../drinks')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class BarTest < MiniTest::Test

  def setup
    @drink1 = Drinks.new("Olde Fortran", 2.50, 2)
    @drink2 = Drinks.new("Lobrau", 3.50, 3)
    @drink3 = Drinks.new("Pabst", 6.00, 5)
    @drink4 = Drinks.new("Slurm", 3.00, 0)

    @drinks_menu = [@drink1, @drink2, @drink3, @drink4]

    @song1 = Songs.new("Florence and the Machine - Girl with One Eye")
    @song2 = Songs.new("Wild Wild West - Will Smith")
    @song3 = Songs.new("Domo Arigato Mr. Roboto - Styx")
    @song4 = Songs.new("Octopus' Garden - The Beatles")

    @guest1 = Guests.new("Leela", 20, "Florence and the Machine - Girl with One Eye", 0)
    @guest2 = Guests.new("Fry", 5, "Wild Wild West - Will Smith", 0)
    @guest3 = Guests.new("Bender", 500, "Domo Arigato Mr. Roboto - Styx", 5)
    @guest4 = Guests.new("Dr. Zoidberg", 0, "Octopus' Garden - The Beatles", 0)

    @room1_capacity = []
    @room2_capacity = []

    @room1 = Rooms.new("Human Room", 2, @room1_capacity)
    @room2 = Rooms.new("Robo Room", 2, @room2_capacity)

    @bar = Bar.new("Zapp Brannigan's Karaoke Bistro", 5, 100, @drinks_menu, 10)
  end

  def test_bar_has_name()
    assert_equal("Zapp Brannigan's Karaoke Bistro", @bar.name())
  end

  def test_bar_has_entry_fee()
    assert_equal(5, @bar.entry_fee())
  end

  def test_bar_opening_balance()
    assert_equal(100, @bar.till_balance())
  end

  def test_drinks_menu_isnt_empty()
    assert_equal(4, @drinks_menu.length())
  end

  def test_bar_has_max_drinks_policy()
    assert_equal(10, @bar.max_drunkness())
  end

end
