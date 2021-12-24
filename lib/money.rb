class Money
  attr_accessor :amount

  def equals(money)
    @amount == money.amount && self.class == money.class
  end
end