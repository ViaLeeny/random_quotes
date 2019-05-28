class BooksController < ApplicationController

before_action :find_book, only: [:show]

  def index
    @books = Book.all
  end

  def show
  end

  def new
    @book = Book.new
  end

  def create
    book = Book.create book_params
    redirect_to books_path
  end


private
  def find_book
    @book = Book.find params[:id]
  end

  def book_params
    params.require(:book).permit(:title, :author_id)
  end

end
