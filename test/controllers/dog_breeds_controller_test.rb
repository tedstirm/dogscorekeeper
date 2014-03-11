require 'test_helper'

class DogBreedsControllerTest < ActionController::TestCase
  setup do
    @dog_breed = FactoryGirl.create(:dog_breed)
    sign_in FactoryGirl.create(:admin)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dog_breeds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dog_breed" do
    assert_difference('DogBreed.count') do
      post :create, dog_breed: { dog_breed_group_id: @dog_breed.dog_breed_group_id, name: @dog_breed.name }
    end

    assert_redirected_to dog_breeds_path
  end
=begin

  test "should show dog_breed" do
    get :show, id: @dog_breed
    assert_response :success
  end
=end

  test "should get edit" do
    get :edit, id: @dog_breed
    assert_response :success
  end

  test "should update dog_breed" do
    patch :update, id: @dog_breed, dog_breed: { dog_breed_group_id: @dog_breed.dog_breed_group_id, name: @dog_breed.name }
    assert_redirected_to dog_breeds_path
  end

  test "should destroy dog_breed" do
    assert_difference('DogBreed.count', -1) do
      delete :destroy, id: @dog_breed
    end

    assert_redirected_to dog_breeds_path
  end
end
