require "active_record"
require "sinatra"
require "./models/tweet"

# DB 接続
ActiveRecord::Base.establish_connection(adapter: "sqlite3", database: "tweet.sqlite3")

# index
get "/" do
  @tweet_count = Tweet.count
  @tweets = Tweet.all.reverse
  erb :index
end

# create
post "/create" do
  # p params[:text]
  Tweet.create(text: params[:text])
  redirect "/"
end

# DB 切断
ActiveRecord::Base.connection.disconnect!
