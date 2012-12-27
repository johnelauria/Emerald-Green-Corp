require 'test_helper'

class ApplicantresumesControllerTest < ActionController::TestCase
  setup do
    @applicantresume = applicantresumes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:applicantresumes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create applicantresume" do
    assert_difference('Applicantresume.count') do
      post :create, applicantresume: { cover_letter: @applicantresume.cover_letter, email: @applicantresume.email, mobile_number: @applicantresume.mobile_number, name: @applicantresume.name, nationality: @applicantresume.nationality, upload_resume: @applicantresume.upload_resume }
    end

    assert_redirected_to applicantresume_path(assigns(:applicantresume))
  end

  test "should show applicantresume" do
    get :show, id: @applicantresume
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @applicantresume
    assert_response :success
  end

  test "should update applicantresume" do
    put :update, id: @applicantresume, applicantresume: { cover_letter: @applicantresume.cover_letter, email: @applicantresume.email, mobile_number: @applicantresume.mobile_number, name: @applicantresume.name, nationality: @applicantresume.nationality, upload_resume: @applicantresume.upload_resume }
    assert_redirected_to applicantresume_path(assigns(:applicantresume))
  end

  test "should destroy applicantresume" do
    assert_difference('Applicantresume.count', -1) do
      delete :destroy, id: @applicantresume
    end

    assert_redirected_to applicantresumes_path
  end
end
