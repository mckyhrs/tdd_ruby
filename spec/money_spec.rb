require_relative '../lib/Dollar'

RSpec.describe do
  it do
    five = Dollar.new(5)
    product = five.times(2)
    expect(product.amount).to eq 10
    product = five.times(3)
    expect(product.amount).to eq 15
  end
  it do
    expect(Dollar.new(5).equals(Dollar.new(5))).to eq true
    expect(Dollar.new(5).equals(Dollar.new(6))).to eq false
  end
end
