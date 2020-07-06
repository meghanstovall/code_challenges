def duplicate_encode(word)
  characters = word.downcase.split("").reduce({}) do |acc, chr|
    if acc.has_key?(chr)
      acc[chr] += 1
    else
      acc[chr] = 1
    end
    acc
  end

  result = ""
  word.downcase.split("").each do |chr|
    if characters[chr] == 1
      result += "("
    else
      result += ")"
    end
  end
  result
end

p duplicate_encode("din")
p duplicate_encode("recede")
