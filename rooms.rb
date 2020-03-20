class Rooms

  attr_reader :name, :max_capacity, :current_capacity

  def initialize(name, max_capacity, current_capacity)
    @name = name
    @max_capacity = max_capacity
    @current_capacity = current_capacity
    @room1_playlist = []
    @room2_playlist = []
  end

end
