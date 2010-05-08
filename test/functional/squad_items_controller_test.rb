require 'test_helper'

class SquadItemsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:squad_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create squad_item" do
    assert_difference('SquadItem.count') do
      post :create, :squad_item => { }
    end

    assert_redirected_to squad_item_path(assigns(:squad_item))
  end

  test "should show squad_item" do
    get :show, :id => squad_items(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => squad_items(:one).to_param
    assert_response :success
  end

  test "should update squad_item" do
    put :update, :id => squad_items(:one).to_param, :squad_item => { }
    assert_redirected_to squad_item_path(assigns(:squad_item))
  end

  test "should destroy squad_item" do
    assert_difference('SquadItem.count', -1) do
      delete :destroy, :id => squad_items(:one).to_param
    end

    assert_redirected_to squad_items_path
  end
end
