require 'test_helper'

class XxesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:xxes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create xx" do
    assert_difference('Xx.count') do
      post :create, :xx => { }
    end

    assert_redirected_to xx_path(assigns(:xx))
  end

  test "should show xx" do
    get :show, :id => xxes(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => xxes(:one).to_param
    assert_response :success
  end

  test "should update xx" do
    put :update, :id => xxes(:one).to_param, :xx => { }
    assert_redirected_to xx_path(assigns(:xx))
  end

  test "should destroy xx" do
    assert_difference('Xx.count', -1) do
      delete :destroy, :id => xxes(:one).to_param
    end

    assert_redirected_to xxes_path
  end
end
