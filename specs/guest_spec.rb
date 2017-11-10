require('minitest/autorun')
require('minitest/rg')
require_relative('../guest.rb')
require_relative('../room.rb')

class TestGuest < MiniTest::Test

  def setup
    @guest1 = Guest.new("Joe")
    @guest2 = Guest.new("James")
    @room4 = Room.new("Drum n Bass", 55)
    @room1 = Room.new("Disco Room", 5)
  end

  def test_get_name
    assert_equal("Joe", @guest1.name)
  end

  def test_get_wallet
    assert_equal(50, @guest1.wallet)
  end

  def test_check_wallet_change
    result = @guest1.wallet - 10
    assert_equal(40, result)
  end

  def test_sufficient_funds__yes
    result = @guest1.sufficient_funds?(@room1)
    assert_equal(true, result)
  end

  def test_sufficient_funds__no
    result1 = @guest1.sufficient_funds?(@room4)
    assert_equal(false, result1)
  end

  def test_guest_pay_entry
    @guest1.pay_entry(@room1)
    assert_equal(45, @guest1.wallet())
  end

end
