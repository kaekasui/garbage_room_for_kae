require 'test_helper'

class Admin::MailFormsControllerTest < ActionController::TestCase
  setup do
    @admin_mail_form = admin_mail_forms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_mail_forms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_mail_form" do
    assert_difference('Admin::MailForm.count') do
      post :create, admin_mail_form: {  }
    end

    assert_redirected_to admin_mail_form_path(assigns(:admin_mail_form))
  end

  test "should show admin_mail_form" do
    get :show, id: @admin_mail_form
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_mail_form
    assert_response :success
  end

  test "should update admin_mail_form" do
    put :update, id: @admin_mail_form, admin_mail_form: {  }
    assert_redirected_to admin_mail_form_path(assigns(:admin_mail_form))
  end

  test "should destroy admin_mail_form" do
    assert_difference('Admin::MailForm.count', -1) do
      delete :destroy, id: @admin_mail_form
    end

    assert_redirected_to admin_mail_forms_path
  end
end
