require 'test_helper'

class SpaceforleasesControllerTest < ActionController::TestCase
  setup do
    @spaceforlease = spaceforleases(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:spaceforleases)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create spaceforlease" do
    assert_difference('Spaceforlease.count') do
      post :create, spaceforlease: { description: @spaceforlease.description, level: @spaceforlease.level, main_image: @spaceforlease.main_image, unit: @spaceforlease.unit }
    end

    assert_redirected_to spaceforlease_path(assigns(:spaceforlease))
  end

  test "should show spaceforlease" do
    get :show, id: @spaceforlease
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @spaceforlease
    assert_response :success
  end

  test "should update spaceforlease" do
    put :update, id: @spaceforlease, spaceforlease: { description: @spaceforlease.description, level: @spaceforlease.level, main_image: @spaceforlease.main_image, unit: @spaceforlease.unit }
    assert_redirected_to spaceforlease_path(assigns(:spaceforlease))
  end

  test "should destroy spaceforlease" do
    assert_difference('Spaceforlease.count', -1) do
      delete :destroy, id: @spaceforlease
    end

    assert_redirected_to spaceforleases_path
  end
end
