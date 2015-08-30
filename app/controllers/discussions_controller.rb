class DiscussionsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :index]

  def new
  end

  def mine
  end

  def index
  end

  private
  def discussion_params
    params.require(:discussion).permit(:tag_list)
  end
end
