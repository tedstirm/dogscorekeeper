require 'test_helper'

class CountriesControllerTest < ActionController::TestCase
  setup do
    @country = FactoryGirl.create(:country)
    @new_country = FactoryGirl.build(:country, name: "new_country")
    sign_in FactoryGirl.create(:admin)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:countries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create country" do
    assert_difference('Country.count') do
      post :create, country: { name: @new_country.name }
    end

    assert_redirected_to countries_path
  end

=begin
  test "should show country" do
    get :show, id: @country
    assert_response :success
  end
=end

  test "should get edit" do
    get :edit, id: @country
    assert_response :success
  end

  test "should update country" do
    patch :update, id: @country, country: { name: @country.name }
    assert_redirected_to countries_path
  end

  test "should destroy country" do
    assert_difference('Country.count', -1) do
      delete :destroy, id: @country
    end

    assert_redirected_to countries_path
  end
end
