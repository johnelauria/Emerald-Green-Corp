require 'test_helper'

class EmailusControllerTest < ActionController::TestCase
  setup do
    @emailu = emailus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:emailus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create emailu" do
    assert_difference('Emailu.count') do
      post :create, emailu: { email: @emailu.email, message: @emailu.message }
    end

    assert_redirected_to emailu_path(assigns(:emailu))
  end

  test "should show emailu" do
    get :show, id: @emailu
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @emailu
    assert_response :success
  end

  test "should update emailu" do
    put :update, id: @emailu, emailu: { email: @emailu.email, message: @emailu.message }
    assert_redirected_to emailu_path(assigns(:emailu))
  end

  test "should destroy emailu" do
    assert_difference('Emailu.count', -1) do
      delete :destroy, id: @emailu
    end

    assert_redirected_to emailus_path
  end
end
