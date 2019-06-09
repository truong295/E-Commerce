class ProductsController < ApplicationController
  load_and_authorize_resource
	before_action :find_product,only: :show
  def show
  end
  def index
    @products = Product.all
    @order_item = current_order.order_items.new
  end
  private
  def find_product
  	@product=Product.find_by id: params[:id]
  end
end
