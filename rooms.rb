class Rooms

  attr_reader :name, :max_capacity, :current_capacity, :playlist

  def initialize(name, max_capacity, current_capacity, playlist)
    @name = name
    @max_capacity = max_capacity
    @current_capacity = current_capacity
    @playlist = playlist
  end

  def add_guest_to_room(room, guest)
    if room.length >= @max_capacity
      return "No more space!"
    else
      room << guest
    end
  end

  def remove_guest_from_room(room, guest)
    room.pop()
  end

  def add_song_to_room_playlist(room_playlist, song)
    room_playlist << song
  end

  def remove_song_from_room_playlist(room_playlist, song)
    room_playlist.pop
  end

end
