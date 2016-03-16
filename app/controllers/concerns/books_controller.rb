class BooksController < ApplicationController
  define_method :index do
    @books = Book.all
    render :index
  end
end