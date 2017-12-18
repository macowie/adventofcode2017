def row_checksum(row)
  row.max - row.min
end

def sheet_checksum(sheet)
  sheet.map { |row| row_checksum(row) }.sum
end

def parse_sheet(file)
  file.readlines
      .map { |line| line.split(' ').map(&:to_i) }
end

if __FILE__ == $PROGRAM_NAME
  file = File.new(__dir__ + '/input')
  puts sheet_checksum(parse_sheet(file))
end