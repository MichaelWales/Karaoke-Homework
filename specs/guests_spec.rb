require("minitest/autorun")
require('minitest/reporters')

require_relative('../guests')
require_relative('../drinks')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class GuestsTest < MiniTest::Test

  def setup
    @drink1 = Drinks.new("Olde Fortran", 2.50, 2)
    @drink2 = Drinks.new("Lobrau", 3.50, 3)
    @drink3 = Drinks.new("Pabst", 6.00, 5)
    @drink4 = Drinks.new("Slurm", 3.00, 0)

    @guest1 = Guests.new("Leela", 20.00, "Florence and the Machine - Girl with One Eye")
    @guest2 = Guests.new("Fry", 5.00, "Wild Wild West - Will Smith")
    @guest3 = Guests.new("Bender", 500.00, "Domo Arigato Mr. Roboto - Styx")
    @guest4 = Guests.new("Dr. Zoidberg", 0.00, "Octopus' Garden - The Beatles")
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

  def test_guest_drunkeness()
    assert_equal(0, @guest1.drunkeness())
  end

  def test_guest_can_afford_drink()
    assert_equal(true, @guest1.enough_money?(@drink1))
  end

  def test_guest_cannot_afford_drink()
    assert_equal(false, @guest4.enough_money?(@drink1))
  end

  def test_guest_can_buy_drink__decreases_wallet()
    @guest1.buy_drink(@drink3)
    assert_equal(14.0, @guest1.wallet())
  end

  def test_guest_can_buy_drink__increases_drunkeness()
    @guest1.buy_drink(@drink3)
    assert_equal(5, @guest1.drunkeness())
  end

  def test_guest_cannot_afford_drink()
    @guest4.buy_drink(@drink4)
    assert_equal(0.00, @guest4.wallet())
    assert_equal(0, @guest4.drunkeness())
  end

end
