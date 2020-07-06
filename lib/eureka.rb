# Given two numbers, out put an array of numbers between the given two where 
# each digit in the number raised to consecutive powers equals the original number
# Ex: 89 = 8^1 + 9^2

def sum_dig_pow(a, b)
  range =*(a..b)
  result = []
  range.each do |num|
    if num < 10
      result << num
    else
      num_array = num.to_s.split("")
      val = 0
      num_array.each_with_index do |num, index|
        val += num.to_i**(index+1)
      end
      if val == num
        result << num
      end
    end
  end
  result
end


p sum_dig_pow(1, 100)
