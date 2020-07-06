def generateHashtag(str)
  return false if (str.delete("\s")).empty? || (str.delete("\s")).length >= 140
  arr = str.split(" ")
  result = "#"
  arr.each do |word|
    result += word.capitalize
  end
  result
end



p generateHashtag("code" + " " * 140 + "wars")
# => #CodeWars
p generateHashtag(" Hello there thanks for trying my Kata")
# # =>  "#HelloThereThanksForTryingMyKata"
p generateHashtag("    Hello     World   ")
# =>  "#HelloWorld"
p generateHashtag("")
# =>  false
