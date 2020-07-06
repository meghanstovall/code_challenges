# Given an array as an argument, complete the function countSmileys that should
# return the total number of smiling faces.
#
# Rules for a smiling face:
#   Each smiley face must contain a valid pair of eyes. Eyes can be marked as : or ;
#   A smiley face can have a nose but it does not have to. ( - or ~ )
#   Every smiley face must have a smiling mouth, ) or D
#
# No additional characters are allowed except for those mentioned.


def count_smileys(arr)
  if arr.empty?
    return 0
  else
    smiley = arr.pop
    if smiley[0] != ":" && smiley[0] != ";"
      count_smileys(arr)
    elsif smiley[1] != "-" && smiley[1] != "~" && smiley[1] != ")" && smiley[1] != "D"
      count_smileys(arr)
    elsif smiley.length == 3 && smiley[2] != ")" && smiley[2] != "D"
      count_smileys(arr)
    else
      return 1 + count_smileys(arr)
    end
  end
end

p count_smileys([":)",":(",":D",":O",":;"])
