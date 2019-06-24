require "sinatra"
require "googlebooks"

get "/" do
  erb :home
end

get "/results" do
  @books = GoogleBooks.search(params[:search])
  @first_book = @books.first
  erb :results
end

get "/layout" do
  erb :layout
end
