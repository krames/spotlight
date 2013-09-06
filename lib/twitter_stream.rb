require 'tweetstream'
require 'awesome_print'
 
Rails.logger = Logger.new(STDOUT)
 
TweetStream.configure do |config|
  # config.consumer_key       = '2lqo0ODlAXbefdDACoeuBA'
  # config.consumer_secret    = 'uapqalhIWzb78sGILSQPe2gzdDgU2TIvQpbiiwOv7rE'
  # config.oauth_token        = 'MU4sUtSYUil9Tap7J3BXpgdqEK1WyLIOWD3plbK'
  # config.oauth_token_secret = '0WrQSC6sgjvUqCLJmG7wfdNo7CUTzo4s5dgHgjpJqD8'
  config.consumer_key       = 'jYwv4DIOKFVdYWlYqbzhg'
  config.consumer_secret    = '9vf8oLclkdpYWr4P7BvFArHW3AUUmAL58wAVFA8rg'
  config.oauth_token        = '6998902-qvxe7tEmaGafvAEIjODheOrL4kfX2Tg7hk5lPp2iem'
  config.oauth_token_secret = 'ayF4jcYBWgv4AriS3bdoypf9osW6XjB6vWhxwfKGk'

  config.auth_method        = :oauth
end
 
Rails.logger.info "[Twitter] Listening to the Twitter Firehose"


# This will pull a sample of all tweets based on
# your Twitter account's Streaming API role.
client = TweetStream::Client.new
 
client.on_delete do |status_id, user_id|
   Rails.logger.warn "[Twitter] something about delete status id>> #{status_id} user_id>> #{user_id}"
  Tweet.delete(status_id)
end
 
client.on_limit do |skip_count|
  Rails.logger.warn "[Twitter] We are being limited #{skip_count}"
end
 
client.on_enhance_your_calm do
  Rails.logger.warn "[Twitter] We need to enhance our calm"
end
 
 
client.on_error do |message|
  Rails.logger.error "[Twitter] ERROR>> #{message.inspect}"
end
 
#client.track('easter', '@rackspace fog', '@rubygems rackspace', '@rackspace ruby', 'ruby fog') do |status|
client.track('rackspace') do |status|
  # The status object is a special Hash with
  # method access to its keys.
  # ap status.attrs
   Rails.logger.info "#{status.user.screen_name}>> #{status.text}"
   Mention.create :blurb => status.text, 
    :username => status.user.screen_name, 
    :adapter_configuration_id => 1, 
    :link => "https://twitter.com/#{status.user.screen_name}/status/#{status.id}"
end