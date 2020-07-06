# Write a function that is given a positive number and return the roman numeral string

def solution(number)
  symbols = {1 => "I", 4 => "IV", 5 => "V", 9 => "IX", 10 => "X", 40 => "XL", 50 => "L",
              90 => "XC", 100 => "C", 400 => "CD", 500 => "D", 900 => "CM", 1000 => "M"}
  if symbols.has_key?(number)
    return symbols[number]
  elsif number < 5
    return "I" * number
  else
    if number / 1000 > 0
      symbols[1000] + solution(number - 1000)
    elsif number / 900 > 0
      symbols[900] + solution(number - 900)
    elsif number / 500 > 0
      symbols[500] + solution(number - 500)
    elsif number / 400 > 0
      symbols[400] + solution(number - 400)
    elsif number / 100 > 0
      symbols[100] + solution(number - 100)
    elsif number / 90 > 0
      symbols[90] + solution(number - 90)
    elsif number / 50 > 0
      symbols[50] + solution(number - 50)
    elsif number / 40 > 0
      symbols[40] + solution(number - 40)
    elsif number / 10 > 0
      symbols[10] + solution(number - 10)
    elsif number / 9 > 0
      symbols[9] + solution(number - 9)
    elsif number / 5 > 0
      symbols[5] + solution(number - 5)
    elsif number / 4 > 0
      symbols[4] + solution(number - 4)
    end
  end
end

p solution(59)
