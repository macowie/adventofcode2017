def phrase_valid?(phrase)
  words = phrase.split(/\s/)
  words.uniq.count == words.count
end

if __FILE__ == $PROGRAM_NAME
  file = File.new(__dir__ + '/input')
  valid_count = file.readlines
                    .select { |line| phrase_valid?(line) }
                    .size
  puts valid_count
end