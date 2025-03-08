class BooksController < ApplicationController
  
  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to book_path(@book.id)
  end

  def index
    @user = current_user
  end

  def show
    @book = Book.new
    @book = Book.find
  end

  def edit
  end

  private

  def book_params
    params.require(:book).permit(:title, :body)
  end

end
