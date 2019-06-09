class CartsController < ApplicationController
	load_and_authorize_resource
  def show
  	@order_items = current_order.order_items
  end
end
