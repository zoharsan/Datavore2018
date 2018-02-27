select tweet_time, tweet_tz, tweet_handle, 
tweet_user, tweet_followers,
tweet_hashtags, tweet_text
from tweets
order by tweet_followers desc
limit 10;
