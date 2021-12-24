require_relative '../../../lib/section1/chapter1/Dollar'

RSpec.describe do
  it '' do
    five = Dollar.new(5)
    product = five.times(2)
    expect(product.amount).to eq 10
    product = five.times(3)
    expect(product.amount).to eq 15
  end
end
