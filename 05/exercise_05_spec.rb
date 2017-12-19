require_relative 'exercise_05'

RSpec.describe 'Exercise 05' do
  let :example do
    [0, 3, 0, 1, -3]
  end

  it do
    expect(follow_jumps(example)).to eq(5)
  end

  context 'step_two' do
    it do
      expect(follow_jumps(example, step_two: true)).to eq(10)
    end
  end
end
