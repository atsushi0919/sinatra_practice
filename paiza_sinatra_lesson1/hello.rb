require "sinatra"
require "sinatra/reloader"
require "erb"

get "/" do
  @message = "世界の皆さん、コンニチハ"
  erb :index
end
