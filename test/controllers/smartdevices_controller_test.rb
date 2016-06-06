require 'test_helper'

class SmartdevicesControllerTest < ActionController::TestCase
  setup do
    @smartdevice = smartdevices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:smartdevices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create smartdevice" do
    assert_difference('Smartdevice.count') do
      post :create, smartdevice: { ammount: @smartdevice.ammount, buy_date: @smartdevice.buy_date, device_kind: @smartdevice.device_kind, device_model: @smartdevice.device_model }
    end

    assert_redirected_to smartdevice_path(assigns(:smartdevice))
  end

  test "should show smartdevice" do
    get :show, id: @smartdevice
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @smartdevice
    assert_response :success
  end

  test "should update smartdevice" do
    patch :update, id: @smartdevice, smartdevice: { ammount: @smartdevice.ammount, buy_date: @smartdevice.buy_date, device_kind: @smartdevice.device_kind, device_model: @smartdevice.device_model }
    assert_redirected_to smartdevice_path(assigns(:smartdevice))
  end

  test "should destroy smartdevice" do
    assert_difference('Smartdevice.count', -1) do
      delete :destroy, id: @smartdevice
    end

    assert_redirected_to smartdevices_path
  end
end
