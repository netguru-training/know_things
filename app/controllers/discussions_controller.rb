class DiscussionsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :index]

  def index
    @discussions = Discussion.all
  end

  def new
    @discussion = Discussion.new
  end

  def create
  end

  def mine
  end

  private
  def discussion_params
    params.require(:discussion).permit(:tag_list, :question, :product_id)
  end
end
