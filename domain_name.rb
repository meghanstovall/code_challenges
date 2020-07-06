# Given a url as a parameter, return only a string of the domain name
# Ex: "http://github.com/carbonfive/raygun" => "github"

def domain_name(url)
  arr = url.split("")
  letter = arr.shift
  until letter == "/" || letter == "."
    letter = arr.shift
  end

  if arr[0] == "/"
    arr.shift
  end

  if arr[0] == "w" && arr[1] == "w" && arr[2] == "w" && arr[3] == "."
    4.times {arr.shift}
  end

  index = arr.index(".") - 1
  arr = arr[0..index]
  arr.reduce("") do |acc, char|
    acc += char
    acc
  end
end

p domain_name("https://www.codewars.com/")
