require("minitest/autorun")
require('minitest/reporters')

require_relative('../songs')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class SongsTest < MiniTest::Test

  def setup
    @song1 = Songs.new("Florence and the Machine - Girl with One Eye")
    @song2 = Songs.new("Wild Wild West - Will Smith")
    @song3 = Songs.new("Domo Arigato Mr. Roboto - Styx")
    @song4 = Songs.new("Octopus' Garden - The Beatles")
  end

  def test_song_has_name()
    assert_equal("Wild Wild West - Will Smith", @song2.name())
  end

end
