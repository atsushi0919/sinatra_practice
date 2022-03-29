require "active_record"
require "erb"
require "./models/user"

ActiveRecord::Base.establish_connection(adapter: "sqlite3", database: "test.sqlite3")

users = User.all
user_count = User.count
erb = ERB.new(File.read("index.html.erb"))
result = erb.result(binding)
File.write("index.html", result)

ActiveRecord::Base.connection.disconnect!
