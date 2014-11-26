require 'test_helper'

class PremiumPackagesControllerTest < ActionController::TestCase
  setup do
    @premium_package = premium_packages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:premium_packages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create premium_package" do
    assert_difference('PremiumPackage.count') do
      post :create, premium_package: { customer_id: @premium_package.customer_id, price: @premium_package.price, user_id: @premium_package.user_id }
    end

    assert_redirected_to premium_package_path(assigns(:premium_package))
  end

  test "should show premium_package" do
    get :show, id: @premium_package
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @premium_package
    assert_response :success
  end

  test "should update premium_package" do
    patch :update, id: @premium_package, premium_package: { customer_id: @premium_package.customer_id, price: @premium_package.price, user_id: @premium_package.user_id }
    assert_redirected_to premium_package_path(assigns(:premium_package))
  end

  test "should destroy premium_package" do
    assert_difference('PremiumPackage.count', -1) do
      delete :destroy, id: @premium_package
    end

    assert_redirected_to premium_packages_path
  end
end
