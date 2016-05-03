require 'test_helper'

class Admin::ManageControllerTest < ActionController::TestCase
  test "should get top" do
    get :top
    assert_response :success
  end

  test "should get manage_users" do
    get :manage_users
    assert_response :success
  end

  test "should get manage_clients" do
    get :manage_clients
    assert_response :success
  end

  test "should get manage_accounts" do
    get :manage_accounts
    assert_response :success
  end

end
