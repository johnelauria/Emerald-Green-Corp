require 'test_helper'

class SpaceforleaseimagesControllerTest < ActionController::TestCase
  setup do
    @spaceforleaseimage = spaceforleaseimages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:spaceforleaseimages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create spaceforleaseimage" do
    assert_difference('Spaceforleaseimage.count') do
      post :create, spaceforleaseimage: { description: @spaceforleaseimage.description, image: @spaceforleaseimage.image, spaceforlease_id: @spaceforleaseimage.spaceforlease_id }
    end

    assert_redirected_to spaceforleaseimage_path(assigns(:spaceforleaseimage))
  end

  test "should show spaceforleaseimage" do
    get :show, id: @spaceforleaseimage
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @spaceforleaseimage
    assert_response :success
  end

  test "should update spaceforleaseimage" do
    put :update, id: @spaceforleaseimage, spaceforleaseimage: { description: @spaceforleaseimage.description, image: @spaceforleaseimage.image, spaceforlease_id: @spaceforleaseimage.spaceforlease_id }
    assert_redirected_to spaceforleaseimage_path(assigns(:spaceforleaseimage))
  end

  test "should destroy spaceforleaseimage" do
    assert_difference('Spaceforleaseimage.count', -1) do
      delete :destroy, id: @spaceforleaseimage
    end

    assert_redirected_to spaceforleaseimages_path
  end
end
