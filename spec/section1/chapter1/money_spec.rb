require_relative '../../../lib/section1/chapter1/Dollar'

RSpec.describe do
  it '' do
    five = Dollar.new(5)
    five.times(2)
    expect(five.amount).to eq 10
  end
end
