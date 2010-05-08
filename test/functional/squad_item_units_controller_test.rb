require 'test_helper'

class SquadItemUnitsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:squad_item_units)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create squad_item_unit" do
    assert_difference('SquadItemUnit.count') do
      post :create, :squad_item_unit => { }
    end

    assert_redirected_to squad_item_unit_path(assigns(:squad_item_unit))
  end

  test "should show squad_item_unit" do
    get :show, :id => squad_item_units(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => squad_item_units(:one).to_param
    assert_response :success
  end

  test "should update squad_item_unit" do
    put :update, :id => squad_item_units(:one).to_param, :squad_item_unit => { }
    assert_redirected_to squad_item_unit_path(assigns(:squad_item_unit))
  end

  test "should destroy squad_item_unit" do
    assert_difference('SquadItemUnit.count', -1) do
      delete :destroy, :id => squad_item_units(:one).to_param
    end

    assert_redirected_to squad_item_units_path
  end
end
