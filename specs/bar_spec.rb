require("minitest/autorun")
require('minitest/reporters')

require_relative('../bar')
require_relative('../rooms')
require_relative('../guests')
require_relative('../songs')
require_relative('../drinks')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

def setup
  @drink1 = Drinks.new("Olde Fortran", 2.50, 2)
  @drink2 = Drinks.new("Lobrau", 3.50, 3)
  @drink3 = Drinks.new("Pabst", 6.00, 5)
  @drink4 = Drinks.new("Slurm", 1.00, 0)
  @drinks_menu = [@drink1, @drink2, @drink3, @drink4]

  @room1 = Room.new("Human Room", 2)
  @room2 = Room.new("Robo Room", 2)

  @songs = []

  @bar = Bar.new("Zapp Brannigan's Karaoke Bistro", 5, 100, @drinks_menu, 10)

  @guest1 = Guest.new("Leela", 20, "Florence and the Machine - Girl with One Eye")
  @guest2 = Guest.new("Fry", 5, "Wild Wild West - Will Smith")
  @guest3 = Guest.new("Bender", 500, "Domo Arigato Mr. Roboto - Styx")
  @guest4 = Guest.new("Zoidberg", 0, "Octopus' Garden - The Beatles")
end
