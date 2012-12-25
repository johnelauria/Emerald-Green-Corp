require 'test_helper'

class ClientprofilesControllerTest < ActionController::TestCase
  setup do
    @clientprofile = clientprofiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clientprofiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create clientprofile" do
    assert_difference('Clientprofile.count') do
      post :create, clientprofile: { content: @clientprofile.content, title: @clientprofile.title, user_id: @clientprofile.user_id }
    end

    assert_redirected_to clientprofile_path(assigns(:clientprofile))
  end

  test "should show clientprofile" do
    get :show, id: @clientprofile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @clientprofile
    assert_response :success
  end

  test "should update clientprofile" do
    put :update, id: @clientprofile, clientprofile: { content: @clientprofile.content, title: @clientprofile.title, user_id: @clientprofile.user_id }
    assert_redirected_to clientprofile_path(assigns(:clientprofile))
  end

  test "should destroy clientprofile" do
    assert_difference('Clientprofile.count', -1) do
      delete :destroy, id: @clientprofile
    end

    assert_redirected_to clientprofiles_path
  end
end
