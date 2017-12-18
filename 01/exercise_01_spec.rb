require_relative 'exercise_01'

RSpec.describe 'Exercise 01' do
  it do
    expect(sum_of_matches(1122)).to eq(3)
  end

  it do
    expect(sum_of_matches(1111)).to eq(4)
  end

  it 'no matches produces zero' do
    expect(sum_of_matches(1234)).to eq(0)
  end

  it 'loop around' do
    expect(sum_of_matches(91212129)).to eq(9)
  end
end