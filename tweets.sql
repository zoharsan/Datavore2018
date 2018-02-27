create external table tweets(
  tweet_id bigint, 
  tweet_unixtime bigint, 
  tweet_time string, 
  tweet_tz string, 
  tweet_handle string,
  tweet_user string,
  tweet_followers int,
  tweet_hashtags string,
  tweet_text string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '|'
STORED AS TEXTFILE
LOCATION '/tmp/tweets_staging';
