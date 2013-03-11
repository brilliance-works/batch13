require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  test "should get list_products" do
    get :list_products
    assert_response :success
  end

end
