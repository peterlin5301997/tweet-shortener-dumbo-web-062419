# Write your code here.
def dictionary
  dictionary = {
    "hello" => "hi",
    "to", "two", "too" => "2",
    "for", "four" => "4",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(string)
  arrWords = string.split
  count = 0
  dictionary
  while count < arrWords.length do
    dictionary.each do |key, value|
      if arrWords[count] == key
        arrWords[count] = value
      end
    end
    count += 1
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
