require "tilt/erubis"
require "sinatra"
require "sinatra/reloader"

before do
  @contents = File.readlines "data/toc.txt"
end

get "/" do
  @title = "The Adventures of Sherlock Holmes"

  erb :home
end

get "/chapter/1" do
  @title = "The Adventures of Sherlock Holmes"
  @chapter = File.read("data/chp1.txt")
  
  erb :chapter
end