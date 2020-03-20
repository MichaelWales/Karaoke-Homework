require("minitest/autorun")
require('minitest/reporters')

require_relative('../songs')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class SongsTest < MiniTest::Test

  def setup
    @songs = []
  end

end
