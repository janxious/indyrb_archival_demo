require 'test_helper'

class YysControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:yys)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create yy" do
    assert_difference('Yy.count') do
      post :create, :yy => { }
    end

    assert_redirected_to yy_path(assigns(:yy))
  end

  test "should show yy" do
    get :show, :id => yys(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => yys(:one).to_param
    assert_response :success
  end

  test "should update yy" do
    put :update, :id => yys(:one).to_param, :yy => { }
    assert_redirected_to yy_path(assigns(:yy))
  end

  test "should destroy yy" do
    assert_difference('Yy.count', -1) do
      delete :destroy, :id => yys(:one).to_param
    end

    assert_redirected_to yys_path
  end
end
