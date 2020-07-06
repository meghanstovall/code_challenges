def anagrams(word, words)
  words.find_all do |string|
    string.chars.sort == word.chars.sort
  end
end

p anagrams("ab", ["ab", "ba", "ac", "bc"])
