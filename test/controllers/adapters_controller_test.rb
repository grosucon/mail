require 'test_helper'

class AdaptersControllerTest < ActionController::TestCase
  setup do
    @adapter = adapters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:adapters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create adapter" do
    assert_difference('Adapter.count') do
      post :create, adapter: { adress: @adapter.adress, domain: @adapter.domain, password: @adapter.password, port: @adapter.port, user_name: @adapter.user_name }
    end

    assert_redirected_to adapter_path(assigns(:adapter))
  end

  test "should show adapter" do
    get :show, id: @adapter
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @adapter
    assert_response :success
  end

  test "should update adapter" do
    patch :update, id: @adapter, adapter: { adress: @adapter.adress, domain: @adapter.domain, password: @adapter.password, port: @adapter.port, user_name: @adapter.user_name }
    assert_redirected_to adapter_path(assigns(:adapter))
  end

  test "should destroy adapter" do
    assert_difference('Adapter.count', -1) do
      delete :destroy, id: @adapter
    end

    assert_redirected_to adapters_path
  end
end
