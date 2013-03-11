require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  test "should get login" do
    get :login
    assert_response :success
  end

  test "should get logout" do
    get :logout
    assert_response :success
  end

  test "should get list_users" do
    get :list_users
    assert_response :success
  end

  test "should get new_user" do
    get :new_user
    assert_response :success
  end

  test "should get create_user" do
    get :create_user
    assert_response :success
  end

end
