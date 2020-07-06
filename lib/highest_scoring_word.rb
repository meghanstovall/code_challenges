# Return the highest scoring individual string that is in the larger string given
# The score of the string is sum of the numbers that coorespond to the position
# of the letter within the alphabet
# Ex: "aaa" = 1+1+1

def high(string)
  letters =*("a".."z")
  hsh = letters.reduce({}) do |acc, char|
    acc[char] = char.bytes[0] - 96
    acc
  end

  result = []
  string.split(" ").each do |str|
    val = str.split("").reduce(0) do |sum, letter|
      sum += hsh[letter]
      sum
    end
    result << val
  end
  index = result.find_index(result.max)
  string.split(" ")[index]
end

p high('aaa b')
