class Room

  attr_accessor :room_name, :entry_fee, :capacity, :songs, :num_guests

  def initialize(room_name, entry_fee)
    @room_name = room_name
    @entry_fee = entry_fee
    @capacity = 5
    @songs = []
    @num_guests = []

  end

  def check_in_guest(guest)
    if num_guests.count < @capacity
      @num_guests << guest
    else
      return "Sorry, we are full"
    end
  end

  def check_out_guest(guest_name)
    for person in @num_guests
      if person.name == guest_name
        @num_guests.delete(person)
      end
    end
    return nil
  end

  def add_to_playlist(song)
    @songs << song
  end

end
