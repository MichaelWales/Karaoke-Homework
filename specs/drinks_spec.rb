require("minitest/autorun")
require('minitest/reporters')

require_relative('../drinks')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class DrinksTest < MiniTest::Test

  def setup
    @drink1 = Drinks.new("Olde Fortran", 2.50, 2)
    @drink2 = Drinks.new("Lobrau", 3.50, 3)
    @drink3 = Drinks.new("Pabst", 6.00, 5)
    @drink4 = Drinks.new("Slurm", 3.00, 0)

    @drinks_menu = [@drink1, @drink2, @drink3, @drink4]
  end

  def test_drink_has_name()
    assert_equal("Olde Fortran", @drink1.name())
  end

  def test_drink_has_price()
    assert_equal(2.50, @drink1.price())
  end

  def test_drink_has_alcohol_units()
    assert_equal(2, @drink1.alcohol_units())
  end

end
