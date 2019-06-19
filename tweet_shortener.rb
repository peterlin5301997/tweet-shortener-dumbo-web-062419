# Write your code here.
def dictionary
  dictionary = {
    "hello" => "hi",
    "to, two, too" => "2",
    "for, four" => "4",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(string)
  arrWords = string.split
  arrWords.each do |word|
    if word == dictionary.keys
      word = dictionary.values
    end
  end
  strWords = ""
  arrWords.each do |word|
    if word == arrWords.last
      strWords += word
    else
      strWords += word + " "
    end
  end
  return strWords
end
