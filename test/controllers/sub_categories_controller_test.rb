require 'test_helper'

class SubCategoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get sub_categories_show_url
    assert_response :success
  end

end
