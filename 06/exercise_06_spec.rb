require_relative 'exercise_06'

RSpec.describe 'Exercise 06' do
  let(:sample) { [0, 2, 7, 0] }
  it 'counts the number of steps to a repeated state' do
    expect(redistribute_banks(sample)).to eq(5)
  end
end
