def valid_parentheses(string)
  str = string.gsub(/[^(),.]/, "")

  count = 0
  str.chars.each do |char|
    count += 1 if char == "("
    count -= 1 if char == ")"
    break if count < 0
  end

  count == 0
end


p valid_parentheses("hi())(")
#  false
p valid_parentheses("hi(hi)()")
#  true
