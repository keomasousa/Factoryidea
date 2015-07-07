require 'test_helper'

class Admin::ClassificationsControllerTest < ActionController::TestCase
  setup do
    @admin_classification = admin_classifications(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_classifications)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_classification" do
    assert_difference('Admin::Classification.count') do
      post :create, admin_classification: {  }
    end

    assert_redirected_to admin_classification_path(assigns(:admin_classification))
  end

  test "should show admin_classification" do
    get :show, id: @admin_classification
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_classification
    assert_response :success
  end

  test "should update admin_classification" do
    patch :update, id: @admin_classification, admin_classification: {  }
    assert_redirected_to admin_classification_path(assigns(:admin_classification))
  end

  test "should destroy admin_classification" do
    assert_difference('Admin::Classification.count', -1) do
      delete :destroy, id: @admin_classification
    end

    assert_redirected_to admin_classifications_path
  end
end
