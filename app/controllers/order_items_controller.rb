class OrderItemsController < ApplicationController
  load_and_authorize_resource
 def create
    @order = current_order
    if @order.id.present?
      @order_item = OrderItem.find_by product_id: params[:order_item][:product_id]
      if @order_item
        @order_item.update_attributes quantity: @order_item.quantity + params[:order_item][:quantity].to_i
      else 
        @order.order_items.new order_item_params
        @order.save
      end
    else 
      @order_new = Order.new user_id: current_user.id
      @order_new.order_items.build order_item_params
      @order_new.save
      session[:order_id] = @order_new.id
    end
    respond_to do |format|
        format.js
    end
  end

  def update
    @order = current_order
    @order_item = @order.order_items.find(params[:id])
    @order_item.update_attributes(:quantity => @order_item.quantity + 1)
    @order_items = @order.order_items
  end

  def destroy
    @order = current_order
    @order_item = @order.order_items.find(params[:id])
    @order_item.destroy
    @order_items = @order.order_items
  end
private
  def order_item_params
    params.require(:order_item).permit(:quantity, :product_id)
  end
end
