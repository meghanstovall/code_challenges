def unique_in_order(iterable)
  result = []
  until iterable.length == 0
    if iterable.instance_of?(Array)
      chr = iterable.shift
    elsif iterable.instance_of?(String)
      chr = iterable[0]
      iterable = iterable[1..-1]
    end
    result << chr if result[-1] != chr
  end
  result
end

p unique_in_order('AAAABBBCCDAABBB')
