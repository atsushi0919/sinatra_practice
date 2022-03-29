require "erb"

class User
  attr_reader :first_name, :last_name, :age

  def initialize(first_name, last_name, age)
    @first_name = first_name
    @last_name = last_name
    @age = age
  end
end

data = [
  ["たなか", "ちひろ", 28],
  ["やまだ", "さとみ", 27],
  ["さとう", "ともや", 24],
  ["しまだ", "ようすけ", 56],
]

members = data.map do |first_name, last_name, age|
  User.new(first_name, last_name, age)
end

erb = ERB.new(File.read("index.html.erb"))
result = erb.result(binding)
File.write("index.html", result)
