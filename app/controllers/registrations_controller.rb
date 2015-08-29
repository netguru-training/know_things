class RegistrationsController < Devise::RegistrationsController
  def create
    super
  end

  def new
    @categories = Category.all.includes(:subcategories)
    super
  end
end
