require_relative '../lib/Money'

RSpec.describe do
  it 'test multiplication' do
    five = Money.dollar(5)
    expect(Money.dollar(10).equals(five.times(2))).to eq true
    expect(Money.dollar(15).equals(five.times(3))).to eq true
  end
  it 'test equality' do
    expect(Money.dollar(5).equals(Money.dollar(5))).to eq true
    expect(Money.dollar(5).equals(Money.dollar(6))).to eq false
    expect(Money.franc(5).equals(Money.dollar(5))).to eq false
  end
  it 'test currency' do
    expect('USD').to eq Money.dollar(1).currency
    expect('CHF').to eq Money.franc(1).currency
  end
end
