class ProductsController < ApplicationController
  def add
  def get_list
    respond_to do |format|
      format.json { render json: { results: Product.all } }
    end
  end
end
