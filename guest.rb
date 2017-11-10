class Guest

  attr_reader :name, :wallet

  def initialize(name)
    @name = name
    @wallet = 50
  end

  def sufficient_funds?(room)
    return @wallet >= room.entry_fee()
  end

  def pay_entry(room)
    if sufficient_funds?(room)
      @wallet -= room.entry_fee()
    end
  end

end
