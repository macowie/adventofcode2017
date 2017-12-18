AOC_INPUT = 277678

def grid_size(address)
  (1..(address + 1)).lazy.select(&:odd?).detect { |n| n ** 2 >= address }
end

def distance_to(address)
  size = grid_size(address)
  middle_distance = (size / 2.0).ceil - 1
  grid_start = (size - 2) ** 2 + 1

  bottom_right = size ** 2
  bottom_left = bottom_right - (size - 1)
  top_left = bottom_left - (size - 1)
  top_right = top_left - (size - 1)

  if address <= top_left && address >= top_right # top row
    x = ((top_right + middle_distance) - address).abs
    y = middle_distance
  elsif address <= bottom_right && address >= bottom_left # bottom row
    x = ((bottom_left + middle_distance) - address).abs
    y = middle_distance
  elsif address <= bottom_left && address >= top_left # left side
    x = middle_distance
    y = ((top_left + middle_distance) - address).abs
  else # right side
    x = middle_distance
    y = ((grid_start + 1 + middle_distance) - address).abs
  end
  x + y
end

if __FILE__ == $PROGRAM_NAME
  puts distance_to(AOC_INPUT)
end