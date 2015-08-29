class CategoriesController < ApplicationController
  def index
    @categories = Category.main_categories.includes(:subcategories)
  end
end
