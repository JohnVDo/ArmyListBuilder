require 'test_helper'

class TroopChoicesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:troop_choices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create troop_choice" do
    assert_difference('TroopChoice.count') do
      post :create, :troop_choice => { }
    end

    assert_redirected_to troop_choice_path(assigns(:troop_choice))
  end

  test "should show troop_choice" do
    get :show, :id => troop_choices(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => troop_choices(:one).to_param
    assert_response :success
  end

  test "should update troop_choice" do
    put :update, :id => troop_choices(:one).to_param, :troop_choice => { }
    assert_redirected_to troop_choice_path(assigns(:troop_choice))
  end

  test "should destroy troop_choice" do
    assert_difference('TroopChoice.count', -1) do
      delete :destroy, :id => troop_choices(:one).to_param
    end

    assert_redirected_to troop_choices_path
  end
end
