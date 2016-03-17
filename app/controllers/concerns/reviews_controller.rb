class ReviewsController < ApplicationController
  define_method :new do
    @book = Book.find params[:book_id]
    @review = @book.reviews.new
  end

  define_method :create do
    @book = Book.find params[:book_id]
    @review = @book.reviews.new(review_params)
    if @review.save
      redirect_to book_path( @review.book )
    else
      render :new
    end
  end

  private
  define_method :review_params do
    params.require( :review ).permit( :reply, :by )
  end
end