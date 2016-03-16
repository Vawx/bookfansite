class BooksController < ApplicationController
  define_method :index do
    @books = Book.all
    render :index
  end

  define_method :new do
    @book = Book.new
    render :new
  end
end