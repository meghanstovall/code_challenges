# Bob is preparing to pass IQ test.
# The most frequent task in this test is to find out which one of the given
# numbers differs from the others. Bob observed that one number usually differs
# from the others in evenness. Help Bob — to check his answers, he needs a
# program that among the given numbers finds one that is different in evenness,
# and return a position of this number.
#
# ! Keep in mind that your task is to help Bob solve a real IQ test,
# which means indexes of the elements start from 1 (not 0)

def iq_test(numbers)
  data = numbers.split(" ")
  hsh = Hash[data.map.with_index.to_a]

  odds = data.find_all {|num| num.to_i % 2 != 0}
  if odds.length == 1
    hsh[odds[0]] + 1
  else
    even = data.find {|num| num.to_i % 2 == 0}
    hsh[even] + 1
  end
end

iq_test("2 4 7 8 10")
