class DiscussionsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :index]

  def index
  end

  def new
  end

  def create
  end

  def mine
  end

  private
  def discussion_params
    params.require(:discussion).permit(:tag_list)
  end
end
