class UsersController < ApplicationController



  def index
    @user = User.find(params[:id])
  end

  def show
    @book = Book.new
  end

  def edit
  end
end
