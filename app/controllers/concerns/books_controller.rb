class BooksController < ApplicationController
  define_method :index do
    @books = Book.all
    render :index
  end

  define_method :new do
    @book = Book.new
    render :new
  end

  define_method :show do
    if params[:id] == 'about'
      render :about
    else
      @book = Book.find params[:id]
      render :show
    end
  end

  define_method :create do
    @book = Book.new( book_params )
    if @book.save
      redirect_to books_path
    else
      render :new
    end
  end

  private
  define_method :book_params do
    params.require( :book ).permit( :title, :author, :about, :description, :price, :image, :genre, :rating, :isbn )
  end
end