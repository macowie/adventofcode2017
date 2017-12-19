require_relative 'exercise_04'

RSpec.describe 'Exercise 04' do
  it 'is valid when no repeated words' do
    phrase = "aa bb cc dd ee"
    expect(phrase_valid?(phrase)).to be_truthy
  end

  it 'is invalid when word is repeated' do
    phrase = "aa bb cc dd aa"
    expect(phrase_valid?(phrase)).to be_falsey
  end

  it 'partial phrases pass' do
    phrase = "aa bb cc dd aaa"
    expect(phrase_valid?(phrase)).to be_truthy
  end
end
