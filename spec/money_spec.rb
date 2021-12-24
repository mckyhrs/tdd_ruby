require_relative '../lib/Dollar'
require_relative '../lib/Franc'

RSpec.describe do
  it 'test multiplication' do
    five = Dollar.new(5)
    expect(Dollar.new(10).equals(five.times(2))).to eq true
    expect(Dollar.new(15).equals(five.times(3))).to eq true
  end
  it 'test equality' do
    expect(Dollar.new(5).equals(Dollar.new(5))).to eq true
    expect(Dollar.new(5).equals(Dollar.new(6))).to eq false
    expect(Franc.new(5).equals(Franc.new(5))).to eq true
    expect(Franc.new(5).equals(Franc.new(6))).to eq false
  end
  it 'test franc multiplication' do
    five = Franc.new(5)
    expect(Franc.new(10).equals(five.times(2))).to eq true
    expect(Franc.new(15).equals(five.times(3))).to eq true
  end
end
