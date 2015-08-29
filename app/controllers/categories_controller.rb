class CategoriesController < ApplicationController
  def index
    @categories = Category.main_category.includes(:subcategories)
  end
end
