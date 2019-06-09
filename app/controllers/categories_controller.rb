class CategoriesController < ApplicationController
	load_and_authorize_resource
  def index
  	@categories=Category.all
  end
  def show
  	@category=Category.find_by id: params[:id]
  	@products=@category.products
  end
end
