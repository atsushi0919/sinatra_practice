require "active_record"
require "./models/tweet"

# DB 接続
ActiveRecord::Base.establish_connection(adapter: "sqlite3", database: "tweet.sqlite3")

# Data 登録
Tweet.create(text: "sample")
Tweet.create(text: "Hello World!")
Tweet.create(text: "good night")
Tweet.create(text: "星空がきれいでしたよ")

# DB 切断
ActiveRecord::Base.connection.disconnect!
