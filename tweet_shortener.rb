def dictionary
  dictionary = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  tweet.split.map do |w|
    if dictionary.keys.include?(w.downcase)
      w = dictionary[w.downcase]
    else w
    end
  end.join(" ")
end

def bulk_tweet_shortener(tweet_array)
  tweet_array.map do |tw|
    puts word_substituter(tw)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    tweet.split.map do |w|
      if dictionary.keys.include?(w.downcase)
        w = dictionary[w.downcase]
      else w
      end
    end.join(" ")
  else tweet
end
end

def shortened_tweet_truncator(tweet)
  if selective_tweet_shortener(tweet).length > 140
    return "#{tweet[0...137]}..."
  else
tweet
end
end
