require 'test_helper'

class DogBreedGroupsControllerTest < ActionController::TestCase
  setup do
    @dog_breed_group = FactoryGirl.create(:dog_breed_group)
    sign_in FactoryGirl.create(:admin)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dog_breed_groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dog_breed_group" do
    assert_difference('DogBreedGroup.count') do
      post :create, dog_breed_group: { name: @dog_breed_group.name }
    end

    assert_redirected_to dog_breed_groups_path
  end
=begin

  test "should show dog_breed_group" do
    get :show, id: @dog_breed_group
    assert_response :success
  end
=end

  test "should get edit" do
    get :edit, id: @dog_breed_group
    assert_response :success
  end

  test "should update dog_breed_group" do
    patch :update, id: @dog_breed_group, dog_breed_group: { name: @dog_breed_group.name }
    #assert_redirected_to dog_breed_group_path(assigns(:dog_breed_group))
    assert_redirected_to dog_breed_groups_path
  end

  test "should destroy dog_breed_group" do
    assert_difference('DogBreedGroup.count', -1) do
      delete :destroy, id: @dog_breed_group
    end

    assert_redirected_to dog_breed_groups_path
  end
end
