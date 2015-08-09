# Implement a method #substrings that takes a word as the first argument and then an array of valid substrings
# (your dictionary) as the second argument. It should return a hash listing each substring (case insensitive) that was
# found in the original string and how many times it was found.

def substrings(word_string, dictionary)
  results = {}
  count = 0
  word_array = (word_string.downcase).split(' ')
  dictionary.each do |search_phrase|
    word_array.each do |word|
      count+=1 if (word.include? search_phrase)
    end
    results[search_phrase] = count if count > 0
    count = 0
  end
  return results
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("Howdy partner, sit down! How's it going?", dictionary)