def merge_alternately(word1='abc', word2='def')
    merged = []
  max_length = [word1.length, word2.length].max

  (0...max_length).each do |i|
    merged << word1[i] if i < word1.length
    merged << word2[i] if i < word2.length
  end

  merged.join
end