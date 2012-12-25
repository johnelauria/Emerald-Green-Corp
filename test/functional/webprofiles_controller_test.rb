require 'test_helper'

class WebprofilesControllerTest < ActionController::TestCase
  setup do
    @webprofile = webprofiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:webprofiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create webprofile" do
    assert_difference('Webprofile.count') do
      post :create, webprofile: { content: @webprofile.content, title: @webprofile.title }
    end

    assert_redirected_to webprofile_path(assigns(:webprofile))
  end

  test "should show webprofile" do
    get :show, id: @webprofile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @webprofile
    assert_response :success
  end

  test "should update webprofile" do
    put :update, id: @webprofile, webprofile: { content: @webprofile.content, title: @webprofile.title }
    assert_redirected_to webprofile_path(assigns(:webprofile))
  end

  test "should destroy webprofile" do
    assert_difference('Webprofile.count', -1) do
      delete :destroy, id: @webprofile
    end

    assert_redirected_to webprofiles_path
  end
end
