# Write your code here.
def dictionary
  dictionary = {
    "hello" => "hi",
    "to" => "2", "two" => "2", "too" => "2",
    "for" => "4", "four" => "4",
    "be" => "b",
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
      if arrWords[count] == key || arrWords[count] == key.capitalize
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

def bulk_tweet_shortener(array)
  array.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(string)
  if string.length <= 140
    return string
  else
    return word_substituter(string)
  end
end

def shortened_tweet_truncator(string)
  truncate = ""
  if string.length > 140
    truncate = string[0..136]
    return truncate + "..."
  else
    return string
  end
end
