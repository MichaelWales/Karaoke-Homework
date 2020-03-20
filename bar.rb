class Bar

  attr_reader :name, :entry_fee, :till_balance, :drinks_menu, :max_drunkness

  def initialize(name, entry_fee, till_balance, drinks_menu, max_drunkness)
    @name = name
    @entry_fee = entry_fee
    @till_balance = till_balance
    @drinks_menu = drinks_menu
    @max_drunkness = max_drunkness
  end

end
