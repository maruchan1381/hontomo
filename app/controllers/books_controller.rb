class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    Book.create(book_params)
  end

  private
  def book_params
    params.require(:book).permit(:title, :author, :discription, :date, :image).merge(user_id: current_user.id)
  end
end
