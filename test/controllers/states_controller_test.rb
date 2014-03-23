require 'test_helper'

class StatesControllerTest < ActionController::TestCase
  setup do
    @state = FactoryGirl.create(:state)
    @new_state = FactoryGirl.build(:state)
    sign_in FactoryGirl.create(:admin)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:states)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create state" do
    assert_difference('State.count') do
      post :create, state: { alpha2: @new_state.alpha2, country_id: @new_state.country_id, name: @new_state.name }
    end

    assert_redirected_to states_path
  end
=begin

  test "should show state" do
    get :show, id: @state
    assert_response :success
  end
=end

  test "should get edit" do
    get :edit, id: @state
    assert_response :success
  end

  test "should update state" do
    patch :update, id: @state, state: { alpha2: @state.alpha2, country_id: @state.country_id, name: @state.name }
    assert_redirected_to states_path
  end

  test "should destroy state" do
    assert_difference('State.count', -1) do
      delete :destroy, id: @state
    end

    assert_redirected_to states_path
  end
end
