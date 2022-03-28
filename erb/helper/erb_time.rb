require "erb"
require "./helper"

time = Time.new

erb = ERB.new(File.read("index.html.erb"))
result = erb.result(binding)
File.write("index.html", result)
