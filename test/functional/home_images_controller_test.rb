require 'test_helper'

class HomeImagesControllerTest < ActionController::TestCase
  setup do
    @home_image = home_images(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:home_images)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create home_image" do
    assert_difference('HomeImage.count') do
      post :create, home_image: { description: @home_image.description, image: @home_image.image }
    end

    assert_redirected_to home_image_path(assigns(:home_image))
  end

  test "should show home_image" do
    get :show, id: @home_image
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @home_image
    assert_response :success
  end

  test "should update home_image" do
    put :update, id: @home_image, home_image: { description: @home_image.description, image: @home_image.image }
    assert_redirected_to home_image_path(assigns(:home_image))
  end

  test "should destroy home_image" do
    assert_difference('HomeImage.count', -1) do
      delete :destroy, id: @home_image
    end

    assert_redirected_to home_images_path
  end
end
