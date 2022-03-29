require "active_record"

# DB 接続
ActiveRecord::Base.establish_connection(adapter: "sqlite3", database: "tweet.sqlite3")

# table 作成
ActiveRecord::Migration.create_table :tweets do |t|
  t.string :text
  t.timestamp :created_at, null: false
end

# DB 切断
ActiveRecord::Base.connection.disconnect!
