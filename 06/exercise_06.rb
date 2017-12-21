def redistribute_banks(banks, step_two: false)
  states = []
  matches_required = step_two ? 2 : 1

  until states.count(banks) == matches_required
    states << banks.dup
    redistribute_biggest_bank(banks)
  end

  puts "Steps: #{states.size}"
end

def redistribute_biggest_bank(banks)
  blocks_count = banks.max
  position = banks.index(blocks_count)
  banks[position] = 0

  blocks_count.times do
    position = next_position(banks.size, position)
    banks[position] += 1
  end
end

def next_position(size, current_position)
  current_position += 1
  current_position == size ? 0 : current_position
end

if __FILE__ == $PROGRAM_NAME
  file = File.new(__dir__ + '/input')
  inputs = file.read.split(/\s+/).map(&:to_i).compact
  puts redistribute_banks(inputs, step_two: true)
end