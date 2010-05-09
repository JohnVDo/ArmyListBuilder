require 'test_helper'

class ArmyListsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:army_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create army_list" do
    assert_difference('ArmyList.count') do
      post :create, :army_list => { }
    end

    assert_redirected_to army_list_path(assigns(:army_list))
  end

  test "should show army_list" do
    get :show, :id => army_lists(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => army_lists(:one).to_param
    assert_response :success
  end

  test "should update army_list" do
    put :update, :id => army_lists(:one).to_param, :army_list => { }
    assert_redirected_to army_list_path(assigns(:army_list))
  end

  test "should destroy army_list" do
    assert_difference('ArmyList.count', -1) do
      delete :destroy, :id => army_lists(:one).to_param
    end

    assert_redirected_to army_lists_path
  end
end
