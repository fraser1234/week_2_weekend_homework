require('minitest/autorun')
require('minitest/rg')
require_relative('../room.rb')
require_relative('../guest.rb')
require_relative('../song.rb')

class TestRoom < MiniTest::Test

  def setup
    @room1 = Room.new("Disco Room", 5)
    @room2 = Room.new("Rock Room", 3)
    @room3 = Room.new("Techno Room", 4)
    @room4 = Room.new("Drum n Bass", 55)
    @guest1 = Guest.new ("Joe")
    @guest2 = Guest.new ("Kerry")
    @guest3 = Guest.new ("Sam")
    @guest4 = Guest.new ("Tom")
    @guest5 = Guest.new ("Lenny")
    @num_guests = [@guest1, @guest2, @guest3, @guest4, @guest5]
    @song1 = Song.new( "Womack & Womack", "Teardrops")
    @song2 = Song.new("MK", "17")
  end

  def test_room_name
    assert_equal("Disco Room", @room1.room_name)
  end

  def test_has_entry_fee
    assert_equal(4, @room3.entry_fee)
  end

  def test_room_capacity
    assert_equal(5, @room1.capacity)
  end

  def test_check_in_guest
    @room1.check_in_guest(@guest1)
    assert_equal(1, @room1.num_guests.count)
  end

  def test_check_out_guest
    @room1.check_in_guest(@guest1)
    @room1.check_out_guest("Joe")
    assert_equal(0, @room1.num_guests.count)
  end

  def test_add_to_playlist
    @room1.add_to_playlist(@song1)
    assert_equal(1, @room1.songs.count)
  end

end
