# Build a triangular tower of stars in an array that are as deep as the number of floors given
# Ex: towerBuilder(3)
#       => [ '  *  ',
#            ' *** ',
#            '*****' ]

def towerBuilder(floors)
  range =* (1..floors)
  range.map do |num|
    spaces = ' ' * (floors - num)
    stars = '*' * (num * 2 -1)
    spaces + stars + spaces
  end
end

p towerBuilder(3)
p towerBuilder(5)
