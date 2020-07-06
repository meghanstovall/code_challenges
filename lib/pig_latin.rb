# Change string to pig latin (first letter at end of word and add 'ay'),
# but leave special characters alone

def pig_it(string)
  arr = string.split(" ")
  result = ""
  arr.each do |word|
    # Check if word is containing only letters and not special characters
    if word.match? /\A[a-zA-Z']*\z/
      result += (word[1..-1] + word[0] + "ay ")
    else
      result += (word + " ")
    end
  end
  result[0...-1]
end

p pig_it('Pig latin is cool')
# igPay atinlay siay oolcay
