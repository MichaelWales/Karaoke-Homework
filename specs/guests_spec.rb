require("minitest/autorun")
require('minitest/reporters')

require_relative('../guests')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class GuestsTest < MiniTest::Test

  def setup
    @guest1 = Guest.new("Leela", 20, "Florence and the Machine - Girl with One Eye")
    @guest2 = Guest.new("Fry", 5, "Wild Wild West - Will Smith")
    @guest3 = Guest.new("Bender", 500, "Domo Arigato Mr. Roboto - Styx")
    @guest4 = Guest.new("Dr. Zoidberg", 0, "Octopus' Garden - The Beatles")
  end

end
