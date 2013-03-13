class MoviesController < ApplicationController
def index
  @books = Book.all
end
def new
 @book = Book.new
end
def create
  book = Book.create(params[:book])
  redirect_to(book)
end
def show
    name = params[:title].gsub(' ', '+')
    url = "http://www.omdbapi.com/?t=#{name}"
    html = HTTParty.get(url)
    @hash = JSON(html)
end
def edit

end
def update
 book = Book.find(params[:id])
 book.update_attributes(params[:book])
 redirect_to(book)
end
def destroy
 book = Book.find(params[:id])
 book.delete
 redirect_to(books_path)
end
end