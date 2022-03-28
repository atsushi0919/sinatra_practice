require "erb"

num = 120
current = Time.now
erb = ERB.new(File.read("index.html.erb"))
result = erb.result(binding)
File.write("index.html", result)
