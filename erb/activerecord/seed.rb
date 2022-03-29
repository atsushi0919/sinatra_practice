require "active_record"
require "./models/user"

ActiveRecord::Base.establish_connection(adapter: "sqlite3", database: "test.sqlite3")

User.create(name: "tanaka", email: "tanaka@example.com")
User.create(name: "saitou", email: "saitou1234@example.com")
User.create(name: "kobayasi", email: "kobayasi.forever@example.com")
User.create(name: "suzuki", email: "suzuki.tarou@example.com")
User.create(name: "yamada", email: "yamada.yamada@example.com")

p User.count
ActiveRecord::Base.connection.disconnect!
