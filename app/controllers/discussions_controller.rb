class DiscussionsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :index]

  expose(:discussions)
  expose(:discussion)

  private
  def discussion_params
    params.require(:discussion).permit(:tag_list, :question, :product_id)
  end
end
