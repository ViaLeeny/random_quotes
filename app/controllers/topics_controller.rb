class TopicsController < ApplicationController

before_action :find_topic, only: [:show]
  def index
    @topics = Topic.all
  end

  def show
  end

  private

  def find_topic
    @topic = Topic.find(params[:id])
  end
end
