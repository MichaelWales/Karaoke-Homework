require("minitest/autorun")
require('minitest/reporters')

require_relative('../guests')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class GuestsTest < MiniTest::Test

  def setup
    @guest1 = Guests.new("Leela", 20, "Florence and the Machine - Girl with One Eye")
    @guest2 = Guests.new("Fry", 5, "Wild Wild West - Will Smith")
    @guest3 = Guests.new("Bender", 500, "Domo Arigato Mr. Roboto - Styx")
    @guest4 = Guests.new("Dr. Zoidberg", 0, "Octopus' Garden - The Beatles")
  end

  def test_guest_has_name()
    assert_equal("Leela", @guest1.name())
  end

  def test_guest_has_money()
    assert_equal(500, @guest3.wallet())
  end

  def test_guest_has_favourite_song()
    assert_equal("Wild Wild West - Will Smith", @guest2.favourite_song())
  end

end
