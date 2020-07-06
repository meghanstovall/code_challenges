# Directions:
# https://www.google.com/url?sa=i&url=https%3A%2F%2Fmedium.com%2F%40spencerwhitehead7%2Fsnail-sort-the-gimmick-sort-goat-310510814eab&psig=AOvVaw3g56ktuUmIxjb2fOpD_Q5U&ust=1593205649441000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCIir2djvneoCFQAAAAAdAAAAABAD


def snail(array)
  if array.empty? # base case
    return []
  elsif array.length == 1
    return array[0]
  else
    arr = array.shift
    index = 0
    until array[index] == nil
      arr << array[index].pop
      index += 1
    end

    until array[-1].empty?
      arr << array[-1].pop
    end
    array.pop

    index = -1
    until array[index] == nil
      arr << array[index].shift
      index -= 1
    end
    return (arr << snail(array)).flatten
  end
end


p snail([[1, 2, 3, 4, 5], [6, 7, 8, 9, 10], [11, 12, 13, 14, 15], [16, 17, 18, 19, 20], [21, 22, 23, 24, 25]])
#  => [1, 2, 3, 4, 5, 10, 15, 20, 25, 24, 23, 22, 21, 16, 11, 6, 7, 8, 9, 14, 19, 18, 17, 12, 13]
