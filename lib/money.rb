class Money
  attr_accessor :amount

  def initialize
    raise 'this class is an abstract class and cannot be instantiated'
  end

  def times(multiplier)
    raise "Called abstract method: times"
  end

  def equals(money)
    @amount == money.amount && self.class == money.class
  end

  class << self
    def dollar(amount)
      Dollar.new(amount)
    end

    def franc(amount)
      Franc.new(amount)
    end
  end
end