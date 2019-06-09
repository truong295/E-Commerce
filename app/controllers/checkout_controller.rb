class CheckoutController < ApplicationController
  skip_authorization_check 
  def new
  	@order = current_order
  	@order_items = @order.order_items
  end

  def create
  	@check_out = CheckOut.new user_id: current_user.id, order_id: current_order.id
  	if @check_out.save
  		session.destroy
  		redirect_to root_path
  	else
  		redirect_to root_path
  	end
  end
end
