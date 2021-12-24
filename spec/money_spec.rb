require_relative '../lib/Dollar'

RSpec.describe do
  it 'test_multiplication' do
    five = Dollar.new(5)
    expect(Dollar.new(10).equals(five.times(2))).to eq true
    expect(Dollar.new(15).equals(five.times(3))).to eq true
  end
  it 'test_equality' do
    expect(Dollar.new(5).equals(Dollar.new(5))).to eq true
    expect(Dollar.new(5).equals(Dollar.new(6))).to eq false
  end
end
