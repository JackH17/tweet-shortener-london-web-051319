
phrase = "Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!"

# Write your code here.
require 'pry'


 def dictionary 
dictionary = {
    "Hello" => "hi",
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "four" => '4',
    'be' => 'b',
    'you' => 'u',
    "at" => "@",
    "and" => "&"
}
end

 def word_substituter (string)
  array = string.split(" ")
  array.each_with_index do |words,index|
    

    
    dictionary.keys.each do |x|
      if x == words 
      array[index] = dictionary[x]
      end
      end
      end
array.join(" ")
end


 def bulk_tweet_shortener (array)
array.each_with_index do |tweet, index|
  tweet_array = tweet.split(" ")
  
  binding.pry 
  tweet_array.each_with_index do |word, index|
    dictionary.keys.each do |x|
      if x == word.downcase
        tweet_array[index] = dictionary[x]
      end
    end
  end
  tweet = tweet_array.join(" ")
  puts tweet

   end
end


 def selective_tweet_shortener (tweet)
if tweet.length > 140
  word_substituter(tweet)
else 
 tweet
end
end


 def shortened_tweet_truncator (tweet)

   if tweet.length > 140
   tweet =  word_substituter(tweet)
   tweet[0..136] + "..."
  else
   tweet
  end
  end 