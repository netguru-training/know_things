class ProductsController < ApplicationController
  def add
    @products = Product.new()
    @category = Category.all.includes(:subcategories)
    @product = Product.all.order(:name)
    @subcategories = Category.all.where(parent_id: 0)
  end

  def get_list
    respond_to do |format|
      format.json { render json: { results: Product.all } }
    end
  end
end
