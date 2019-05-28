class QuotesController < ApplicationController

before_action :find_quote, only: [:edit, :update, :delete]

  def index
    @quotes = Quote.all
  end

  def new
    @quote = Quote.new
  end

  def create
    @quote = Quote.create quote_params
    redirect_to quotes_path
  end

  def edit

  end

  def update
    @quote.update quote_params
    redirect_to quotes_path
  end

  def delete
    @quote.destroy
    redirect_to quotes_path
  end

  def random_quote
    @quote = Quote.all.sample
  end




  private

  def find_quote
    @quote = Quote.find(params[:id])
  end

  def quote_params
    params.require(:quote).permit(:content, :book_id, :topic_id)
  end

end
