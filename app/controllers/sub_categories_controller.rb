class SubCategoriesController < ApplicationController
	load_and_authorize_resource
  before_action :find_sub_category, only: :show
  def show
  end

  private 

  def find_sub_category
  	@sub_category = SubCategory.find_by id: params[:id]
  	@products=@sub_category.products
  end
end
