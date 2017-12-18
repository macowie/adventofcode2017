require_relative 'exercise_03'

RSpec.describe 'Exercise 03' do
  # let :sample do
    # [
    #   [65, 64, 63, 62, 61, 60, 59, 58, 57],
    #   [66, 37, 36, 35, 34, 33, 32, 31, 56],
    #   [67, 38, 17, 16, 15, 14, 13, 30, 55],
    #   [68, 39, 18, 5,  4,  3,  12, 29, 54],
    #   [69, 40, 19, 6,  1,  2,  11, 28, 53],
    #   [70, 41, 20, 7,  8,  9,  10, 27, 52],
    #   [71, 42, 21, 22, 23, 24, 25, 26, 51],
    #   [72, 43, 44, 45, 46, 47, 48, 49, 50],
    #   [73, 74, 75, 76, 77, 78, 79, 80, 81]
    # ]
  # end

  it 'finds the number of moves to an address' do
    expect(distance_to(1)).to eq(0)
    expect(distance_to(12)).to eq(3)
    expect(distance_to(23)).to eq(2)
    expect(distance_to(1024)).to eq(31)
  end

  it 'finds the size of the smallest grid that contains the address' do
    expect(grid_size(1)).to eq(1)
    expect(grid_size(2)).to eq(3)
    expect(grid_size(9)).to eq(3)
    expect(grid_size(25)).to eq(5)
    expect(grid_size(26)).to eq(7)
  end
end
