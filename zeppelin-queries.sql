%sql
--Top 10 tweets
select tweet_handle, tweet_user, tweet_followers, tweet_hashtags, tweet_text from tweets order by tweet_followers desc limit 10

%sql
--Top 5 trending hashtags
select tweet_hashtags, count(tweet_hashtags) as count_tweets from tweets group by tweet_hashtags order by count_tweets desc limit 5

%sql
--Tweet Flow per minute
with tweetspermin AS (
select int(tweet_unixtime/60000) as ts_minutes, tweet_id, tweet_tz, tweet_hashtags 
from tweets 
)
select from_unixtime(ts_minutes*60),count(tweet_id) as num_tweets
from tweetspermin
group by ts_minutes
order by ts_minutes asc


