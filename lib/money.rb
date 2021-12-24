class Money
  attr_accessor :amount, :currency

  def initialize(amount, currency)
    @amount = amount
    @currency = currency
  end

  def times(multiplier)
    Money.new(@amount * multiplier, @currency)
  end

  def currency
    @currency
  end

  def equals(money)
    @amount == money.amount && currency == money.currency
  end

  class << self
    def dollar(amount)
      Money.new(amount, 'USD')
    end

    def franc(amount)
      Money.new(amount, 'CHF')
    end
  end
end