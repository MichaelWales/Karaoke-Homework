class Guests

  attr_reader :name, :wallet, :favourite_song
  attr_writer :wallet

  def initialize(name, wallet, favourite_song)
    @name = name
    @wallet = wallet
    @favourite_song = favourite_song
    @drunkeness = 0
  end

end
