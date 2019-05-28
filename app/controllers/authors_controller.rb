class AuthorsController < ApplicationController

before_action :find_author, only: [:show]

  def index
    @authors = Author.all
  end

  def show
  end

  def new
    @author = Author.new
  end

  def create
    author = Author.create author_params
    redirect_to authors_path
  end


private

  def find_author
    @author = Author.find params[:id]
  end

  def author_params
     params.require(:author).permit(:name)
  end

end
