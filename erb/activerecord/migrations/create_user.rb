require "active_record"

ActiveRecord::Base.establish_connection(adapter: "sqlite3", database: "test.sqlite3")
ActiveRecord::Migration.create_table :users do |t|
  t.string :name
  t.string :email
  t.timestamp :created_at, :null => false
end
ActiveRecord::Base.connection.disconnect!
