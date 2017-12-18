require_relative 'exercise_02'

RSpec.describe 'Exercise 02' do
  let :sample do
    [
      [5, 1, 9, 5],
      [7, 5, 3],
      [2, 4, 6, 8]
    ]
  end

  it 'checksum of row is the difference between largest & smallest members' do
    expect(row_checksum(sample[0])).to eq(8)
  end

  it 'row 2 checksum' do
    expect(row_checksum(sample[1])).to eq(4)
  end

  it 'row 3 checksum' do
    expect(row_checksum(sample[2])).to eq(6)
  end

  it 'sheet_checksum is sum of rows checksums' do
    expect(sheet_checksum(sample)).to eq(18)
  end
end