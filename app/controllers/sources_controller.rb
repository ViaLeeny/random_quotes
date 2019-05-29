class SourcesController < ApplicationController

before_action :find_source, only: [:show, :edit, :update]

  def index
    @source = Source.all
  end

  def show
  end

  def new
    @source = Source.new
  end

  def create
    source = Source.create source_params
    redirect_to source
  end


private
def source_params
  params.require(:source).permit(:title, :source_type, :link, :author_id)
end

def find_source
  @source = Source.find(params[:id])
end

end 
