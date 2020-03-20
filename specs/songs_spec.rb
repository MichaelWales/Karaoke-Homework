require("minitest/autorun")
require('minitest/reporters')


Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class SongsTest < MiniTest::Test

  def setup
    @drink1 = Drink.new("Beer", 2.50, 2)
    @drink2 = Drink.new("Cider", 3.50, 3)
    @drink3 = Drink.new("Cocktail", 6, 5)
    @drink4 = Drink.new("Orange & Lemonade", 3, 0)

    @drinks_menu = [drink1, drink2, drink3, drink4]
  end

  def test_get_drink_name()
    assert_equal("Beer", @drink1.name())
  end

  def test_drink_price()
    assert_equal(2.50, @drink1.price())
  end

  def test_alcohol_level_of_drink()
    assert_equal(2, @drink1.alc_unit())
  end

end
