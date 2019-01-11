require "tilt/erubis"
require "sinatra"
require "sinatra/reloader"

get "/" do
  @title = "The Adventures of Sherlock Holmes"
  @contents = File.readlines "data/toc.txt"

  erb :home
end

get "/chapter/1" do
  @title = "The Adventures of Sherlock Holmes"
  @chapter = File.read("data/chp1.txt")
  
  erb :chapter
end