class CategoriesController < ApplicationController
  expose(:categories) { Category.main_categories.includes(:subcategories) }
end
