class ProductsController < ApplicationController
  def add
    @category = Category.all.includes(:subcategories)
    @product = Product.all.order(:name)
    @subcategories = Category.all.where(parent_id: 0)
  end

  def create
  end

  def get_list
    respond_to do |format|
      format.json { render json: Product.where('name ILIKE ?', "#{params[:q]}%").all }
    end
  end
end
