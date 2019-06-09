class ApplicationController < ActionController::Base
	 skip_before_action :verify_authenticity_token  
	 protect_from_forgery with: :exception
	 helper_method :current_order
	 before_action :get_values, :search
	   check_authorization unless: :devise_controller?

	  def current_order
	    if !session[:order_id].nil?
	      Order.find(session[:order_id])
	    else
	      Order.new
	    end
	  end

	  def get_values
	  	@newestproducts = Product.newest.take(4)
	    @products_all = Product.all
	    @featured= Product.take(6)
	    @bestsellerproducts= Product.bestseller.take(4)
	    @laptops = find_laptops @products_all
	    @mobile_phones = find_mobile @products_all
	    @categories=Category.all
	    @sub_categories=SubCategory.all
	    @order = current_order
	    @order_item = @order.order_items.new
	  end


	  def search
	  	@q = Product.ransack params[:q]
	  	@products = @q.result
	  	if params[:q]
	  		render "layouts/search"
	  	end
	  	
	  end

	  private

  def find_laptops products
  	laptops = []
  	products.each do |product|
  		if product.category.name == 'Laptops'
  			laptops << product
  		end
  	end
  	return laptops
  end

  def find_mobile products
  	mobiles = []
  	products.each do |product|
  		if product.category.name == 'Mobile Phones'
  			mobiles << product
  		end
  	end
  	return mobiles
  end
end
