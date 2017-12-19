def follow_jumps(inputs, step_two: false)
  instructions = inputs.dup
  position = 0
  steps    = 0

  while position < inputs.size do
    move = instructions[position]
    increment = (step_two && move >= 3) ? -1 : 1
    instructions[position] = instructions[position] + increment
    position = position + move
    steps = steps + 1
  end

  steps
end

if __FILE__ == $PROGRAM_NAME
  file = File.new(__dir__ + '/input')
  inputs = file.readlines.map(&:to_i)
  puts follow_jumps(inputs)
  puts follow_jumps(inputs, step_two: true)
end