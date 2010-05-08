require 'test_helper'

class SquadsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:squads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create squad" do
    assert_difference('Squad.count') do
      post :create, :squad => { }
    end

    assert_redirected_to squad_path(assigns(:squad))
  end

  test "should show squad" do
    get :show, :id => squads(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => squads(:one).to_param
    assert_response :success
  end

  test "should update squad" do
    put :update, :id => squads(:one).to_param, :squad => { }
    assert_redirected_to squad_path(assigns(:squad))
  end

  test "should destroy squad" do
    assert_difference('Squad.count', -1) do
      delete :destroy, :id => squads(:one).to_param
    end

    assert_redirected_to squads_path
  end
end
