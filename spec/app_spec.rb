require_relative '../lib/app.rb'

@client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ENV["TWITTER_CONSUMER_KEY"]
  config.consumer_secret     = ENV["TWITTER_CONSUMER_SECRET"]
  config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
  config.access_token_secret = ENV["TWITTER_ACCESS_TOKEN_SECRET"]
end

describe "the like_bonjour method" do
  it "should like client who tweet '#bonjour_monde', and client is not nil" do
    expect(like_bonjour)
  end
end