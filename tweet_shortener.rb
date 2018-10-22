def dictionary
  dict = {
    "hello" => "hi", "you" => "u", "to" => "2", "two" => "2", "too" => "2", "for" => "4", "four" => "4", "be" => "b", "at" => "@", "and" => "&"
  }
end

def word_substituter(tweet)
  tweet.split(" ").map do |word|
    if
      dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else
      word
    end
  end 
  .join(" ")
  
  # .join(" ") works with nothing in front of it because the return value is an array
end
  
def bulk_tweet_shortener(tweets)
  tweets.map {|tweet| puts word_substituter(tweet)} 
end

def selective_tweet_shortener(tweet)
  if
    tweet.chars.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end 

def shortened_tweet_truncator(tweet)
  if 
    word_substituter(tweet).chars.length > 140
    word_substituter(tweet).chars[0..136].push("...").join("")
  else 
    word_substituter(tweet)
  end
end