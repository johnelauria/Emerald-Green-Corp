require 'test_helper'

class StaticpagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get aboutus" do
    get :aboutus
    assert_response :success
  end

  test "should get officers" do
    get :officers
    assert_response :success
  end

  test "should get contactus" do
    get :contactus
    assert_response :success
  end

end
