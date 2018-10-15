# Write your code here.
def dictionary
  
  dictionary = {"hello" => 'hi', "to" => '2', "two" => '2', "too" => '2', "for" => '4', "four" => '4', 'be' => 'b', 'you' => 'u', "at" => "@", "and" => "&"}
end

#"Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!"

#Good for a gsub
    #pattern = /\b#{Regexp.union(dictionary.keys)}\b/
    #tweet.gsub!(pattern, dictionary)

def word_substituter(tweet)
  dictionary = {"hello" => 'hi', "to" => '2', "two" => '2', "too" => '2', "for" => '4', "four" => '4', 'be' => 'b', 'you' => 'u', "at" => "@", "and" => "&"}
  keys1 = dictionary.keys
  tweet_in_array = tweet.split
  tweet_in_array.each do |word|
    if keys1.include?(word.downcase)
      tweet_in_array[tweet_in_array.index(word)] = dictionary[word.downcase]
    else
      tweet
end
end.join(" ")
end

def bulk_tweet_shortener(tweet_array)
  tweet_array.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.size > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.size > 140
    word_substituter(tweet)[0..136]+"..."
  else
    tweet
  end
  
  
end