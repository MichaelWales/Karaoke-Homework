class Guests

  attr_reader :name, :wallet, :favourite_song, :drunkeness
  attr_writer :wallet, :drunkeness

  def initialize(name, wallet, favourite_song)
    @name = name
    @wallet = wallet
    @favourite_song = favourite_song
    @drunkeness = 0
  end

  def enough_money?(drink)
    return wallet >= drink.price()
  end

  def buy_drink(drink)
    if enough_money?(drink)
      @wallet -= drink.price()
      @drunkeness += drink.alcohol_units()
    end
  end

end
