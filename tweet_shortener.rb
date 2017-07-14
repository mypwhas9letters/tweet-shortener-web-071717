# Write your code here.'
require 'pry'
def dictionary
  {"hello" => "hi", 'to' => '2',"two" => '2', 'too' => '2', 'four' => '4', 'for' => '4', 'be' => 'b', 'you' => 'u', 'at' => '@', 'and' => '&'}
end

def word_substituter (tweet)
  arr = tweet.split(" ")
  arr.map do |i|
    dictionary.map do |x,y|
      if i.downcase == x
        i.replace(y)
    end
  end
end
arr.join(" ")
end


def bulk_tweet_shortener (tweet)
  tweet.map{|x| puts word_substituter(x)}
end

def selective_tweet_shortener (tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    return tweet
end
end

def shortened_tweet_truncator (tweet)
  x = word_substituter(tweet)
  if x.length > 140
    return x[1..140]
  else
    return x
  end
end
