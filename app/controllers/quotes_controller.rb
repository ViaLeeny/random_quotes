class QuotesController < ApplicationController

before_action :find_quote, only: [:edit, :show, :update, :destroy]

  def index
    @quotes = Quote.all
  end

  def show
  end

  def new
    @quote = Quote.new
    @source_types = available_sources
  end

  def create
    author = Author.find_or_create_by(name: params[:author])
    source = Source.find_or_create_by(title: params[:source], link: params[:link], source_type: params[:source_type], author_id: author.id)
    topic = Topic.find_or_create_by(name: params[:topic])
    @quote = Quote.new(content: params[:quote], topic_id: topic.id, source_id: source.id)

    if @quote.valid?
      @quote.save
      redirect_to quote_path(@quote)

    else
      flash[:errors] = @quote.errors.full_messages
      redirect_to new_quote_path
    end

    #add byebug to see params
    #@source = Source.find_or_create_by(title: source_params[:title])

    # @quote = Quote.create(content: params[:quote][:content], topic_id: params[:quote][:topic_id], source_id: params[:quote][:source_id])
    # @source = Source.find_or_create_by(title: source_params[:title]) do |source|
    #   source.assign_attributes(type: source_params[:type], title: source_params[:title], link: source_params[:link], author_id: source_params[:author_id])
    # @quote.sources << @source
    # redirect_to quotes_path
  end

  def edit
  end

  def update
    @quote.update quote_params
    redirect_to quotes_path
  end

  def destroy
    @quote.destroy
    redirect_to quotes_path
  end

  def random_quote
    @quote = Quote.all.sample
  end

  def home
  end




private

  def available_sources
    [[ "Other", "Other"],
     [ "Book", "Book"],
     [ "Video", "Video"],
     [ "Speech", "Speech"]
    ]
  end

  def find_quote
    @quote = Quote.find(params[:id])
  end

  def quote_params
    params.require(:quote).permit(:content, :source_id, :topic_id)
  end

end
