# Write your code here.
require 'pry'

=begin
"hello" becomes 'hi'
"to, two, too" become '2' 
"for, four" become '4'
'be' becomes 'b'
'you' becomes 'u'
"at" becomes "@" 
"and" becomes "&"
=end

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



def word_substituter(orig_tweet)
    tweet_arr = orig_tweet.split(" ") # Turn the string into an array
    tweet_arr_len = tweet_arr.length # Save the length of tweet_arr
    dictionary.each do |key, value| # Iterate through dictionary, each time taking 1 key:value pair
        for each_word in (0..tweet_arr_len) 
        # Will enable iteration thru tweet_arr by providing one index (i.e word) at a time to test
            if tweet_arr[each_word] == key || tweet_arr[each_word] == key.capitalize
            # tests to see if the word in the tweet_arr is equal to current key being passed
                tweet_arr[each_word] = value 
            end
        end
    end
    tweet_arr.join(" ")
end

def bulk_tweet_shortener(arr_orig_tweet)
    arr_orig_tweet.each do |tweet|
        puts word_substituter(tweet)
    end
end

def selective_tweet_shortener(orig_tweet)
    if orig_tweet.length > 140
        word_substituter(orig_tweet)
    else
        orig_tweet
    end
end

def shortened_tweet_truncator(orig_tweet)
    new_tweet = selective_tweet_shortener(orig_tweet)
    if new_tweet.length > 140
        new_tweet_short = new_tweet[0..135] + " ..."
    else
        new_tweet
    end
end

=begin
Trash code maybe to come back to

tweet_arr.each do |orig_word| #iterate through each index of tweet_array
    # Compare orig_word with the list of dictionary keys, by iterating through them.
    # If orig_word and key match, find the corresponing value for the key and replace
    # the index where the orig_word is located.
    dictionary.keys 
end

=end