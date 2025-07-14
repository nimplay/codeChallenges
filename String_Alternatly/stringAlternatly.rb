# You are given two strings word1 and word2.
# Merge the strings by adding letters in alternating order,
# starting with word1. If a string is longer than the other,
# append the additional letters onto the end of the merged string.
# Return the merged string.

start_time = Time.now
def merge_alternately(word1='abc', word2='def')
    merged = []
  max_length = [word1.length, word2.length].max

  (0...max_length).each do |i|
    merged << word1[i] if i < word1.length
    merged << word2[i] if i < word2.length
  end

  merged.join

end
puts merge_alternately('abc', 'def')

puts "--- Tiempo: #{Time.now - start_time} segundos ---"


