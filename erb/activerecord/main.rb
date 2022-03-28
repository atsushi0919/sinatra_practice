require "active_record"
require "./models/user"

ActiveRecord::Base.establish_connection(adapter: "sqlite3", database: "test.sqlite3")

user = User.new
user.name = "testuser"
user.email = "test@example.com"
user.save

p User.all

ActiveRecord::Base.connection.disconnect!
