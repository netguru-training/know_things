class DiscussionsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :index]

  expose(:discussions)
  expose(:discussion, attributes: :discussion_params)

  def create
    discussion.user = current_user
    if discussion.save
      redirect_to discussion_path(discussion), notice: I18n.t('shared.created', resource: 'Discussion')
    else
      render :new
    end
  end

  private
  def discussion_params
    params.require(:discussion).permit(:tag_list, { messages_attributes: :content }, :product_id)
  end
end
